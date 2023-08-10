import { createRouter, createWebHistory } from 'vue-router';
import App from './App.vue';
import App2 from './App2.vue';

const routes = [
  {
    path: '/',
    name: 'main',
    component: App,
  },
  {
    path: '/app2',
    name: 'app2',
    component: App2,
  },
  // Agrega más rutas si es necesario
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
