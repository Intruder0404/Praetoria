// Utilities
import { defineStore } from 'pinia'

export const charactersStore = defineStore('characters', {
  state: () => ({
    characterLoading: false
  }),
  actions: {
    async getCharactersByUser({commit},user) {
      commit('setCharacterLoading',true);
      const data = [
        {id:1,name:'diogenus',rank:1},
        {id:2,name:'Rabi Asher Solarstein',rank:1}
      ]
      commit('setCharacterLoading',false);
      return data
    },
    async updateCharacter({commit},character) {
      commit('setCharacterLoading',true);
      commit('setCharacterLoading',false);
      return true;
    },
  },
  getters: {
    isOptionsLoading(state) {
      return state.characterLoading;
    }
  },
})
