<template>
  <v-container class="bg pa-0 ma-0" :fluid="true">
    <info-card :direction="'right'">
      <template #title>
        <div class="text-xs-h4 text-md-h2 text-lg-h1">
          Legion Praetoria
        </div>
      </template>
      <template #body>
        <div class="text-xs-h7 text-md-h4 text-lg-h5">
          {{ options.guilds[0].attribute_values.find(av => av.attribute.name === 'Description').value.value }}
        </div>
      </template>
      <template #actions>
        <v-btn :block="$vuetify.display.xs" size="large" style="background: rgba(76, 175, 80, 0.3)" :to="'/registration'">Ouvrez un compte</v-btn>
        <v-btn :block="$vuetify.display.xs" size="large" style="background: rgba(236,73,73,0.3)" :to="'/Guild'">En savoir plus</v-btn>
      </template>
    </info-card>
  </v-container>
</template>
<style scoped>
.bg{
  background-image:url("/carousel/carousel2.jpg");
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
  },
  methods:{
  }
}
</script>
<style scoped>
</style>
