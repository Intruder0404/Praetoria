<template>
  <v-dialog v-model="active">
    <template v-slot:activator="{ props }">
      <v-btn color="primary" dark class="mb-2" v-bind="props">
        New Item
      </v-btn>
    </template>
    <v-card>
      <v-card-title>
        <span class="text-h5">New Item</span>
      </v-card-title>

      <v-card-text>
        <v-container>
          <v-row>
            <v-col cols="12" sm="6" md="4" v-if="getOptions[$route.params.name][0]!=undefined"
                   v-for="(property,key) in getOptions[$route.params.name][0]">
              <template v-if="key === 'attribute_values'" v-for="attribute_value in property">
                <v-text-field v-if="attribute_value.type.type === 'text'"
                              v-model="attribute_value.attribute.value.value"
                              :label="attribute_value.attribute.attribute.name"
                ></v-text-field>
                <v-textarea v-else-if="attribute_value.type.type === 'textArea'"
                            v-model="attribute_value.attribute.value.value"
                            :label="attribute_value.attribute.name"
                ></v-textarea>
                <v-select
                  v-if="attribute_value.type.type ==='select'"
                  v-model="attribute_value.attribute.value.value"
                  :items="attribute_value.attribute.name==='Family'?getOptions.families:attribute_value.attribute.name==='Religion'?getOptions.religions:[]"
                  :label="attribute_value.attribute.name"
                  item-title="name"
                  item-value="id"
                ></v-select>
              </template>
              <v-text-field v-model="property"  v-else
                             :label="key"
              ></v-text-field>
            </v-col>
          </v-row>
        </v-container>
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

export default {
  name: "ShowDialog",
  data(){
    return{
      active:false
    }
  },
  props:['isActive'],
  methods:{
    close(){
      this.$emit('closeCreate');
    }
  },
  computed: {
    ...mapState('optionsStore', ["getOptions", 'isOptionsLoading'])
  },
  watch:{
    isActive:{
      handler (newVal, oldVal) {
        this.active = newVal;
      }
    }
  }
}
</script>
