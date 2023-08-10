<template>
  <div>
    <h2>Verificar Palíndromo</h2>
    <input ref="inputField" v-model="inputText" :disabled="verificando" placeholder="Ingrese una cadena de texto">
    <button @click="verificarPalindromo">Verificar</button>
    <p v-if="mostrarResultado">{{ resultado }}</p>
    <p v-if="mostrarMensaje">{{ mensaje }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      inputText: '',
      resultado: '',
      verificando: false,
      mostrarResultado: false,
      mostrarMensaje: false,
      mensaje: ''
    };
  },
  methods: {
    verificarPalindromo() {
      if (this.inputText.trim() === '') {
        this.mostrarMensaje = true;
        this.mensaje = 'Por favor, ingrese un texto';
        return;
      }

      this.mostrarMensaje = false;
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

        this.$nextTick(() => {
          this.$refs.inputField.focus();
        });
      }, 3000);
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


<!-- En este ejemplo, hemos agregado una nueva propiedad mostrarMensaje para controlar si se debe mostrar el mensaje de advertencia. Dentro del método verificarPalindromo, verificamos si el inputText está en blanco usando trim(), y si lo está, mostramos el mensaje y detenemos la ejecución del método con return. Si se ingresó algún texto, ocultamos el mensaje. De esta manera, se mostrará el mensaje de advertencia si el usuario intenta verificar sin ingresar nada. -->

<!-- Utilizamos $nextTick() en conjunto con focus() dentro del setTimeout(). Esto asegura que el enfoque se aplique después de que Vue haya actualizado la vista y que el cursor permanezca dentro del input después de 3 segundos. -->