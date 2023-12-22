/**
 * plugins/index.ts
 *
 * Automatically included in `./src/main.ts`
 */

// Plugins
import { loadFonts } from './webfontloader'
import vuetify from './vuetify'
import pinia from '../store'
import router from '../router'

import ToastPlugin from 'vue-toast-notification';

import 'vue-toast-notification/dist/theme-bootstrap.css';

// Types
import type { App } from 'vue'

import i18n from './i18n'

export function registerPlugins (app: App) {
  loadFonts()
  app
    .use(ToastPlugin)
    .use(vuetify)
    .use(router)
    .use(pinia)
    .use(i18n)
}
