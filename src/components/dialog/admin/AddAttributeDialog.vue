<template>
  <v-btn color="white" dark class="mb-2">
    Add Attribute
  <v-dialog v-model="active" activator="parent">
    <v-card>
      <v-card-title>
        <span class="text-h5">Add Attribute</span>
      </v-card-title>

      <v-card-text>
        <v-container>
          <v-row>
            <v-col :key="key" cols="12" sm="6" md="4" v-if="options.attributes"
                   v-for="(property,key) in options.attributes">
              <v-checkbox :model-value="options[name][0].attribute_values&&options[name][0].attribute_values.find(av=>av.attribute.name === property.name)?true:false"
                             :label="String(property.name)"
              ></v-checkbox>
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
  </v-btn>
</template>
<script lang="ts">
import {mapState} from "pinia";
import {optionsStore} from "@/store/options";
import {defineComponent} from "vue";

export default defineComponent({
  name: "AddAttributeDialog",
  data(){
    return{
      active: false,
      name:null
    }
  },
  props:['isActive'],
  methods:{
    close(){
      this.active=false
      this.$emit('closeCreate');
    }
  },
  computed: {
    ...mapState(optionsStore, ["options", 'optionLoading'])
  },
  watch:{
    isActive:{
      handler (newVal, oldVal) {
        alert('change');
        this.active = newVal;
      }
    }
  },
  mounted() {
    this.name = this.$route.params.name;
  }
})
</script>
