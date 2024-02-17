<template>
  <v-footer color="secondary" absolute inset app class="bg-grey-lighten-1" >
    <v-row justify="center" :no-gutters="true">
      <v-btn
        v-for="link in links"
        :key="link.name"
        variant="text"
        class="mx-2"
        rounded="xl"
        elevation="0"
        :to="{ name: link.route }"
      >
        {{ link.name }}
      </v-btn>
      <v-col class="text-center mt-4" cols="12">
        {{ new Date().getFullYear() }} — <strong>Praetoria</strong>
      </v-col>
    </v-row>
  </v-footer>
</template>
<script lang="ts">
export default {
  data: () => ({
    links: [
      {name:'Home',route:'home'},
      {name:'About Us',route:'home'},
      {name:'Team',route:'home'},
      {name:'Contact Us',route:'home'},
    ],
  }),
}
</script>
