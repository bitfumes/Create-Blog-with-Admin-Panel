@extends('user/app')

@section('bg-img',asset('user/img/post-bg.jpg'))
@section('head')
<link rel="stylesheet" href="{{ asset('user/css/prism.css') }}">
@endsection
@section('title',$post->title)
@section('sub-heading',$post->subtitle)

@section('main-content')
<!-- Post Content -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9&appId=455618938154843";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<article>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <small>Created at {{ $post->created_at->diffForHumans() }}</small>
                @foreach ($post->categories as $category)
                <small class="pull-right" style="margin-right: 20px">  
                    {{ $category->name }}
                </small>
                @endforeach
                {!! htmlspecialchars_decode($post->body) !!}

                {{-- Tag clouds --}}
                <h3>Tag Clouds</h3>
                @foreach ($post->tags as $tag)
                <small class="pull-left" style="margin-right: 20px;border-radius: 5px;border: 1px solid gray;padding: 5px;">  
                    {{ $tag->name }}
                </small>
                @endforeach
            </div>
            <div class="fb-comments" data-href="{{ Request::url() }}" data-numposts="5"></div>
        </div>
    </div>
</article>

<hr>
@endsection
@section('footer')
<script src="{{ asset('user/js/prism.js') }}"></script>
@endsection