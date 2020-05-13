@extends('SuperAdminLayouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Invoice No: {{$invoice[0]->invoiceNo}}</h6>
                </div>
                <div class="card-body">
                    <table width="100%" class="table table-hover">
                        <form method="post">
                            @method('PATCH')
                            @csrf
                            <table width="100%" class="table table-hover">
                                <tr>
                                    <td colspan="2" style="color:green;">
                                        <center>
                                            Discount Information
                                        </center>
                                    </td>
                                </tr>
                                <tr class="row">
                                    <td class="col-3">Discount Percentage</td>
                                    <td class="col-4">
                                        <input type="text" onkeyup="f1()" name="discount" id="discount" value="{{$invoice[0]->discount?? old('discount')}}">
                                        <div class="text-danger">
                                            @error('discount')
                                            {{$message}}
                                            @enderror
                                        </div>
                                    </td>
                                    <td class="col-1">%</td>
                                </tr>
                                <tr class="row">
                                    <td class="col-3">Discount Amount</td>
                                    <td class="col-4" id="discountAmount">0.0</td>
                                    <td class="col-1">Taka</td>

                                    <p id="demo" hidden>{{$invoice[0]->totalCost}}</p>
                                    <p id="demo2" hidden>{{$invoice[0]->totalCost}}</p>
                                    <script>
                                        function f1(){
                                                var totalCost = $('#demo').html();
                                                var data = $('#discount').val();
                                                var amount = (parseFloat(data)/100) * totalCost;
                                                $('#discountAmount').html(amount);

                                                var totalCost = $('#demo2').html();
                                                var afterDiscount = totalCost - amount;
                                                $('#netAmount').val(afterDiscount);

                                        }
                                    </script>
                                </tr>
                            </table>


                            <table width="100%" class="table table-hover">
                                <tr>
                                    <td colspan="2" style="color:green;">
                                        <center>
                                            Invoice Information
                                        </center>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Total Bill</td>
                                    <td>
                                        {{$invoice[0]->totalCost}} Taka
                                    </td>
                                </tr>
                                <tr>
                                    <td>Net Bill (After Discount)</td>
                                    <td >
                                        <input type="text" name="netAmount" id="netAmount" value="{{$invoice[0]->netAmount}}"> Taka
                                        <div class="text-danger">
                                            @error('netAmount')
                                            {{$message}}
                                            @enderror
                                        </div>
                                    </td>

                                </tr>
                                <tr>
                                    <td>Paid</td>
                                    <td>
                                        {{$invoice[0]->PaidAmount}}  Taka
                                    </td>
                                </tr>
                                <tr>
                                    <td>Due</td>
                                    <td>
                                        {{$invoice[0]->dueAmount}} Taka
                                    </td>
                                </tr>
                            </table>
                            <button type="submit" class="btn btn-dark" style="margin: auto; display:block">Update</button>
                        </form>
                    </table>
                </div>
            </div>
        </div>




@endsection
