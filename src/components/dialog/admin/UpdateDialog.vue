<template>
  <v-dialog v-model="active">
    <v-card>
      <v-card-title>
        <span class="text-h5">
          Edit Item
        </span>
      </v-card-title>

      <v-card-text class="d-flex flex-wrap">
        <div :key="key" class="v-col-4" v-for="(property,key) in editedItem" v-show="!fieldIgnore.find(f=>f===String(key))">
          <template v-if="String(key) === 'attribute_values'" v-for="attribute_value in property">
            <v-text-field :key="'input-text-'+attribute_value.attribute.name"
                          v-if="attribute_value.type.type === 'text'"
                          v-model="attribute_value.attribute.value.value"
                          :label="attribute_value.attribute.name"
            ></v-text-field>
            <v-textarea
              :key="'input-textarea-'+attribute_value.attribute.name"
              v-else-if="attribute_value.type.type === 'textArea'"
              v-model="attribute_value.attribute.value.value"
              :label="attribute_value.attribute.name"
            ></v-textarea>
            <v-select
              :key="'input-select'+attribute_value.attribute.name"
              v-if="attribute_value.type.type ==='integer'"
              v-model.number="attribute_value.value.value"
              :items="attribute_value.attribute.name==='Family'?options.families:attribute_value.attribute.name==='Religion'?options.religions:[]"
              :label="attribute_value.attribute.name"
              item-title="name"
              item-value="id"
            ></v-select>
          </template>
          <v-select
            v-else-if="String(key)=='user_rank'"
            v-model="editedItem['rank']"
            :items="options.ranks"
            item-title="name"
            item-value="id"
          >
          </v-select>
          <v-select
            v-else-if="String(key)=='user_type'"
            v-model="editedItem['type']"
            :items="options.userTypes"
            item-title="name"
            item-value="id"
          >
          </v-select>
          <v-checkbox
            :label="'Active'"
            v-else-if="String(key) === 'isActive'"
            v-model="editedItem['isActive']"
            disabled
          ></v-checkbox>
          <v-menu class="full-width" v-else-if="String(key)=='characters'">
            <template v-slot:activator="{ props }">
              <v-btn
                style="width: 100%;height: 100%"
                color="primary"
                v-bind="props"
              >
                Characters
              </v-btn>
            </template>
            <v-list>
              <v-list-item
                v-for="(item, index) in editedItem[key]"
                :key="index"
                :value="index"
              >
                <v-list-item-title>{{ item.name }}</v-list-item-title>
              </v-list-item>
            </v-list>
          </v-menu>
          <v-text-field v-model="editedItem[key]" v-else
                        :label="String(key)"
          ></v-text-field>
        </div>
      </v-card-text>

      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn color="blue-darken-1" variant="text" @click="close">
          Cancel
        </v-btn>
        <v-btn color="blue-darken-1" variant="text" @click="close">
          Save
        </v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>
<script lang="ts">

import {mapState} from "pinia";
import {optionsStore} from "@/store/options";
import {Rank} from "@/models/User/Rank";

export default {
  name: "UpdateDialog",
  data() {
    return {
      active: false,
      name: null,
      fieldIgnore: [
        'type',
        'rank'
      ]
    }
  },
  props: ['isActive', 'editedItem'],
  methods: {
    close() {
      this.$emit('closeCreate');
    }
  },
  computed: {
    ...mapState(optionsStore, ['options'])
  },
  watch: {
    isActive: {
      handler(newVal, oldVal) {
        this.active = newVal;
      }
    }
  },
  mounted() {
    this.name = this.$route.params.name;
  }
}
</script>
