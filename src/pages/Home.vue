<template>
  <div class="v-col-12 pa-0">
    <HomeCarousel/>
  </div>
  <v-spacer></v-spacer>
  <div>
    <div class="v-col-12 pa-0">
      <Guild style="height: 50vh"/>
    </div>
    <v-spacer></v-spacer>
    <div class="v-col-12 pa-0">
      <Family style="height: 50vh"/>
    </div>
    <v-spacer></v-spacer>
    <div class="v-col-12 pa-0">
      <Politics style="height: 50vh"/>
    </div>
    <v-spacer></v-spacer>
    <div class="v-col-12 pa-0">
      <Religion style="height: 50vh"/>
    </div>
    <v-spacer></v-spacer>
    <div class="v-col-12 pa-0">
      <Merchants style="height: 50vh"/>
    </div>
    <v-spacer></v-spacer>
    <div class="v-col-12 pa-0">
      <Bicolline style="height: 50vh"/>
    </div>
  </div>
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
