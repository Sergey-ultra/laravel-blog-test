<div class="col post mb-2">
    <div class="border rounded box p-3  bg-light text-center">
        <a href="{{ route('main.show', [$post]) }}">
            <div class="posts__img">
                <img  src="{{ $post->image }}" alt="{{ $post->image }}">
            </div>
            <h5>{{ $post->title }}</h5>
        </a>
    </div>
</div>