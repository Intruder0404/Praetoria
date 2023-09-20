<template>
  <v-app-bar
    color="grey"
    height="48"
    flat
  >
    <v-menu open-on-hover :close-on-content-click="false">
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
        <v-list-item to="/dashboard">
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
    <LanguageButton/>
    <ThemeButton/>
  </v-app-bar>
</template>

<script lang="ts">
import {mapActions, mapState} from "pinia";
import {authStore} from "@/store/auth";
import {LoginDialog} from "@/components/dialog/auth/LoginDialog";
import ThemeButton from "@/components/button/theme/ThemeButton";
import LanguageButton from "@/components/button/language/LanguageButton";

export default {
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
}
</script>

<style scoped>

</style>
