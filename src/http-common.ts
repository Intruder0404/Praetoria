import axios from 'axios';

export const HTTP = axios.create({
  baseURL: import.meta.env.VITE_ROOT_API,
  headers: {
    'Authorization': `Bearer ${localStorage.getItem("access_token")}`
  }
})
