<template>
  <v-container class="bg pa-0 ma-0" :fluid="true">
    <InfoCard>
      <template #title>
        <div class="text-xs-h7 text-md-h4 text-lg-h5">
          Familles
        </div>
      </template>
      <template #body>
        <v-card-text class="d-flex flex-wrap justify-space-around">
          <v-card
            class="mt-4 v-col-sx-12 v-col-lg-2"
            v-for="(family,idx) in options.families"
            :key="idx"
            color="primary"
            hover
          >
            <v-card-title
              class="text-xs-h8 text-md-h3 text-lg-h4"
            >
              {{ family.name }}
            </v-card-title>
            <v-card-text>
              <v-img :src="'logo/'+family.attribute_values.find(av=>av.attribute.name === 'Logo').value.value">

              </v-img>
            </v-card-text>
            <template>
              <div>
                {{ family.attribute_values.find(av => av.attribute.name === 'Description').value.value }}
              </div>
            </template>
          </v-card>
        </v-card-text>
      </template>
    </InfoCard>
  </v-container>
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
