<template>
  <div style="width: 40%">
    <v-hover>
      <template v-slot:default="{ isHovering, props }">
        <v-card
          :elevation="isHovering ? 12 : 2"
          :class="{ 'on-hover': isHovering }"
          v-bind="props"
          style="margin: 50px" color="secondary">
          <v-card-title>
            {{ getOptions.guilds[0].name }}
          </v-card-title>
          <v-card-text>
            {{ getOptions.guilds[0].attribute_values.find(av => av.attribute.name === 'Description').value.value }}
          </v-card-text>
        </v-card>
      </template>
    </v-hover>
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
.v-card {
  transition: opacity .4s ease-in-out;
}

.v-card:not(.on-hover) {
  opacity: 0.6;
}

.show-btns {
  color: rgba(255, 255, 255, 1) !important;
}
</style>
