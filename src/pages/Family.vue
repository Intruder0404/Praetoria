<template>
  <div style="width: 100%" class="d-flex flex-wrap justify-space-around">
    <v-card color="primary" :key="idx" style="width: 300px;margin:50px" v-for="(family,idx) in getOptions.families">
      <v-card-title>
        {{family.name}}
      </v-card-title>
      <v-img
        :src="'logo/'+family.attribute_values.find(av=>av.attribute.name === 'Logo').value.value"
        cover
        class="bg-grey-lighten-2"
      >
      </v-img>
    </v-card>
  </div>
</template>

<script lang="ts">

import {mapState} from "pinia";
import {optionsStore} from "@/store/options";

export default {
  data() {
    return {}
  },
  computed: {
    ...mapState(optionsStore, ['getOptions'])
  }
}
</script>
