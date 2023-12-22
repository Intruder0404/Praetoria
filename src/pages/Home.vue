<template>
      <v-row fluid>
        <v-col cols="12">
          <HomeCarousel/>
        </v-col>
        <v-spacer></v-spacer>
        <div>
          <v-col cols="12">
            <Guild style="height: 50vh"/>
          </v-col>
          <v-spacer></v-spacer>
          <v-col cols="12">
            <Family style="height: 50vh"/>
          </v-col>
          <v-spacer></v-spacer>
          <v-col cols="12">
            <Politics style="height: 50vh"/>
          </v-col>
          <v-spacer></v-spacer>
          <v-col cols="12">
            <Religion style="height: 50vh"/>
          </v-col>
          <v-spacer></v-spacer>
          <v-col cols="12">
            <Merchants style="height: 50vh"/>
          </v-col>
          <v-spacer></v-spacer>
          <v-col cols="12">
            <Bicolline style="height: 50vh"/>
          </v-col>
        </div>
      </v-row>
</template>

<script lang="ts">
import HomeCarousel from "@/components/carousel/home/HomeCarousel.vue";
import Guild from "@/views/home/Guild.vue";
import Family from "@/views/home/Family.vue";
import Politics from "@/views/home/Politics.vue";
import Religion from "@/views/home/Religion.vue";
import Bicolline from "@/views/home/Bicolline.vue";
import Merchants from "@/views/home/Merchants.vue";

export default {
  components: {Merchants, Religion, Politics, Family, Guild, HomeCarousel, Bicolline},
  data() {
    return {
      overlay: true
    }
  },
}
</script>
