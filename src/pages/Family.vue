<template>
  <div style="width: 100%" class="d-flex flex-wrap justify-space-around">
    <template  v-for="(family,idx) in getOptions.families"
               :key="idx">
      <v-hover v-slot:default="{ isHovering, props }">
        <v-card

          :elevation="isHovering ? 12 : 2"
          :class="{ 'on-hover': isHovering }"
          v-bind="props"
          color="primary"
          style="width: 300px;margin:50px"
         >
          <v-card-title
            v-bind="props"
            :elevation="isHovering ? 12 : 2"
          >
            {{ family.name }}
          </v-card-title>
          <v-img
            :src="'logo/'+family.attribute_values.find(av=>av.attribute.name === 'Logo').value.value"
            cover
            class="bg-grey-lighten-2"
          >
            <template v-if="isHovering">
              {{family.attribute_values.find(av=>av.attribute.name === 'Description').value.value}}
            </template>
          </v-img>
        </v-card>

      </v-hover>
    </template>
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
<style scoped>

</style>
