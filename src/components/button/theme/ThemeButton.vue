<template>
  <v-btn v-if="type==='button'" @click="toggleTheme">
    {{theme.global.current.value.dark ? 'light' : 'dark'}}
  </v-btn>
  <v-list-item v-else-if="type==='list-Item'" @click="toggleTheme">
    {{theme.global.current.value.dark ? 'light' : 'dark'}}
  </v-list-item>
</template>

<script lang="ts">
import {useTheme} from "vuetify";
export default {
  name: "ThemeButton",
  props:{
    type:{type:String,default:'button'}
  },
  setup () {
    const theme = useTheme()

    return {
      theme,
      toggleTheme: () => theme.global.name.value = theme.global.current.value.dark ? 'light' : 'dark'
    }
  }
}
</script>

<style scoped>

</style>
