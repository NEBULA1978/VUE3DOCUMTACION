<template>
  <div>
    <h2>Mostrar Divisores</h2>
    <input v-model.number="numero" placeholder="Ingrese un número">
    <button @click="mostrarDivisores">Mostrar Divisores</button>
    <div v-for="(divisor, index) in divisores" :key="index">
      {{ divisor }}
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      numero: 0,
      divisores: []
    };
  },
  methods: {
    divisor(numero, posible_divisor) {
      if (numero % posible_divisor === 0) {
        return posible_divisor;
      }
      return 0;
    },
    mostrarDivisores() {
      this.divisores = [];
      for (let i = 1; i <= this.numero; i++) {
        let esDivisor = this.divisor(this.numero, i);
        if (esDivisor) {
          this.divisores.push(esDivisor);
        }
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
