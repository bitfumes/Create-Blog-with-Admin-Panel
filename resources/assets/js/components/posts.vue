<template>
    <div class="post-preview">
        <a href="slug">
            <h2 class="post-title">
                {{ title }}
            </h2>
            <h3 class="post-subtitle">
                {{ subtitle }}
            </h3>
        </a>
        <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> {{ created_at }} 
            <a href="" @click.prevent="likeIt">
                <small>{{ likeCount }}</small>
                <i class="fa fa-thumbs-up" aria-hidden="true"></i>
            </a>
        </p>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                likeCount:0
            }
        },
        props:[
            'title','subtitle','created_at','postId','login','likes'
        ],
        created(){
            this.likeCount = this.likes
        },
        methods:{
            likeIt(){
                if (this.login) {
                    axios.post('/saveLike',{
                        id : this.postId
                    })
                      .then(response => {
                        if (response.data == 'deleted') {
                            this.likeCount -= 1;
                        }else{
                            this.likeCount += 1;
                        }
                        // this.blog = response.data.data
                        // console.log(response);
                      })
                      .catch(function (error) {
                        console.log(error);
                      });
                }else{
                    window.location = 'login'
                }
            }
        }
    }
</script>
