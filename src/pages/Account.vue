<template>
  <v-card class="px-4">
    <v-card-title>
      Account Modification
    </v-card-title>
    <v-card-text>
      <v-form ref="registerForm" v-model="valid" lazy-validation>
        <v-row>
          <v-col cols="12" sm="6" md="6">
            <v-text-field v-model="getUser.username" :rules="[rules.required]" label="User Account"
                          required></v-text-field>
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-checkbox v-model="getUser.isActive" label="Active"></v-checkbox>
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-text-field v-model="getUser.first_name" :rules="[rules.required]" label="First Name" maxlength="20"
                          required></v-text-field>
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-text-field v-model="getUser.last_name" :rules="[rules.required]" label="Last Name" maxlength="20"
                          required></v-text-field>
          </v-col>
          <v-col cols="12">
            <v-text-field v-model="getUser.email" :rules="emailRules" label="E-mail" required></v-text-field>
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-select
              v-if="getUser.user_type.name === 'admin'"
              v-model="getUser.type"
              :items="getOptions.userTypes"
              label="User Type"
              item-title="name"
              item-value="id"
            />
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-select
              v-if="getUser.user_type.name === 'admin'"
              v-model="getUser.rank"
              :items="getOptions.ranks"
              label="Rank"
              item-title="name"
              item-value="id"
            />
          </v-col>
          <v-col v-for="attribute_value in getUser.attribute_values" cols="12" sm="6" md="6">
            <v-select
              v-if="attribute_value.attribute.name === 'Family'"
              v-model="attribute_value.value.value"
              :items="getOptions.families"
              :label="attribute_value.attribute.name"
              item-title="name"
              item-value="id"
            />
            <v-select
              v-if="attribute_value.attribute.name === 'Religion'"
              v-model.number="attribute_value.value.value"
              :items="getOptions.religions"
              :label="attribute_value.attribute.name"
              item-title="name"
              item-value="id"
            >
            </v-select>
          </v-col>
          <v-spacer></v-spacer>
          <v-col class="d-flex ml-auto" cols="12" sm="3" xsm="12">
            <v-btn x-large block color="success" @click="validate">Change</v-btn>
          </v-col>
        </v-row>
      </v-form>
    </v-card-text>
  </v-card>
</template>
<script lang="ts">
import {mapActions, mapState} from "pinia";
import vtoast from "@/components/stack/vtoast";
import {authStore} from "@/store/auth";
import {optionsStore} from "@/store/options";

export default {
  name: "App",
  components: {
    vtoast,
  },
  data() {
    return {
      valid: true,
      itemsPerPage: 5,
      loading: false,
      verify: null,
      showPass: false,
      family:null,
      rules: {
        required: value => !!value || "Required.",
        min: v => (v && v.length >= 8) || "Min 8 characters"
      },
      loginEmailRules: [
        v => !!v || "Required",
        v => /.+@.+\..+/.test(v) || "E-mail must be valid"
      ],
      emailRules: [
        v => !!v || "Required",
        v => /.+@.+\..+/.test(v) || "E-mail must be valid"
      ]
    };
  },
  mounted() {
    this.$root.vtoast = this.$refs.vtoast
  },
  computed: {
    ...mapState(authStore,["getUser", 'isAuthenticated']),
    ...mapState(optionsStore,['getOptions'])
  },
  methods: {
    //...mapMutations('authStore',["setUser"]),
    //...mapMutations('optionsStore',['setOptions']),
    ...mapActions(authStore,['updateUser']),
    ...mapActions(optionsStore,['fetchAll']),
    validate() {
      this.updateUser().then(() => {
        this.fetchAll()
      });
    },
    test(val){
      alert(val);
    }
  }
};
</script>
