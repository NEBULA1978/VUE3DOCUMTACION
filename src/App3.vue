<template>
  <div>
    <h2>Agregar Usuarios</h2>
    <form @submit.prevent="agregarUsuario">
      <input v-model="nuevoUsuario" placeholder="Nombre de usuario">
      <button>Añadir Usuario</button>
    </form>

    <h2>Lista de Usuarios</h2>
    <button @click="toggleLista">{{ mostrarLista ? 'Ocultar' : 'Mostrar' }} Lista</button>

    <ul v-if="mostrarLista">
      <li v-for="(usuario, index) in usuarios" :key="index">{{ usuario }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      nuevoUsuario: '',
      usuarios: ['Usuario 1', 'Usuario 2', 'Usuario 3'],
      mostrarLista: false
    };
  },
  methods: {
    agregarUsuario() {
      if (this.nuevoUsuario.trim() !== '') {
        this.usuarios.push(this.nuevoUsuario);
        this.nuevoUsuario = ''; // Limpiamos el campo de entrada
      }
    },
    toggleLista() {
      this.mostrarLista = !this.mostrarLista;
    }
  }
};
</script>

Por supuesto, puedo ayudarte a crear un formulario que simule agregar usuarios a una "base de datos" (en realidad, será un array en este caso) y mostrar u ocultar la lista de usuarios con un botón. Aquí tienes un ejemplo:

vue

<template>
  <div>
    <h2>Agregar Usuarios</h2>
    <form @submit.prevent="agregarUsuario">
      <input v-model="nuevoUsuario" placeholder="Nombre de usuario">
      <button>Añadir Usuario</button>
    </form>

    <h2>Lista de Usuarios</h2>
    <button @click="toggleLista">{{ mostrarLista ? 'Ocultar' : 'Mostrar' }} Lista</button>

    <ul v-if="mostrarLista">
      <li v-for="(usuario, index) in usuarios" :key="index">{{ usuario }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      nuevoUsuario: '',
      usuarios: ['Usuario 1', 'Usuario 2', 'Usuario 3'],
      mostrarLista: false
    };
  },
  methods: {
    agregarUsuario() {
      if (this.nuevoUsuario.trim() !== '') {
        this.usuarios.push(this.nuevoUsuario);
        this.nuevoUsuario = ''; // Limpiamos el campo de entrada
      }
    },
    toggleLista() {
      this.mostrarLista = !this.mostrarLista;
    }
  }
};
</script>
<!-- 
En este ejemplo, hemos creado un formulario donde puedes ingresar nombres de usuarios y agregarlos a la "base de datos" (el array usuarios) al enviar el formulario. Luego, hemos agregado un botón para mostrar u ocultar la lista de usuarios. Cuando la lista se muestra, se iterará a través del array usuarios y se mostrarán los nombres de los usuarios.

El botón para mostrar u ocultar la lista alterna el valor de mostrarLista, lo que controla si la lista se muestra o no.

Es importante tener en cuenta que esta implementación es bastante simplificada y no tiene persistencia de datos real. Cada vez que recargas la página, los datos volverán a los valores iniciales. Para tener una simulación más realista de una "base de datos", necesitarías trabajar con alguna forma de almacenamiento persistente, como una base de datos real o el almacenamiento local del navegador. -->