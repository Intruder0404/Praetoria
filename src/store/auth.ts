// Utilities
import { defineStore } from 'pinia'
import {HTTP as axios} from '@/http-common';

export const authStore = defineStore('auth', {
  state: () => ({
    accessToken: null,
    error: null,
    loading: false,
    user: null,
  }),
  actions: {
    register({commit}, registerData) {
      commit('loadingStart');

      axios.post('auth/register', {
        ...registerData
      })
        .then(response => {
          localStorage.setItem('access_token', response.data.data.token);
          commit('setUser', response.data.data.user);
          commit('loadingStop', null);
          commit('updateAccessToken', response.data.data.token);
        })
        .catch(error => {
          commit('loadingStop', error.response.data.error);
          commit('updateAccessToken', null);
          this.$root.vtoast.show({message: error.response.data.error})
        })
    },
    async LogIn(loginData) {
      this.loading = true;
      //commit('loadingStart');
      await axios.post('auth/login', {
        ...loginData
      })
        .then(response => {
          localStorage.setItem('access_token', response.data.data.token);
          this.user = response.data.data.user
          this.accessToken = response.data.data.token;
          this.error = null;
          this.loading = false;
        })
        .catch(error => {
          this.accessToken = null;
          //commit('updateAccessToken', null);
          this.error = error.response.data.error;
          //commit('setError', error.response.data.error);
          this.loading = false;
          throw new Error('Email or Password is incorrect');
          //this.$root.vtoast.show({message: error.response.data.error});
        })
    },
    async logOut() {
      this.loading = true;
      axios.post('auth/logout',{},{
        headers: {
          'Authorization': `Bearer ${this.accessToken}`
        }
      })
        .then(response => {
          localStorage.removeItem('access_token');
          this.user = null;
          //commit('setUser', null);
          this.accessToken = null;
          //commit('updateAccessToken', null);
          //commit('loadingStop');
          this.loading = false;
        })
        .catch(error => {
          if (error && error.response.data && error.response.data.errors) {
            error.value = Object.values(error.response.data.errors)
          } else {
            error.value = error.response.data.message || ""
          }
          this.$root.vtoast.show({message: error.value});
          this.loading = false;
        })
    },
    async updateUser() {
      this.loading = true;
      axios.post('updateUser',{user:this.user},{
        headers: {
          'Authorization': `Bearer ${this.accessToken}`
        }
      })
        .then(response => {
          this.user = response.data.data
          this.loading = false;
        })
        .catch(error => {
          if (error && error.response.data && error.response.data.errors) {
            error.value = Object.values(error.response.data.errors)
          } else {
            error.value = error.response.data.message || ""
          }
          this.$root.vtoast.show({message: error.value});
          this.loading = false;
        })
    },
    fetchAccessToken({ commit }) {
      commit('updateAccessToken', localStorage.getItem('access_token'));
    }
  },
  getters: {
    isAuthenticated: (state) =>!!state.user,
    getUser: (state) => state.user,
    getAccess: (state) => state.accessToken,
    isAuthLoading: (state) => state.loading
  },
  persist: true,
})
