<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 6</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">
        <%@include file="/resources/css/style.css" %>
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>
        function cycle() {
            var startValue = parseInt(document.getElementById('start').value);
            var endValue = parseInt(document.getElementById('end').value);
            var stepValue = parseInt(document.getElementById('step').value);

            alert(startValue);

            var Alltext = "";

            if (startValue < endValue) {
                for (var i=startValue; i<=endValue; i-=((-1)*stepValue)) {
                    Alltext += i + " ";
                }
            } else {
                for (var i = startValue; i >= endValue; i -= stepValue) {
                    Alltext +=i + " ";
                }
            }
            document.getElementById("area").value = Alltext;
        }

        function populateTable(table, rows, cells, content) {
            if (!table) table = document.createElement('table');
            for (var i = 0; i < rows; ++i) {
                var row = document.createElement('tr');
                for (var j = 0; j < cells; ++j) {
                    row.appendChild(document.createElement('td'));
                    row.cells[j].appendChild(document.createTextNode(content + (j + 1)));
                }
                table.appendChild(row);
            }
            return table;
        }
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">Взаємодія з HTML</div>
                <div class="panel-body">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#cycles">Цикли</a></li>
                        <li><a data-toggle="tab" href="#tables">Таблиці</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="cycles" class="tab-pane fade in active">
                            <h3>Виконати цикл по заданим значенням</h3>
                            <p>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="start">Start:</label>
                                        <input type="text" class="form-control" id="start">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="end">End:</label>
                                        <input type="text" class="form-control" id="end">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="step">Step:</label>
                                        <input type="text" class="form-control" id="step">
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-primary center-block" onclick="cycle()">Start</button>
                            <br>
                            <div class="form-group">
                                <textarea class="form-control" rows="5" id="area"></textarea>
                            </div>
                            </p>
                        </div>
                        <div id="tables" class="tab-pane fade">
                            <h3>Створити таблицю із заданим значенням рядків і стовпців</h3>
                            <p>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="rows">Rows:</label>
                                        <input type="text" class="form-control" id="rows">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="cells">Cells:</label>
                                        <input type="text" class="form-control" id="cells">
                                    </div>
                                </div>

                            </div>
                            <button type="button" class="btn btn-primary center-block" onclick="document.getElementById('tablearea')
                            .appendChild(populateTable(null,
                            parseInt(document.getElementById('rows').value),
                            parseInt(document.getElementById('cells').value), 'Text') )">Start</button>
                            <br>
                            <div id="tablearea"></div>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>

</div>
</body>
</html>
