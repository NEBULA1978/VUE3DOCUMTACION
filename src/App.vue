<template>
  <div>
    <h2>Tabla de Multiplicar del Nº 5</h2>
    <textarea v-model="tablaResultado" rows="10" cols="50" readonly></textarea>
    <button @click="generarTabla">Generar Tabla del 5</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tablaResultado: ''
    };
  },
  methods: {
    generarTabla() {
      const numero = 5; // Puedes cambiar este número según tu necesidad
      let resultado = `# Tabla del ${numero} #\n`;

      for (let i = 0; i <= 10; i++) {
        let multiplicacion = i * numero;
        resultado += `${i} x ${numero} = ${multiplicacion}\n`;
      }

      this.tablaResultado = resultado;
    }
  }
};
</script>

<style>
/* Estilos opcionales para textarea */
textarea {
  margin-top: 10px;
}
</style>
