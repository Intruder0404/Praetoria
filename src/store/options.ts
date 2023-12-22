// Utilities
import { defineStore } from 'pinia'
import {HTTP as axios} from '@/http-common';
import {Attribute} from "@/models/Attribute/Attribute";
import {Religion} from "@/models/Religion/Religion";
import {Kingdom} from "@/models/Kingdom/Kingdom";
import {Guild} from "@/models/Guild/Guild";
import {Family} from "@/models/Family/Family";
import {User} from "@/models/User/User";

export const optionsStore = defineStore('options', {
  state: () => ({
    options: {
      religions: Array<Religion>(),
      kingdoms: Array<Kingdom>(),
      guilds: Array<Guild>(),
      families: Array<Family>(),
      users: Array<User>(),
      attributes: Array<Attribute>(),
      userTypes: [],
      ranks: [],
    },
    optionLoading: false
  }),
  actions: {
    async fetchAll() {
      this.optionLoading = true;
      let data = [];
      await axios.get(
        'options'
      )
        .then(response => {
          data = response.data
        })
        .catch(error => {
          this.$root.vtoast.show({message: error})
        });
      this.optionLoading = false;
      this.options = data;
    },
  },
  getters: {
    getOptions(state) {
      return state.options;
    },
    getOptionLoading(state) {
      return state.optionLoading;
    }
  },
  persist: true,
})
