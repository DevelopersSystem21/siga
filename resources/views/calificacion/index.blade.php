@extends('layouts.bootstrap')
<style>
    
.vertical-text {
  font-weight: 400;
  writing-mode: vertical-lr;
  transform: rotate(180deg); 
}

.nowrap {
  white-space: nowrap;
}
.table-responsive .table-bordered td,.table-responsive .table-bordered th{
    border: 1px solid #0d6efd;
}
</style>
@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Calificacion</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="row d-flex justify-content-between align-items-center pr-3">
                <div class="col-4">
                    <form>
                        <div class="mb-3">
                          <input type="email" class="form-control" id="exampleInputEmail1"placeholder="Buscar">
                        </div>
                      </form>
                </div>
                <div class="col-4 d-flex justify-content-end mr-3">
                    <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                        <i class="fa fa-circle-plus" aria-hidden="true"></i>Agregar calificacion</button>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th rowspan="3">N°</th>
                        <th rowspan="3" class="nowrap">STUDENTS' FULL NAME</th>
                        <th rowspan="3">TELEFONO</th>
                        <th colspan="4" rowspan="2">attendance</th>
                        <th colspan="19">evaluation</th>
                        <th colspan="5">sumary</th>
                        <th rowspan="3" class="vertical-text">FINAL<br> AVARAGE</th>
                    </tr>
                    <tr>
                        <td colspan="4">reading</td>
                        <td rowspan="2" class="vertical-text">avarage</td>
                        <td colspan="4">writing</td>
                        <td rowspan="2" class="vertical-text">avarage</td>
                        <td colspan="4">speaking</td>
                        <td rowspan="2" class="vertical-text">avarage</td>
                        <td colspan="4">listering</td>
                        <td rowspan="2" class="vertical-text">avarage</td>
                        <td rowspan="2">D.E.</td>
                        <td rowspan="2">O.E.</td>
                        <td rowspan="2">M.E.</td>
                        <td rowspan="2">M.F.</td>
                    </tr>
                    <tr>
                        <td class="vertical-text">DAY 1</td>
                        <td class="vertical-text">DAY 2</td>
                        <td class="vertical-text">DAY 3</td>
                        <td class="vertical-text">DAY 4</td>
                        <td class="vertical-text">week 1</td>
                        <td class="vertical-text">week 2</td>
                        <td class="vertical-text">week 3</td>
                        <td class="vertical-text">week 4</td>
                        <td class="vertical-text">week 1</td>
                        <td class="vertical-text">week 2</td>
                        <td class="vertical-text">week 3</td>
                        <td class="vertical-text">week 4</td>
                        <td class="vertical-text">Week 1</td>
                        <td class="vertical-text">Week 2</td>
                        <td class="vertical-text">Week 3</td>
                        <td class="vertical-text">Week 4</td>
                        <td class="vertical-text">Week 1</td>
                        <td class="vertical-text">Week 2</td>
                        <td class="vertical-text">Week 3</td>
                        <td class="vertical-text">Week 4</td>
                    </tr>
                    <tr>
                        <td contenteditable="true">1</td>
                        <td contenteditable="true">Barreto Araucano David</td>
                        <td contenteditable="true">956789435</td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td ></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td ></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td ></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td contenteditable="true"></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
@stop