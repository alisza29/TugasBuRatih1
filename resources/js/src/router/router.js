import { createRouter, createWebHistory } from "vue-router";

const routes = [
    {
        path: "/",
        name: "Home",
        component: () => import("../pages/home.vue")
    },
    {
        path: "/login",
        name: "Login",
        component: () => import("../pages/login.vue")
    },
    {
        path: "/register",
        name: "Register",
        component: () => import("../pages/register.vue")
    },
    {
        
        path: "/asset/edit/:id",
        name: "EditAsset",
        component: () => import("../pages/asset/edit.vue")
    },
    {
        
        path: "/asset/create",
        name: "CreateAsset",
        component: () => import("../pages/asset/create.vue")
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router;