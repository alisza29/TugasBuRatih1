<template>
    <div class="container mt-5">
        <div class="d-flex align-items-center justify-content-center">
            <h3 class="m-0">Asset Saya</h3>
            <RouterLink to="/asset/create" class="btn btn-primary ms-auto">Tambah Asset</RouterLink>
        </div>

        <div class="row mt-3">
            <div class="col-4" v-for="asset in assets" :key="asset.id">
                <div class="card border-0 shadow-sm">
                    <img :src="asset.image" alt="" class="card-img-top rounded-5 p-2">
                    <div class="card-body">
                        <h3 class="card-title">{{ asset.name }}</h3>
                        <p class="card-text">{{ asset.description }}</p>
                        <p class="card-text">Jumlah: {{ asset.quantity }}</p>
                    </div>
                    <div class="card-footer">
                        <RouterLink :to="{ name: 'EditAsset', params: { id: asset.id } }" class="btn btn-primary w-100">Edit
                            Asset</RouterLink>
                        <button class="btn btn-danger w-100 mt-2" @click="deleteAsset(asset.id)">Hapus Asset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { RouterLink } from 'vue-router';
import axios from 'axios';

export default {
    name: "Home",
    data() {
        return {
            assets: []
        }
    },
    mounted() {
        this.$emit('update-navbar');

        this.fetchAssets();
    },
    methods: {
        fetchAssets() {
            axios.get('/api/assets', {
                headers: {
                    Authorization: `Bearer ${localStorage.getItem('token')}`
                }
            }).then(response => {
                this.assets = response.data.data;
            }).catch(error => {
                console.log(error)
            })
        },
        deleteAsset(id) {
            axios.delete(`/api/assets/${id}`, {
                headers: {
                    Authorization: `Bearer ${localStorage.getItem('token')}`
                }
            }).then(response => {
                alert('Hapus asset berhasil')
                this.fetchAssets();
            }).catch(error => {
                console.log(error)
            })
        }
    },
    components: { RouterLink }
}
</script>

<style scoped>
.card-img-top {
    height: 300px;
    object-fit: cover;
}
</style>
