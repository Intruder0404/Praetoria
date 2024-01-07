<template>
  <v-container class="bg pa-0 ma-0" :fluid="true">
    <info-card :direction="'right'">
      <template #title>
        <div class="text-h1">
          Politique
        </div>
      </template>
      <template #body>
        <div class="text-xs-h7 text-md-h4 text-lg-h5">
          REEEEEEEEEEEEEEEEEE RESPUBLICA!
        </div>
      </template>
      <template #actions>
        <v-btn :block="$vuetify.display.xs" size="large" style="background: rgba(236,73,73,0.3)" :to="'/Politics'">En savoir plus</v-btn>
      </template>
    </info-card>
  </v-container >
</template>
<style scoped>
.bg {
  background-image: url("https://placehold.co/600x400");
  background-size: cover;
}
</style>

<script lang="ts">

import {mapState} from "pinia";
import {optionsStore} from "@/store/options";
import InfoCard from "@/components/card/home/InfoCard.vue";

export default {
  components: {InfoCard},
  data() {
    return {}
  },
  computed: {
    ...mapState(optionsStore, ['options'])
  }
}
</script>
<style scoped>
</style>
