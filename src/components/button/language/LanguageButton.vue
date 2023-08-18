<template>
  <v-btn @click="$i18n.locale = $i18n.availableLocales.find(l=>l!==$i18n.locale)">
    {{ $i18n.availableLocales.find(l => l !== $i18n.locale) }}
  </v-btn>
</template>

<script>
export default {
  name: "LanguageButton"
}
</script>

<style scoped>

</style>
