<template>
  <v-navigation-drawer v-model="drawer" permanent>
<!--    <v-list nav>
        <v-list-item
          v-for="(item, i) in Object.keys($store.options.state.options)"
          :key="i"
          :value="item"
          @click="setStore(item)"
          :disabled="$store.state.isLoading"
        >
          {{item}}
        </v-list-item>
    </v-list>-->
  </v-navigation-drawer>
</template>
<script lang="ts">

export default {
  data() {
    return {
      drawer: true,
      itemsPerPage: 5,
    };
  },
  methods: {
  }
}
</script>
