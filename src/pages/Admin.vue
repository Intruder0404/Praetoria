<template>
  <v-app>
    <v-main>
      <v-container fluid fill-height>
        <v-data-table
          :headers="headers"
          class="elevation-1"
          :items="getOptions[$route.params.name]"
          :loading="isOptionsLoading"
        >
          <template v-slot:top>
            <v-toolbar flat>
              <v-toolbar-title>Administration</v-toolbar-title>
              <v-divider class="mx-4" inset vertical></v-divider>
              <v-spacer></v-spacer>
             <CreateDialog @closeCreate="closeDialog('create')" :isActive="dialog"/>
             <DeleteDialog @closeCreate="closeDialog('delete')" :isActive="dialogDelete"/>
             <UpdateDialog @closeCreate="closeDialog('edit')" :editedItem="editedItem" :isActive="dialogUpdate"/>
            </v-toolbar>
          </template>
          <template
            v-slot:item="{ item }"
          >
            <tr
              :key="item.username"
            >
              <template v-for="(property,key) in item.raw">
                <td v-if="Number.isInteger(property)&&key !== 'id'&&key !== 'type'&&key !== 'rank'&&key !== 'user_id'">
                  <v-checkbox
                    :value="item.raw[key]"
                    disabled
                  ></v-checkbox>

                </td>
                <td v-else-if="key === 'user_id'">
                  {{
                    getOptions.users.find(u => u.id === property).first_name + ' ' + getOptions.users.find(u => u.id === property).last_name
                  }}
                </td>
                <td v-else-if="key === 'isActive'">
                  <v-checkbox
                    v-model="item.raw[key]"
                    disabled
                  ></v-checkbox>
                </td>
                <td v-else-if="key === 'characters'">
                  <v-autocomplete
                    :items="property"
                    item-title="name"
                    multiple
                  ></v-autocomplete>
                </td>
                <td v-else-if="key === 'user_rank'">
                  {{ property.name }}
                </td>
                <td v-else-if="key === 'user_type'">
                  {{ property.name }}
                </td>
                <td v-else-if="key === 'attribute_values'" v-for="attribute_value in property">
                  <template v-if="attribute_value.attribute.name === 'Family'">
                    {{
                      this.getOptions.families.find(f => f.id = attribute_value.value.value) ? this.getOptions.families.find(f => f.id = attribute_value.value.value).name : ''
                    }}
                  </template>
                  <template v-else-if="attribute_value.attribute.name === 'Religion'">
                    {{
                      this.getOptions.religions.find(f => f.id = attribute_value.value.value) ? this.getOptions.religions.find(f => f.id = attribute_value.value.value).name : ''
                    }}
                  </template>
                  <template v-else>
                    {{ attribute_value.value.value }}
                  </template>
                </td>
                <td v-else>
                  {{ property }}
                </td>
              </template>
              <td key="actions">
                <v-icon
                  size="small"
                  class="me-2"
                  @click="editItem(item)"
                >
                  mdi-pencil
                </v-icon>
                <v-icon
                  size="small"
                  @click="deleteItem(item)"
                >
                  mdi-delete
                </v-icon>
              </td>
            </tr>
          </template>
        </v-data-table>
      </v-container>
    </v-main>
  </v-app>
</template>

<script lang="ts">
import {VDataTable} from 'vuetify/labs/VDataTable';
import {mapState} from "pinia";
import CreateDialog from "@/components/dialog/admin/CreateDialog";
import DeleteDialog from "@/components/dialog/admin/DeleteDialog";
import UpdateDialog from "@/components/dialog/admin/UpdateDialog";
import {optionsStore} from "@/store/options";

export default {
  name: "admin",
  components: {
    VDataTable,
    CreateDialog,
    DeleteDialog,
    UpdateDialog
  },
  data: () => {
    return {
      dialogDelete: false,
      dialogUpdate: false,
      editedIndex: null,
      editedItem: {},
      dialog: false
    }
  },
  mounted() {
  },
  methods: {
    closeDialog(dialog){
      switch (dialog){
        case 'create':
          this.dialog = false;
          break;
        case 'delete':
          this.dialogDelete = false;
          break;
        case 'edit':
          this.dialogUpdate = false;
          break;
      }
    },
    editItem(item) {
      console.log(item);
      this.editedIndex = this.getOptions[this.$route.params.name].indexOf(item);
      this.editedItem = Object.assign({}, item.raw);
      this.dialogUpdate = true;
    },

    deleteItem(item) {
      this.editedIndex = this.getOptions[this.$route.params.name].indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialogDelete = true;
    },
  },
  computed: {
    ...mapState(optionsStore, ["getOptions", 'isOptionsLoading']),
    headers() {
      const headers = [];
      if (this.getOptions[this.$route.params.name] !== undefined && this.getOptions[this.$route.params.name].length > 0) {
        let data = this.getOptions[this.$route.params.name][0];
        for (const property in data) {
          if (property === 'attribute_values') {
            data[property].forEach((gav) => {
                headers.push(
                  {
                    title: gav.attribute.name,
                    align: 'left',
                    sortable: true,
                    type: 'text',
                    key: gav.attribute.name,
                  }
                )
              }
            );
          } else if (property === 'user_type') {
            headers.push(
              {
                title: property,
                align: 'left',
                sortable: true,
                type: 'text',
              }
            )
          } else {
            headers.push(
              {
                title: property,
                align: 'start',
                sortable: false,
                key: property,
              }
            );
          }
        }
        headers.push(
          {
            title: 'Actions',
            align: '',
            sortable: false,
            value: 'actions',
          }
        );

        return headers;
      }
    }
  }
};
</script>
