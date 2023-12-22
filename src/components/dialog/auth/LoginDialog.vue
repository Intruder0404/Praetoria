<template>
    <v-dialog v-model="active"
              width="auto">
      <template v-slot:activator="{ props }">
        <v-btn v-if="activator==='button'" style="width: 100%" v-bind="props">
          Login
        </v-btn>
        <v-list-item v-else-if="activator==='list-item'" style="width: 100%" v-bind="props">
          Login
        </v-list-item>
        <v-btn v-else style="width: 100%" v-bind="props">
          Login
        </v-btn>
      </template>
      <v-card>
        <v-card-title>
          Login
        </v-card-title>
        <Login v-if="!loading"/>
        <v-progress-linear v-else
                           color="deep-purple-accent-4"
                           indeterminate
                           rounded
                           height="6"
        ></v-progress-linear>
      </v-card>
    </v-dialog>
</template>
<script lang="ts">
import Login from "@/pages/auth/Login.vue";
import {mapState} from "pinia";
import {authStore} from "@/store/auth";
import {defineComponent} from "vue";

export default defineComponent({
  name: "LoginDialog",
  components: {Login},
  props: {
    isActive:{
      type: Boolean
    },
    activator:{
      type: String
    }
  },
  data() {
    return {
      active: false
    }
  },
  methods: {
    close() {
      this.$emit('closeCreate');
    }
  },
  computed: {
    ...mapState(authStore, ['loading', 'isAuthenticated']),
    auth() {
      return this.isAuthenticated;
    }
  },
  watch: {
    isActive: {
      handler(newVal, oldVal) {
        this.active = newVal;
      }
    },
    isAuthenticated: {
      handler(newVal, oldVal) {
        this.active = false;
      }
    }
  }
})
</script>
