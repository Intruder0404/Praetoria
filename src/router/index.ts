// Composables
import { createRouter, createWebHistory } from 'vue-router'
import UserNavigator from "@/components/navigator/UserNavigator";
import AppBar from "@/components/appbar/AppBar";
import {authStore} from "@/store/auth";

const routes = [
  {path: '/', redirect: '/home'},
  {
    path: '/home',
    name: 'home',
    components: {
      AppBar,
      content: () => import('@/pages/Home.vue')
    }
  },
  {
    path: '/login',
    name: 'login',
    components: {
      content: () => import('@/pages/auth/Login.vue')
    },
    meta: { requiresAuth: false },
  },
  {
    path: '/dashboard',
    name: 'dashboard',
    components: {
      AppBar,
      UserNavigator,
      content: () => import('@/pages/Dashboard.vue')
    },
    meta: { requiresAuth: true },
  },
  {
    path: '/admin/:name',
    name: 'admin',
    components: {
      AppBar,
      UserNavigator,
      content: () => import('@/pages/Admin.vue'),
    },
    meta: { requiresAuth: true },
  },
  {
    path: '/character',
    name: 'character',
    components: {
      AppBar,
      UserNavigator,
      content: () => import('@/pages/Character.vue'),
    },
    meta: { requiresAuth: true },
  },
  {
    path: '/account',
    name: 'account',
    components: {
      AppBar,
      UserNavigator,
      content: () => import('@/pages/Account.vue'),
    },
    meta: { requiresAuth: true },
  },
  {
    path: '/registration',
    name: 'registration',
    components: {
      AppBar,
      UserNavigator,
      content: () => import('@/components/auth/registration.vue'),
    },
    meta: { requiresAuth: true },
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

router.beforeEach((to, from, next) => {
  if (to.matched.some((record) => record.meta.requiresAuth)) {
    if (authStore().isAuthenticated) {
      next();
      return;
    }
    next("/home");
  } else {
    next();
  }
});

export default router
