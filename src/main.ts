/**
 * main.ts
 *
 * Bootstraps Vuetify and other plugins then mounts the App`
 */

// Components
import App from '@/layouts/MainLayout.vue'

// Composables
import {createApp, h} from 'vue'

// Plugins
import { registerPlugins } from '@/plugins'

const app = createApp({ render:()=>h(App)});

registerPlugins(app);

app.mount('#app');
