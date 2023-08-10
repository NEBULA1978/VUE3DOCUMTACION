<template>
  <div>
    <h2>Imprimir Números con BuzzLightyear</h2>
    <input v-model.number="numero" placeholder="Ingrese un número">
    <button @click="imprimirBuzz">Imprimir</button>
    <div v-for="(resultado, index) in resultados" :key="index">
      {{ resultado }}
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      numero: 0,
      resultados: []
    };
  },
  methods: {
    buzz(numero) {
      if (numero % 3 === 0 && numero % 5 === 0) {
        return "BuzzLightyear";
      } else if (numero % 3 === 0) {
        return "buzz";
      } else if (numero % 5 === 0) {
        return "lightyear";
      } else {
        return numero;
      }
    },
    imprimirBuzz() {
      this.resultados = [];
      for (let i = 1; i <= this.numero; i++) {
        this.resultados.push(this.buzz(i));
      }
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
