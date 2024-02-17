<template>
  <v-app-bar
    style="left:1%;top:10px;width: 98%;z-index: 9999"
    height="48"
    flat
    density="comfortable"
    rounded
    app
  >
    <v-menu open-on-hover :close-on-content-click="false">
      <template v-slot:activator="{ props }">
        <v-btn
          v-bind="props"
          style="background-color: #381879;margin:0"
          rounded="0"
        >
          Praetoria
        </v-btn>
      </template>
      <v-list>
        <v-list-item>
          Visitez Bicolline.org
        </v-list-item>
        <v-list-item >
          Visitez le coin des marchants
        </v-list-item>
      </v-list>
    </v-menu>
    <v-divider vertical></v-divider>
    <v-icon size="x-large">
      <v-img src="/logo/praetoria-1-transparent.png"></v-img>
    </v-icon>
    <v-divider vertical></v-divider>
    <v-menu :close-on-content-click="true">
      <template v-slot:activator="{ props }">
        <v-btn
          v-bind="props"
        >
          Informations de Guilde
          <v-icon>mdi-chevron-down</v-icon>
        </v-btn>
      </template>
      <v-list class="text-center">
        <v-list-item to="/Guild">
          La Legion
        </v-list-item>
        <v-list-item to="/Families">
          Les Familles
        </v-list-item>
        <v-list-item to="/Politics">
          La Politique
        </v-list-item>
        <v-list-item to="/Religions">
          Les Religion
        </v-list-item>
        <v-list-item to="/Merchants">
          Les Marchants
        </v-list-item>
        <v-list-item to="/Bicolline">
          Bicolline
        </v-list-item>
      </v-list>
    </v-menu>
    <v-spacer></v-spacer>
    <LanguageButton/>
    <ThemeButton/>
    <v-menu :open-on-hover="true" :close-on-content-click="false">
      <template v-slot:activator="{ props }">
        <v-btn
          v-bind="props"
        >
          <v-icon>mdi-account</v-icon>
          {{ getUser ? getUser.username : 'Account' }}
          <v-icon>mdi-chevron-down</v-icon>
        </v-btn>
      </template>
      <v-list>
        <v-list-item v-if="isAuthenticated" to="/dashboard">
          <v-icon icon="mdi-cog">

          </v-icon>
          Account Settings
        </v-list-item>
        <LoginDialog :activator="'list-item'" v-if="!isAuthenticated"/>
        <v-list-item v-else @click="submit">
          <v-icon icon="mdi-logout">

          </v-icon>
          Logout
        </v-list-item>
      </v-list>
    </v-menu>
  </v-app-bar>
</template>

<script lang="ts">
import {mapActions, mapState} from "pinia";
import {authStore} from "@/store/auth";
import {LoginDialog,ThemeButton,LanguageButton} from "@/components";
import {defineComponent} from "vue";

export default defineComponent({
  components: {
    LanguageButton,
    ThemeButton,
    LoginDialog
  },
  methods: {
    ...mapActions(authStore, ["logOut"]),
    async submit() {
      try {
        await this.logOut();
        this.$router.push('/home');
      } catch (error) {
        this.$root.vtoast.show({message: error});
      }
    },
  },
  computed: {
    ...mapState(authStore, ["getUser", 'isAuthenticated', 'isAuthLoading']),
  }
})
</script>

<style scoped>

</style>
