<template>
  <v-dialog v-model="active">
    <template v-slot:activator="{ props }">
      <v-btn color="white" dark class="mb-2" v-bind="props">
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
            <v-col :key="key" cols="12" sm="6" md="4" v-if="options[name][0]!=undefined"
                   v-for="(property,key) in options[name][0]">
              <template v-if="String(key) === 'attribute_values'" v-for="(attribute_value,av_key) in property">
                <v-text-field v-if="attribute_value.type.type === 'text'"
                              :label="attribute_value.attribute.attribute.name"
                ></v-text-field>
                <v-textarea v-else-if="attribute_value.type.type === 'textArea'"
                            :label="attribute_value.attribute.name"
                ></v-textarea>
                <v-select
                  v-if="attribute_value.type.type ==='select'"
                  :items="attribute_value.attribute.name==='Family'?options.families:attribute_value.attribute.name==='Religion'?options.religions:[]"
                  :label="attribute_value.attribute.name"
                  item-title="name"
                  item-value="id"
                ></v-select>
              </template>
              <v-text-field  v-else
                             :label="String(key)"
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
import {optionsStore} from "@/store/options";
import {defineComponent} from "vue";

export default defineComponent({
  name: "CreateDialog",
  data(){
    return{
      active: false,
      name:null
    }
  },
  props:['isActive'],
  methods:{
    close(){
      this.$emit('closeCreate');
    }
  },
  computed: {
    ...mapState(optionsStore, ["options", 'optionLoading'])
  },
  watch:{
    isActive:{
      handler (newVal, oldVal) {
        this.active = newVal;
      }
    }
  },
  mounted() {
    this.name = this.$route.params.name;
  }
})
</script>
