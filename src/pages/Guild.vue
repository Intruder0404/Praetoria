<template>
  <div style="width: 40%">
    <v-card style="margin: 50px" color="secondary">
      <v-card-title>
        {{getOptions.guilds[0].name}}
      </v-card-title>
      <v-card-text>
        {{ getOptions.guilds[0].attribute_values.find(av=>av.attribute.name === 'Description').value.value }}
      </v-card-text>
    </v-card>
  </div>
</template>

<script lang="ts">

import {mapState} from "pinia";
import {optionsStore} from "@/store/options";

export default {
  data() {
    return {}
  },
  computed:{
    ...mapState(optionsStore,['getOptions'])
  }
}
</script>
