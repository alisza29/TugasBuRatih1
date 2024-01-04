<template>
    <nav class="navbar navbar-expand-lg bg-body-tertiary shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">Manajemen Asset</a>
            <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
                <div class="d-flex" v-if="isGuest">
                    <router-link to="/login" class="btn btn-primary me-2"
                        >Login</router-link
                    >
                    <router-link to="/register" class="btn btn-primary"
                        >Register</router-link
                    >
                </div>
                <div class="d-flex" v-else>
                    <button class="btn btn-primary me-2" @click="logout">
                        Logout
                    </button>
                </div>
            </div>
        </div>
    </nav>
</template>

<script>
import axios from "axios";

export default {
    name: "AppHeader",
    props: {
        isGuest: Boolean,
    },
    methods: {
        logout() {
            axios
                .post(
                    "/api/logout",
                    {},
                    {
                        // tambahkan header Authorization dengan token yang disimpan di local storage
                        headers: {
                            Authorization: `Bearer ${localStorage.getItem(
                                "token"
                            )}`,
                        },
                    }
                )
                .then((response) => {
                    alert("Logout berhasil");
                    localStorage.removeItem("token");
                    this.$router.push({ name: "Login" });
                })
                .catch((error) => {
                    console.log(error);
                });
        },
    },
};
</script>
