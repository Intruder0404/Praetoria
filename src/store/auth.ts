// Utilities
import { defineStore } from 'pinia'
import {HTTP as axios} from '@/http-common';
import {User} from "@/models/User/User";

export const authStore = defineStore('auth', {
  state: () => ({
    accessToken: '',
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

          this.user = response.data.data.user
          this.accessToken = response.data.data.token;
          this.error = null;
          this.loading = false;
        })
        .catch(error => {
          this.accessToken = '';
          //commit('updateAccessToken', null);
          this.error = error.response.data.error;
          //commit('setError', error.response.data.error);
          this.loading = false;
          throw new Error('Email or Password is incorrect');
          //this.$root.vtoast.show({message: error.response.data.error});
        });
      localStorage.setItem('access_token', this.getAccess);
    },
    async logOut() {
      this.loading = true;
      axios.post('auth/logout',{}/*,{
        headers: {
          'Authorization': `Bearer ${this.accessToken}`
        }
      }*/)
        .then(response => {
          localStorage.removeItem('access_token');
          this.user = null;
          this.accessToken = '';
          this.loading = false;
        })
        .catch(error => {
          /*if (error && error.response.data && error.response.data.errors) {
            error.value = Object.values(error.response.data.errors)
          } else {
            error.value = error.response.data.message || ""
          }*/
          //this.$root.vtoast.show({message: error.value});
          alert(error);
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
    isAuthenticated: (state):boolean =>!!state.user,
    getUser: (state):User|null => state.user,
    getAccess: (state):string => state.accessToken,
    isAuthLoading: (state):boolean => state.loading
  },
  persist: true,
})
