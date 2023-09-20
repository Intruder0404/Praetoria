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
          <v-img :src="slide.substring(11)">
          </v-img>
        </div>
      </v-sheet>
    </v-carousel-item>
  </v-carousel>
</template>
<script lang="ts">
export default {
  mounted(){
    const test = Object.keys(import.meta.glob('@/assets/carousel/*'));
    //test.forEach((e)=>{console.log(e)});
    console.log(test[1].substring(11));
  },
  computed:{
    slides:()=>{return Object.keys(import.meta.glob('@/assets/carousel/*'))}
  },
  data() {
    return {
      colors: [
        'indigo',
        'warning',
        'pink darken-2',
        'red lighten-1',
        'deep-purple accent-4',
      ],
    }
  },
}
</script>
