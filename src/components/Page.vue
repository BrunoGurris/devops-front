<template>
  <div class="col-12 col-lg-4 border rounded p-3">
    <h4 class="text-center mb-4">{{ pageName }}</h4>

    <div class="mb-2">
      <label class="form-label m-0">Nome:</label>
      <input type="text" class="form-control">
    </div>
    <div class="mb-2">
      <label class="form-label m-0">E-mail:</label>
      <input type="text" class="form-control">
    </div>
    <div class="mb-2 text-end">
      <button type="button" class="btn btn-success">Criar</button>
    </div>

    <h5 class="mt-5">Lista de estudantes</h5>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nome</th>
          <th scope="col">E-mail</th>
          <th scope="col">Ação</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(student, n) in students" :key="n">
          <th scope="row">1</th>
          <td>{{ student.name }}</td>
          <td>{{ student.email }}</td>
          <td><button type="button" class="btn btn-outline-danger btn-sm"><i class="bi bi-trash"></i></button></td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'App',

  data() {
    return {
      students: []
    }
  },

  props: ['pageName', 'url'],

  methods: {
    async getAllStudents() {
      await axios.get(`${this.url}/students`, {
        headers: {
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin': 'http://localhost:8080'
        }
      })
        .then(function (response) {
          this.students = response
        })
        .catch(function () {
          alert('Ocorreu um erro')
        })
    }
  },

  mounted() {
    this.getAllStudents()
  }
}
</script>

<style></style>