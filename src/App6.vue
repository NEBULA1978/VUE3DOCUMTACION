<template>
  <div>
    <h2>Verificar Palíndromo</h2>
    <input ref="inputField" v-model="inputText" :disabled="verificando" placeholder="Ingrese una cadena de texto">
    <button @click="verificarPalindromo">Verificar</button>
    <p v-if="mostrarResultado">{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      inputText: '',
      resultado: '',
      verificando: false,
      mostrarResultado: false
    };
  },
  methods: {
    verificarPalindromo() {
      this.verificando = true;
      const texto = this.inputText.toLowerCase().replace(/\s/g, '');
      const invertido = texto.split('').reverse().join('');
      this.resultado = invertido === texto ? 'Es un palíndromo' : 'No es un palíndromo';
      this.mostrarResultado = true;

      setTimeout(() => {
        this.verificando = false;
        this.inputText = '';
        this.resultado = '';
        this.mostrarResultado = false;
        this.$refs.inputField.focus(); // Enfocar el input nuevamente
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

<!-- En este ejemplo, hemos añadido el atributo ref="inputField" al input. Luego, dentro del método verificarPalindromo, después de ocultar el resultado, utilizamos this.$refs.inputField.focus() para enfocar nuevamente el input. De esta manera, el cursor permanecerá dentro del input cuando el resultado desaparezca después de 3 segundos. -->
