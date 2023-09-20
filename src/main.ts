/**
 * main.ts
 *
 * Bootstraps Vuetify and other plugins then mounts the App`
 */

// Components
import App from '@/layouts/MainLayout'

// Composables
import { createApp } from 'vue'

// Plugins
import { registerPlugins } from '@/plugins'

import i18n from './plugins/i18n'

const app = createApp(App).use(i18n)

registerPlugins(app)

app.mount('#app')
