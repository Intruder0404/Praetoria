<template>
  <v-card :class="'text-'+direction" elevation="0" style="background: rgba(76, 175, 80, 0.0)">
    <v-card-title>
        <slot name="title">

        </slot>
    </v-card-title>
    <v-card-text style="color: white">
      <slot name="body">

      </slot>
    </v-card-text>
    <v-card-actions :class="'pa-10 text-'+direction">
      <v-row :justify="direction==='left'?'start':'end'">
        <slot name="actions">

        </slot>
      </v-row>
    </v-card-actions>
  </v-card>
</template>
<script lang="ts">

export default{
  props:{
    direction:{ type: String, required: false, default: 'left' }
  }
}

</script>
