<template>
  <v-app>
    <v-main>
      <div class="d-flex flex-wrap justify-center">
        <div class="bg v-col-12">
          <v-container style="height:90vh;">
            <v-row class="fill-height" align="end">
              <info-card :direction="'right'">
                <template #title>
                  <div class="text-h1">
                    {{ options.guilds[0].name }}
                  </div>
                </template>
                <template #body>
                  <div class="text-h5">
                    {{ options.guilds[0].attribute_values.find(av => av.attribute.name === 'Description').value.value }}
                  </div>
                </template>
              </info-card>
            </v-row>
          </v-container>
        </div>
        <div class="v-col-12">
          <v-container>
            <v-row justify="center">
              <div class="text-h4 text-center">
                Venez affronter les tribues barbares du Duché de Bicolline comme recrue de la Legion Praetoria.
              </div>
              <div class="v-col-6 text-h8 text-left">
                Le duché de Bicolline est infecté par une mare de barbare qui mets en dangé notre guild et notre nation.
                Étant le marteau de notre nation
                nous sommes la clé de la performance de notre nation. Nous légionnaire sont armé et éguisé par leurs
                expérience au front.
                Venez faire de même!
              </div>
            </v-row>
          </v-container>
        </div>
        <div class="v-col-12">
          <v-container>
            <v-row justify="center">
              <div class="v-col-6">
                <div class="video-container center-block">
                  <div class="video">
                    <iframe height="315" :src="result" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                  </div>
                </div>
                <div class="video-container center-block">
                  <div class="video">
                    <iframe height="315" :src="result" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                  </div>
                </div>
              </div>
            </v-row>
          </v-container>
        </div>
        <v-divider class="v-col-6"></v-divider>
        <div class="full-width">
          <v-container>
            <v-row justify="center">
              <div class="text-h4 text-center">
                Venez affronter vous bourrer la gueule après un longue journée de combat
              </div>
              <div class="v-col-6 text-h8 text-left">
                Notre Villa est un endroit spécial ou tout les plaisirs digne d'un bon légionaire sont célébré.
                <v-list>
                  <v-list-item>
                    <v-list-item-title>
                      Alcool
                    </v-list-item-title>
                    <template v-slot:prepend>
                      <v-list-item-action start>
                        <v-checkbox-btn :model-value="true"></v-checkbox-btn>
                      </v-list-item-action>
                    </template>
                  </v-list-item>
                  <v-list-item>
                    <v-list-item-title>
                      Produit du tabac
                    </v-list-item-title>
                    <template v-slot:prepend>
                      <v-list-item-action start>
                        <v-checkbox-btn :model-value="true"></v-checkbox-btn>
                      </v-list-item-action>
                    </template>
                  </v-list-item>
                  <v-list-item>
                    <v-list-item-title>
                      Produit de la marijuana
                    </v-list-item-title>
                    <template v-slot:prepend>
                      <v-list-item-action start>
                        <v-checkbox-btn :model-value="true"></v-checkbox-btn>
                      </v-list-item-action>
                    </template>
                  </v-list-item>
                  <v-list-item>
                    <v-list-item-title>
                      Course de char
                    </v-list-item-title>
                    <template v-slot:prepend>
                      <v-list-item-action start>
                        <v-checkbox-btn :model-value="true"></v-checkbox-btn>
                      </v-list-item-action>
                    </template>
                  </v-list-item>
                  <v-list-item>
                    <v-list-item-title>
                      Caca de troll
                    </v-list-item-title>
                    <template v-slot:prepend>
                      <v-list-item-action start>
                        <v-checkbox-btn :model-value="true"></v-checkbox-btn>
                      </v-list-item-action>
                    </template>
                  </v-list-item>
                  <v-list-item>
                    <v-list-item-title>
                      Tree Man
                    </v-list-item-title>
                    <template v-slot:prepend>
                      <v-list-item-action start>
                        <v-checkbox-btn :model-value="true"></v-checkbox-btn>
                      </v-list-item-action>
                    </template>
                  </v-list-item>
                  <v-list-item>
                    <v-list-item-title>
                      Jawa
                    </v-list-item-title>
                    <template v-slot:prepend>
                      <v-list-item-action start>
                        <v-checkbox-btn :model-value="true"></v-checkbox-btn>
                      </v-list-item-action>
                    </template>
                  </v-list-item>
                  <v-list-item>
                    <v-list-item-title>
                      Combats de dague
                    </v-list-item-title>
                    <template v-slot:prepend>
                      <v-list-item-action start>
                        <v-checkbox-btn :model-value="true"></v-checkbox-btn>
                      </v-list-item-action>
                    </template>
                  </v-list-item>
                </v-list>
              </div>
            </v-row>
          </v-container>
        </div>
        <v-divider class="v-col-6"></v-divider>
        <div class="v-col-12">
          <v-container>
            <v-row justify="center">
              <div class="v-col-6">
                <div class="video-container center-block">
                  <div class="video">
                    <iframe height="315" :src="result" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                  </div>
                </div>
                <div class="video-container center-block">
                  <div class="video">
                    <iframe height="315" :src="result" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                  </div>
                </div>
              </div>
            </v-row>
            <div class="text-h3 text-center">
              VENUS, VITRIX, FORTUNA
            </div>
            <div class="text-h2 text-center">
              BIBE!
            </div>
          </v-container>
        </div>
        <v-divider class="v-col-6"></v-divider>
        <div class="v-col-12">
          <v-container>
            <v-row justify="center">
              <div class="v-col-12 text-h4 text-center">
                Participez a notre jeux politique interne
              </div>
              <div class="v-col-7 text-h8 text-left">
                Venez maintenir la structure politique la plus efficace de Bicolline. Notre république permet a
                n'importe quel personne motivé de participer.
                Voulez vous etre sénateur?
                voulez vous représenter le peuple comme intendant?
                voulez-vous devenir centurion et diriger sur le terrain?
              </div>
              <div class="v-col-7 text-h2 text-center">
                La Legion Praetoria est donc votre meilleur choix!
              </div>
            </v-row>
          </v-container>
        </div>
      </div>
    </v-main>
  </v-app>
</template>
<style scoped>
.bg {
  background-image: url("/carousel/carousel2.jpg");
  background-size: cover;
}

.video iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: 1px solid hsla(0, 0%, 100%, .1);
  display: block;
  z-index: 1;
}

.video {
  position: relative;
  padding-bottom: 56.25%;
  border: 0;
  height: 0;
  z-index: 1;
}

.video-container {
  width: 100%;
  margin-bottom: 1.75rem;
}
</style>

<script lang="ts">
import InfoCard from "@/components/card/home/InfoCard.vue";
import {mapState} from "pinia";
import {optionsStore} from "@/store/options";

export default {
  name: "Guild",
  components: {InfoCard},
  computed: {
    ...mapState(optionsStore, ['options'])
  },
  data() {
    return {
      youtubeURL: "https://www.youtube.com/watch?v=zqDwWXpzHRE",
      result: ""
    };
  },
  mounted() {
    this.loadURL()
  },
  methods: {
    loadURL() {
      const youtubeEmbedTemplate = "https://www.youtube.com/embed/";
      const url = this.youtubeURL.split(
        /(vi\/|v%3D|v=|\/v\/|youtu\.be\/|\/embed\/)/
      );
      console.log("url", url);
      const YId =
        undefined !== url[2] ? url[2].split(/[^0-9a-z_/\\-]/i)[0] : url[0];
      console.log("YId", YId);
      if (YId === url[0]) {
        console.log("not a youtube link");
      } else {
        console.log("it's  a youtube video");
      }
      const topOfQueue = youtubeEmbedTemplate.concat(YId);
      console.log("topOfQueue", topOfQueue);
      this.result = topOfQueue;
      this.youtubeURL = "";
    }
  }
}
</script>

<style scoped>

</style>
