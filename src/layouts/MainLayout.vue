<template>
  <v-card color="background">
    <v-layout>
      <vtoast ref="vtoast"/>
      <router-view color="primary" name="UserNavigator">
      </router-view>
      <router-view color="primary" name="AppBar">
      </router-view>

      <v-main style="margin-bottom: 100px">
        <router-view name="content"/>
      </v-main>
      <router-view color="primary" style="position:absolute;bottom:0;width: 100%" name="footer"/>
    </v-layout>
  </v-card>
</template>
<script lang="ts">
import vtoast from '@/components/stack/vtoast';
import {mapActions, mapState} from "pinia";
import {authStore} from "@/store/auth";
import {optionsStore} from "@/store/options";
export default {
  name: "App",
  components: {
    vtoast
  },
  data() {
    return {
      loading: false
    };
  },
  mounted() {
    this.fetchAll();
    this.$root.vtoast = this.$refs.vtoast
  },
  computed: {
    ...mapState(authStore, ["getUser", 'isAuthenticated', 'isAuthLoading']),
  },
  methods: {
    ...mapActions(authStore, ["logOut", "fetchAccessToken"]),
    ...mapActions(optionsStore, ['fetchAll']),
  }
};
</script>
