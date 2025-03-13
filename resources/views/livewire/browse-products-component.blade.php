<div class="row"> 
    @foreach ($products as $product)
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="product_card">
                <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->title }}" class="product_img">

                <div class="pc_content">
                    <h2>{{ $product->title }}</h2>
                    <p class="pcc_in">In <a href="{{ route('category.show', $product->category->id) }}">{{ $product->category->name }}</a></p>
                    <p class="pcc_price">${{ $product->price }}</p>

                    <div class="pc_btn">
                        <button wire:click="addToCart({{ $product->id }})" class="addtocart">Add To Cart</button>
                        <a href="{{ route('product.show', $product->id) }}" class="viewbtn">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach

    @if (session()->has('message'))
        <div class="alert alert-success mt-2">{{ session('message') }}</div>
    @endif
</div>
