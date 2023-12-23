<template>
  <div class="bg d-flex flex-row justify-center align-center" style="height:100vh;">
    <InfoCard>
      <template #title>
        <div class="text-h1 text-wrap">
          Devenez un fucking badass
        </div>
      </template>
      <template #body>
        <div class="text-h5">
          trouvez-vous que le monde sont des petite pisseuses?<br/>
          trouvez-vous dans une situation ou tout les gens autour de vous on l'air des mauviette?
        </div>
        <div class="text-h4">
          Ben devenez une recrue pour la Legion Praetoria.
        </div>
      </template>
      <template #actions>
        <v-btn size="large" style="background: rgba(76, 175, 80, 0.3)">Devenir une recrue aujourd'hui</v-btn>
        <v-btn size="large" style="background: rgba(236,73,73,0.3)">En savoir plus</v-btn>
      </template>
    </InfoCard>
  </div>

<!--  <v-carousel
    style="height:100vh;"
    :show-arrows="false"
    hide-delimiters
  >
    <v-carousel-item
      v-for="(slide, i) in slides"
      :key="i"
    >
      <v-sheet
      >
        <div class="d-flex fill-height justify-center align-center">
          <v-img :src="slide.substring(11)">
          </v-img>
        </div>
      </v-sheet>
    </v-carousel-item>
    <v-overlay
      :model-value="true"
      location-strategy="static"
      :contained="true"
      :persistent="true"
      class="d-flex justify-center align-center"
    >
      <InfoCard>
        <template #title>
          <div class="text-h1">
            Devenez un fucking badass
          </div>
        </template>
        <template #body>
          <div class="text-h5">
            trouvez-vous que le monde sont des petite pisseuses?<br/>
            trouvez-vous dans une situation ou tout les gens autour de vous on l'air des mauviette?
          </div>
          <div class="text-h4">
            Ben devenez une recrue pour la Legion Praetoria.
          </div>
        </template>
        <template #actions>
          <v-btn size="large" style="background: rgba(76, 175, 80, 0.3)">Devenir une recrue aujourd'hui</v-btn>
          <v-btn size="large" style="background: rgba(236,73,73,0.3)">En savoir plus</v-btn>
        </template>
      </InfoCard>
    </v-overlay>
  </v-carousel>-->
</template>
<style scoped>
:deep(.v-overlay__scrim){
  opacity: 0;

}
:deep(.v-overlay__content){
  width: 90%;
}
.bg{
  background-image:url("/carousel/carousel2.jpg");
  background-size: cover;
}
</style>
<script lang="ts">
import InfoCard from "@/components/card/home/InfoCard.vue";
export default {
  components: {InfoCard},
  mounted(){
  },
  computed:{
    slides:()=>{return Object.keys(import.meta.glob('@/assets/carousel/*'))}
  },
  data() {
    return {
      overlay:true,
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
