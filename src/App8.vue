<template>
  <div>
    <h2>Buscar Coincidencias</h2>
    <input v-model="frase" placeholder="Ingrese una frase">
    <input v-model="palabraBusqueda" placeholder="Ingrese la palabra a buscar">
    <button @click="buscarCoincidencias">Buscar</button>
    <p v-if="coincidencias !== null">Número de coincidencias: {{ coincidencias }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      frase: '',
      palabraBusqueda: '',
      coincidencias: null
    };
  },
  methods: {
    buscarCoincidencias() {
      const fraseLimpia = this.frase.toLowerCase().replace(/[!¿?.,=]/gi, '');
      const palabras = fraseLimpia.split(' ');
      const mapa = {};

      if (fraseLimpia.includes(this.palabraBusqueda)) {
        for (const palabra of palabras) {
          if (mapa[palabra]) {
            mapa[palabra]++;
          } else {
            mapa[palabra] = 1;
          }
        }

        this.coincidencias = mapa[this.palabraBusqueda];
      } else {
        this.coincidencias = 0;
      }

      setTimeout(() => {
        this.coincidencias = null;
      }, 3000); // 3 segundos
    }
  }
};
</script>

<style>
/* Estilos opcionales */
input {
  margin-right: 10px;
}
</style>
