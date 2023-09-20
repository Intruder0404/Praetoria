import axios from 'axios';

export const HTTP = axios.create({
  baseURL: import.meta.env.VITE_ROOT_API,
  headers: {
    'Authorization': `Bearer ${localStorage.getItem("access_token")}`
  }
});
HTTP.interceptors.request.use(
  (config) => {
    const token = localStorage.getItem("access_token");

    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
  },
  (error) => {
    return Promise.reject(error);
  }
);
