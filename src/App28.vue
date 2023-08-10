<template>
  <div>
    <h2>Calcular Días</h2>
    <input v-model.number="dias" type="number" placeholder="Ingrese la cantidad de días">
    <button @click="calcular">Calcular</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      dias: 0,
      resultado: ''
    };
  },
  methods: {
    calcular() {
      this.resultado = this.calcularDias(this.dias);
    },
    calcularDias(dias) {
      let anios = Math.floor(dias / 365);
      let dias_restantes = dias % 365;
      let meses = Math.floor(dias_restantes / 30);
      dias_restantes = dias_restantes % 30;

      return `Equivale a ${anios} años, ${meses} meses y ${dias_restantes} días.`;
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
