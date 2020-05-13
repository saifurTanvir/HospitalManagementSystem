@extends('SuperAdminLayouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Invoice No: {{$invoice[0]->invoiceNo}}
                    <a href="{{route('superAdmin.patient.accounts.edit', $invoice[0]->invoiceNo)}}" class="btn btn-dark" style="float: right; color: white;">Edit Discount</a></h6>
                </div>
                <div class="card-body">
                    <table width="100%" class="table table-hover">
                        <table width="100%" class="table table-hover">
                            <tr>
                                <td colspan="2" style="color:green;">
                                    <center>
                                        Discount Information
                                    </center>
                                </td>
                            </tr>
                            <tr class="row">
                                <td class="col-4">Discount Percentage</td>
                                <td class="col-4">{{$invoice[0]->discount}}%</td>

                            </tr>
                            <tr class="row">
                                <td class="col-4">Discount Amount</td>
                                <td class="col-4">{{(((float)$invoice[0]->discount/100) * (float)$invoice[0]->totalCost)}} </td>

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
                                    <td>
                                        {{$invoice[0]->netAmount}} Taka
                                    </td>
                                </tr>
                                <tr>
                                    <td>Paid</td>
                                    <td>
                                        {{$invoice[0]->PaidAmount ?? '0.0'}}  Taka
                                    </td>
                                </tr>
                                <tr>
                                    <td>Due</td>
                                    <td>
                                        {{$invoice[0]->dueAmount}} Taka
                                    </td>
                                </tr>
                            </table>
                    </table>
                </div>
            </div>
        </div>




@endsection
