<template>
  <div>
    <h2>Serie de Fibonacci</h2>
    <input v-model.number="numero" type="number" placeholder="Ingrese un número">
    <button @click="calcularFibonacci">Calcular</button>
    <p>Serie completa: {{ serieCompleta }}</p>
    <p>Serie fib: {{ valorFibonacci }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      numero: 0,
      serieCompleta: [],
      valorFibonacci: 0
    };
  },
  methods: {
    calcularFibonacci() {
      const [serie, fibValue] = this.fibonacci(this.numero);
      this.serieCompleta = serie;
      this.valorFibonacci = fibValue;
    },
    fibonacci(numero) {
      let serie = [0, 1];

      for (let i = 2; i <= numero; i++) {
        serie.push(serie[i - 1] + serie[i - 2]);
      }

      return [serie, serie[numero]];
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
