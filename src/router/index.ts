// Composables
import { createRouter, createWebHistory,RouteRecordRaw  } from 'vue-router'
import { UserNavigator,AppBar,Footer } from "@/components";
import { authStore } from "@/store/auth";

const routes: Array<RouteRecordRaw> = [
  {path: '/', redirect: '/home'},
  {
    path: '/home',
    name: 'home',
    components: {
      AppBar:AppBar,
      content: () => import('@/pages/Home.vue'),
      footer: Footer
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
      UserNavigator,
      content: () => import('@/pages/administration/Dashboard.vue')
    },
    meta: { requiresAuth: true },
  },
  {
    path: '/admin/:name',
    name: 'admin',
    components: {
      UserNavigator,
      content: () => import('@/pages/administration/Admin.vue'),
    },
    meta: { requiresAuth: true },
  },
  {
    path: '/character',
    name: 'character',
    components: {
      UserNavigator,
      content: () => import('@/pages/administration/Character.vue'),
    },
    meta: { requiresAuth: true },
  },
  {
    path: '/account',
    name: 'account',
    components: {
      UserNavigator,
      content: () => import('@/pages/administration/Account.vue'),
    },
    meta: { requiresAuth: true },
  },
  {
    path: '/registration',
    name: 'registration',
    components: {
      AppBar,
      content: () => import('@/components/auth/registration.vue'),
    },
    meta: { requiresAuth: false },
  },
  {
    path: '/Guild',
    name: 'guild',
    components: {
      AppBar,
      content: () => import('@/pages/Guild.vue'),
      footer: Footer
    },
    meta: { requiresAuth: false },
  },
  {
    path: '/Families',
    name: 'families',
    components: {
      AppBar,
      content: () => import('@/pages/Families.vue'),
      footer: Footer
    },
    meta: { requiresAuth: false },
  },
  {
    path: '/Religions',
    name: 'religions',
    components: {
      AppBar,
      content: () => import('@/pages/Religions.vue'),
      footer: Footer
    },
    meta: { requiresAuth: false },
  },
  {
    path: '/Politics',
    name: 'politics',
    components: {
      AppBar,
      content: () => import('@/pages/Politics.vue'),
      footer: Footer
    },
    meta: { requiresAuth: false },
  },
  {
    path: '/Merchants',
    name: 'merchants',
    components: {
      AppBar,
      content: () => import('@/pages/Merchants.vue'),
      footer: Footer
    },
    meta: { requiresAuth: false },
  },
  {
    path: '/Bicolline',
    name: 'bicolline',
    components: {
      AppBar,
      content: () => import('@/pages/Bicolline.vue'),
    },
    meta: { requiresAuth: false },
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
  scrollBehavior(to, from, savedPosition) {
    return { top: 0 }
  },
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
