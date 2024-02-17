<template>
  <v-container>
    <v-card>
      <v-data-table
        :headers="headers"
        class="elevation-1"
        :items="newOptions[name]"
        :loading="optionLoading"
      >
        <template v-slot:top>
          <v-toolbar flat color="primary">
            <v-toolbar-title>Administration</v-toolbar-title>
            <CreateDialog @closeCreate="closeDialog('create')" :isActive="dialog"/>
            <AddAttributeDialog @closeCreate="closeDialog('add-attribute')" :isActive="dialogAddAttribute"/>
            <RemoveAttributeDialog @closeCreate="closeDialog('remove-attribute')" :isActive="dialogRemoveAttribute"/>
            <DeleteDialog @closeCreate="closeDialog('delete')" :isActive="dialogDelete"/>
            <UpdateDialog @closeCreate="closeDialog('edit')" :editedItem="editedItem" :isActive="dialogUpdate"/>
          </v-toolbar>
        </template>
        <template
          #[`item`]="{ item }"
        >
          <tr
          >
            <template v-for="(property,key) in item">
              <td :key="'raw'+key"
                  v-if="Number.isInteger(property)&&String(key) !== 'id'&&String(key) !== 'type'&&String(key) !== 'rank'&&String(key) !== 'user_id'">
                <v-checkbox
                  :value="item[key]"
                  disabled
                ></v-checkbox>

              </td>
              <td :key="'user'+key" v-else-if="String(key) === 'user_id'">
                {{
                  newOptions.users.find(u => u.id == property).first_name + ' ' + newOptions.users.find(u => u.id === property).last_name
                }}
              </td>
              <td :key="'active'+key" v-else-if="String(key) === 'isActive'">
                <v-checkbox
                  v-model="item[key]"
                  disabled
                ></v-checkbox>
              </td>
              <td :key="'characters'+key" v-else-if="String(key) === 'characters'">
                <v-autocomplete
                  :items="property"
                  item-title="name"
                  multiple
                ></v-autocomplete>
              </td>
              <td :key="'user-rank'+key" v-else-if="String(key) === 'user_rank'">
                {{ Object(property).name }}
              </td>
              <td :key="'user-type'+key" v-else-if="String(key) === 'user_type'">
                {{ Object(property).name }}
              </td>
              <td :key="'attribute-value'+Object(attribute_value).id" v-else-if="String(key) === 'attribute_values'"
                  v-for="attribute_value in property">
                <template v-if="Object(attribute_value).attribute.name === 'Family'">
                  {{
                    newOptions.families.find(f => f.id = Object(attribute_value).value.value) ? newOptions.families.find(f => f.id = Object(attribute_value).value.value).name : ''
                  }}
                </template>
                <template v-else-if="Object(attribute_value).attribute.name === 'Religion'">
                  {{
                    newOptions.religions.find(f => f.id = Object(attribute_value).value.value) ? newOptions.religions.find(f => f.id = Object(attribute_value).value.value).name : ''
                  }}
                </template>
<!--                <template v-if="Object(attribute_value).attribute.name === 'Population'">
                  {{newOptions.users.filter(u=>u.attribute_values.find(uav=>uav.attribute.name === 'Family'&&uav.value.value == item.id)).length}}
                </template>-->
                <template v-else>
                  {{ Object(attribute_value).value.value }}
                </template>
              </td>
              <td :key="key" v-else>
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
    </v-card>
  </v-container>
</template>
<style scoped>
:deep(.v-data-table-footer) {
  background-color: #682bd7;
}
</style>
<script lang="ts">
import {mapState} from "pinia";
import CreateDialog from "@/components/dialog/admin/CreateDialog.vue";
import AddAttributeDialog from "@/components/dialog/admin/AddAttributeDialog.vue";
import RemoveAttributeDialog from "@/components/dialog/admin/RemoveAttributeDialog.vue";
import DeleteDialog from "@/components/dialog/admin/DeleteDialog.vue";
import UpdateDialog from "@/components/dialog/admin/UpdateDialog.vue";
import {optionsStore} from "@/store/options";
import {defineComponent} from "vue";

export default defineComponent({
  name: "admin",
  components: {
    CreateDialog,
    AddAttributeDialog,
    RemoveAttributeDialog,
    DeleteDialog,
    UpdateDialog
  },
  data: () => {
    return {
      dialogDelete: false,
      dialogUpdate: false,
      dialogAddAttribute: false,
      dialogRemoveAttribute: false,
      editedIndex: null,
      editedItem: {},
      dialog: false,
      name: null
    }
  },
  mounted() {
    this.name = this.$route.params.name;
  },
  methods: {
    closeDialog(dialog) {
      switch (dialog) {
        case 'create':
          this.dialog = false;
          break;
        case 'delete':
          this.dialogDelete = false;
          break;
        case 'edit':
          this.dialogUpdate = false;
          break;
        case 'add-attribute':
          this.dialogAddAttribute = false;
          break;
        case 'remove-attribute':
          this.dialogRemoveAttribute = false;
          break;
      }
    },
    editItem(item) {
      this.editedIndex = this.newOptions[this.name].indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialogUpdate = true;
    },

    deleteItem(item) {
      this.editedIndex = this.newOptions[this.name].indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialogDelete = true;
    }
  },
  computed: {
    ...mapState(optionsStore, ["options", 'optionLoading']),
    newOptions() {
      return JSON.parse(JSON.stringify(this.options));
    },
    headers() {
      const headers = [];
      if (this.options[this.$route.params.name] !== undefined && this.options[this.$route.params.name].length > 0) {
        let data = this.options[this.$route.params.name][0];
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
      }
      return headers;
    }
  }
});
</script>
