@extends('layouts.app')

@push('headerCss')
<style>
    .required, .lblSpan {
        color: red;
    }
</style>
@endpush

@section('content')
<div class="container">
    <div class="col-lg-12">
        @if ($message = Session::get('success'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>    
                <strong>{{ $message }}</strong>
            </div>
        @endif
        @if ($message = Session::get('error'))
            <div class="alert alert-danger alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>    
                <strong>{{ $message }}</strong>
            </div>
        @endif
    </div>
    
    <div class="col-lg-12">
        <form method="post" id="productForm" action="{{ route('product.store') }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group row">
                <label class="col-lg-2 col-form-label">Name<span class="lblSpan">*</span></label>
                <div class="col-lg-4">
                    <input type="text" name="name" class="form-control" id="name"/>
                    @if ($errors->has("name"))
                        <span class=" form-text required">{{__($errors->first('name'))}}</span>
                    @else
                        <span class="form-text" id="heading_titlereply_to_email_validate" ></span>
                    @endif
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-2 col-form-label">Category<span class="lblSpan">*</span></label>
                <div class="col-lg-4">
                    <select class="form-control" name="category_id" id="category_id">
                        <option value="">Select Product Category</option>
                        @foreach ($productCategory as $pc)
                            <option value="{{ $pc->id }}">{{ $pc->cat_name }}</option>
                        @endforeach
                    </select>
                    @if ($errors->has("category_id"))
                        <span class=" form-text required">{{__($errors->first('category_id'))}}</span>
                    @else
                        <span class="form-text" id="heading_titlereply_to_email_validate" ></span>
                    @endif
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-2 col-form-label">Subcategory<span class="lblSpan">*</span></label>
                <div class="col-lg-4">
                    <select class="form-control" name="sub_category_id" id="sub_category_id">
                    </select>
                    @if ($errors->has("sub_category_id"))
                        <span class="form-text required">{{__($errors->first('sub_category_id'))}}</span>
                    @else
                        <span class="form-text" id="heading_titlereply_to_email_validate" ></span>
                    @endif
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-2 col-form-label">Description</label>
                <div class="col-lg-4">
                    <textarea name="description" class="form-control"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-2 col-form-label">Price<span class="lblSpan">*</span></label>
                <div class="col-lg-4">
                    <input type="text" name="price" class="form-control" id="price"/>
                    @if ($errors->has("price"))
                        <span class="form-text required">{{__($errors->first('price'))}}</span>
                    @else
                        <span class="form-text" id="heading_titlereply_to_email_validate" ></span>
                    @endif
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-2 col-form-label">Image</label>
                <div class="col-lg-4">
                    <input type="file" name="product_image" id="product_image"/>
                    @if ($errors->has("product_image"))
                        <span class="form-text required">{{__($errors->first('product_image'))}}</span>
                    @else
                        <span class="form-text" id="heading_titlereply_to_email_validate" ></span>
                    @endif
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-2 col-form-label">Status</label>
                <div class="col-lg-4">
                    <input type="checkbox" name="status" value="1">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-lg-4">
                    <input type="submit" class="btn btn-success" id="submit_btn" value="Save"/>
                    <a href="{{ route('home') }}" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </form>
    </div> 
</div>
@endsection

@push('footerJs')
<script type="text/javascript">
    $(document).ready(function(){
        $(document).on("change","#category_id", function() {
            var category_id = $(this).val();
            $.ajax({
                url: '{{ route("product.subcategory.list") }}',
                type: 'GET',
                data: {"category_id": category_id, "_token": "{{ csrf_token() }}"},
                success: function (data) {
                    console.log(data.htmlData);
                    if( data.status == true ) {
                        $("#sub_category_id").html(data.htmlData);
                    }
                }
            });
        });
    });
</script>
@endpush