<template>
    <div class="container mt-5">
        <h3 class="mb-3">Register Form</h3>
        <form @submit.prevent="register">
            <div class="mb-3">
                <label for="name" class="form-label">Nama</label>
                <input type="text" class="form-control" v-model="user.name" />
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" v-model="user.email" />
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input
                    type="password"
                    class="form-control"
                    v-model="user.password"
                />
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</template>

<script>
import axios from "axios";
export default {
    name: "Register",
    data() {
        return {
            user: {
                name: "",
                email: "",
                password: "",
            },
        };
    },
    methods: {
        register() {
            axios
                .post("/api/register", this.user)
                .then((response) => {
                    alert("Login berhasil");
                    localStorage.setItem("token", response.data.access_token);
                })
                .catch((error) => {
                    console.log(error);
                });
        }
    }
}
</script>
