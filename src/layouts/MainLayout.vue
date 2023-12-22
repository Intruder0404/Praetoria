<template>
  <v-app>
      <vtoast ref="vtoast"/>
      <router-view color="secondary" name="UserNavigator">
      </router-view>
      <router-view height="0" color="secondary" name="AppBar">
      </router-view>
      <v-main class="fill-height">
        <router-view :key="$route.fullPath" name="content"/>
      </v-main>
      <router-view color="primary" style="position:absolute;bottom:0;width: 100%" name="footer"/>
  </v-app>
</template>
<script lang="ts">
import vtoast from '@/components/stack/vtoast.vue';
import {mapActions, mapState} from "pinia";
import {authStore} from "@/store/auth";
import {optionsStore} from "@/store/options";
import {defineComponent} from "vue";
export default defineComponent({
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
    ...mapActions(authStore, ["logOut"]),
    ...mapActions(optionsStore, ['fetchAll']),
  }
})
</script>
