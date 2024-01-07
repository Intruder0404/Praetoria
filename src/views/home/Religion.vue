<template>
  <div class="bg w-100" :fluid="true">
    <info-card :direction="'left'">
      <template #title>
        <div class="text-h1">
          Religion
        </div>
      </template>
      <template #body>
        <div class="text-h5">
          REEEEEEEEEE freedom of cult worship
        </div>
      </template>
      <template #actions>
        <v-btn :block="$vuetify.display.xs" size="large" style="background: rgba(236,73,73,0.3)" :to="'/Religions'">En savoir plus</v-btn>
      </template>
    </info-card>
  </div>
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
