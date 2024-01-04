<template>
    <div class="container mt-5">
        <h3 class="mb-3">Login Form</h3>
        <form @submit.prevent="login">
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
    name: "Login",
    data() {
        return {
            user: {
                email: "",
                password: "",
            },
        };
    },
    methods: {
        // fungsi untuk login user
        login() {
            axios
                .post("/api/login", this.user)
                .then((response) => {
                    alert("Login berhasil");
                    localStorage.setItem("token", response.data.access_token);
                    //router  push berfungsi mengahrahkan user ke halaman lain stlh login berhasil
                    this.$router.push({ name: "Home" });
                })
                .catch((error) => {
                    alert(error.response.data.message);
                });
        },
    },
    mounted() {
        // emit berfungsi untuk mengirimkan event ke parent component (App.vue)
        this.$emit("update-navbar");
    },
};
</script>
