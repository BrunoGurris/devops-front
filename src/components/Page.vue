<template>
  <div class="col-12 col-lg-4 border rounded p-3">
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
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td>email@email.com</td>
          <td><button type="button" class="btn btn-outline-danger btn-sm"><i class="bi bi-trash"></i></button></td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Jacob</td>
          <td>email@email.com</td>
          <td><button type="button" class="btn btn-outline-danger btn-sm"><i class="bi bi-trash"></i></button></td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>

export default {
  name: 'App',
  components: {
  }
}
</script>

<style></style>