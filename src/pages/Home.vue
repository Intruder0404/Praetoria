<template>
  <div style="width: 100%">
    <div class="d-flex flex-row">
      <HomeCarousel/>
      <Guild/>
    </div>
    <v-spacer/>
    <Family/>
  </div>
</template>

<script lang="ts">
import HomeCarousel from "@/components/carousel/home/HomeCarousel.vue";
import Guild from "@/pages/Guild.vue";
import Family from "@/pages/Family.vue";

export default {
  components: {Family, Guild, HomeCarousel},
  data() {
    return {}
  },
}
</script>
