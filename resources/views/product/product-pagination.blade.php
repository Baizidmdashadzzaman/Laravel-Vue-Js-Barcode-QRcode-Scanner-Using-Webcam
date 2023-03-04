<div class="row"  >
@foreach($product as $singleproduct)
<div class="col-md-3" >
    <figure class="card card-product">
       <div class="img-wrap"> 
          <img src="{{asset($singleproduct->image)}}">
          <a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
       </div>
       <figcaption class="info-wrap">
          <a href="#" class="title">{{$singleproduct->name}}</a>
          <div class="action-wrap">
             <button class="btn btn-primary btn-sm float-right"> <i class="fa fa-cart-plus"></i> Add </button>
             <div class="price-wrap h5">
                <span class="price-new">$ {{$singleproduct->price}}</span>
             </div>
          </div>
       </figcaption>
    </figure>
</div>
@endforeach 
</div>
<hr>
<div id="pagination">
    {{ $product->links("pagination::bootstrap-4") }}
</div>
