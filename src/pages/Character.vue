<template>
  <v-row v-if="!selectedCharacter">
    <v-col
      v-for="n in getUser.characters"
      class="d-flex child-flex"
      cols="4"
    >
      <v-card>
        {{n.name}}
        {{getOptions.ranks.find(r=>r.id = n.id).name}}
        <v-card-actions>
          <v-btn size="small" color="surface-variant" variant="text" icon="mdi-heart"></v-btn>

          <v-btn size="small" color="surface-variant" variant="text" icon="mdi-cog-outline" @click="changeCharacter(n)"></v-btn>
        </v-card-actions>
      </v-card>
    </v-col>
  </v-row>
  <v-card v-else>
    {{selectedCharacter.name}}
    <v-card-actions>
      <v-btn size="small" color="surface-variant" variant="text" icon="mdi-check" @click="updateSelectedCharacter"></v-btn>

      <v-btn size="small" color="surface-variant" variant="text" icon="mdi-cancel" @click="cancelCharacterChange"></v-btn>
    </v-card-actions>
  </v-card>
</template>
<script>
import vtoast from "@/components/stack/vtoast";
import {toRaw} from "vue";
import {mapActions,mapState} from "pinia";
import {authStore} from "@/store/auth";
import {optionsStore} from "@/store/options";
import {charactersStore} from "@/store/characters";

export default {
  name: "App",
  components: {
    vtoast,
  },
  data() {
    return {
      selectedCharacter:null,
    };
  },
  mounted() {
    /*this.getCharactersByUser(this.getUser).then((r)=>{
      console.log(r);
       this.characters = r;
    });
    console.log(this.characters)*/
    this.$root.vtoast = this.$refs.vtoast
  },
  computed: {
    ...mapState(authStore,['getUser']),
    ...mapState(optionsStore,['getOptions']),
  },
  methods: {
    updateSelectedCharacter(){
      console.log();
      let index = this.characters.findIndex(c=>c.id === this.selectedCharacter.id);
      if(index != -1)
        this.characters[index] = structuredClone(toRaw(this.selectedCharacter));
      this.selectedCharacter = null;
      /*this.updateCharacter(character).then((r)=>{
        if(r){
          let index = this.characters.findIndex(c=>c.id = character.id);
          if(index != -1)
            this.characters[index] = character;
          this.selectedCharacter = null;d
        }
      });*/
    },
    changeCharacter(newChar){
      this.selectedCharacter = newChar
    },
    changeRank(rank){
      this.selectedCharacter.rank = rank
    },
    cancelCharacterChange(){
      /*let index = this.characters.findIndex(c=>c.id === this.selectedCharacter.id);
      if(index != -1)
        this.characters[index] = structuredClone(toRaw(this.selectedCharacter));*/
      this.selectedCharacter = null;
    },
    ...mapActions(charactersStore,['getCharactersByUser','updateCharacter'])
  }
};
</script>
