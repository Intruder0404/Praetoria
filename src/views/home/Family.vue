<template>
  <div class="bg w-100" :fluid="true">
    <InfoCard>
      <template #title>
        <div class="text-h1">
          Familles
        </div>
      </template>
      <template #body>
        <v-card-text class="d-flex flex-wrap justify-space-around">
          <v-card
            class="v-col-2" v-for="(family,idx) in options.families"
            :key="idx"
            color="primary"
            style="height:300px"
            hover
          >
            <v-card-title
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
  </div>
</template>
<style scoped>
.bg {
  background-image: url("/carousel/carousel3.jpg");
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
