<template>
  <v-dialog v-model="active" max-width="500px">
    <v-card>
      <v-card-title class="text-h5">Are you sure you want to delete this item?</v-card-title>
      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn color="blue-darken-1" variant="text" @click="close">Cancel</v-btn>
        <v-btn color="blue-darken-1" variant="text" @click="close">OK</v-btn>
        <v-spacer></v-spacer>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script lang="ts">
export default {
  name: "DeleteDialog",
  props:['isActive'],
  methods:{
    close(){
      this.$emit('closeCreate');
    }
  },
  data(){
    return{
      active:false
    }
  },
  watch:{
    isActive:{
      handler (newVal, oldVal) {
        this.active = newVal;
      }
    }
  },
  mounted() {
    this.name = this.$route.params.name;
  }
}
</script>

<style scoped>

</style>
