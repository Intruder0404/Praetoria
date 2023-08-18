<template>
  <v-btn @click="toggleTheme">{{theme.global.current.value.dark ? 'light' : 'dark'}}</v-btn>
</template>

<script>
import {useTheme} from "vuetify";
export default {
  name: "ThemeButton",
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
