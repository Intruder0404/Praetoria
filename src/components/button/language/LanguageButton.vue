<template>
  <v-btn v-if="type==='button'" @click="changeLanguage()">
    {{ $i18n.availableLocales.find(l => l !== $i18n.locale) }}
  </v-btn>
  <v-list-item v-else-if="type==='list-Item'" @click="changeLanguage()">
    {{ $i18n.availableLocales.find(l => l !== $i18n.locale) }}
  </v-list-item>
</template>

<script lang="ts">
export default {
  name: "LanguageButton",
  props:{
    type:{type:String,default:'button'}
  },
  methods:{
    changeLanguage(){
      this.$i18n.locale =  this.$i18n.availableLocales.find((l: any)=>l!==this.$i18n.locale)??this.$i18n.locale;
    }
  }
}
</script>

<style scoped>

</style>
