<template>
  <div class="bg w-100" :fluid="true">
    <info-card :direction="'right'">
      <template #title>
        <div class="text-h1">
          Politique
        </div>
      </template>
      <template #body>
        <div class="text-h5">
          REEEEEEEEEEEEEEEEEE RESPUBLICA!
        </div>
      </template>
      <template #actions>
        <v-btn size="large" style="background: rgba(76, 175, 80, 0.3)" :to="'/registration'">Ouvrez un compte</v-btn>
        <v-btn size="large" style="background: rgba(236,73,73,0.3)" :to="'/Politics'">En savoir plus</v-btn>
      </template>
    </info-card>
  </div>
</template>
<style scoped>
.bg {
  background-image: url("/carousel/carousel4.jpg");
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
