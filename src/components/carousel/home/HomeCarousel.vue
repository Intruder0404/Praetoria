<template>
  <v-carousel
    cycle
    hide-delimiter-background
    show-arrows="hover"
    style="width: 40%;margin:50px"
  >
    <v-carousel-item
      v-for="(slide, i) in slides"
      :key="i"
    >
      <v-sheet
        width="100%"
        height="100%"
      >
        <div class="d-flex fill-height justify-center align-center">
          <v-img :src="'/carousel/'+slide">
          </v-img>
        </div>
      </v-sheet>
    </v-carousel-item>
  </v-carousel>
</template>
<script lang="ts">
export default {
  data() {
    return {
      colors: [
        'indigo',
        'warning',
        'pink darken-2',
        'red lighten-1',
        'deep-purple accent-4',
      ],
      slides: [
        'carousel1.jpg',
        'carousel2.jpg',
        'carousel3.jpg',
        'carousel4.jpg',
        'carousel5.jpg',
      ],
    }
  },
}
</script>
