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

            var Alltext = "";

            if ( stepValue <= 0){
                alert("Wrong step value!");
            } else {
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
        }

        function table1(number) {
            document.getElementById('tablearea').innerHTML = "";
            var result = "<table>";

            for (var i = number; i > 0; --i) {
                result += "<tr>";
                if (i<number) {
                    result += "<td rowspan=" + i + "></td>";
                }
                result += "<td colspan=" + i + "></td></tr>";
            }
            result += "</table>";

            return result;
        }

        function table2(number) {
            document.getElementById('tablearea').innerHTML = "";
            var result = "<table>";

            for (var i = number; i > 0; i--)
            {
                result += "<tr> <td rowspan=" + i + "></td> <td colspan=" + i + "></td> </tr>";
            }
            result += "</table>";

            return result;
        }

        function table3(number) {
            document.getElementById('tablearea').innerHTML = "";
            var result = "<table>";

            for (var i = 0; i < number; i++)
            {
                result += "<tr>";
                if (i%2==0)
                    result += "<td></td>";
                result += "<td colspan=\"2\"></td> <td colspan=\"2\"></td> <td colspan=\"2\"></td>";
                if (i%2==1)
                    result += "<td></td>";
                result += "</tr>";
            }
            result += "<tr style=\"visibility:hidden\">";
            for (i = 0; i < 7; i++)
            {
                result += "<td></td>";
            }
            result += "</tr>";
            result += "</table>";

            return result;
        }

        function table4(number) {
            document.getElementById('tablearea').innerHTML = "";
            var result = "<table>";

            result += "<tr><td rowspan=3></td>";
            for(var i = 0; i < 4; i++)
            {
                for(var j = 1; j <= 3; j++)
                {
                    result += "<td rowspan=" + j + "></td>";
                }
            }
            result += "</tr>";
            num_rowspan=3;
            for(i = 0; i < 6; i++)
            {
                result += "<tr>";
                if(i == 5){num_rowspan = 2;}
                for(j = 0; j < 4; j++)
                {
                    result += "<td rowspan=" + num_rowspan + "></td>";
                }
                if(i==2 || i==5)
                {
                    result +="<td rowspan=" + num_rowspan + ">";
                }
                result += "</tr>";
            }
            result += "<tr><td></td><td></td><td></td><td></td></tr></table>";

            return result;
        }

        function table(number) {
            if (document.getElementById('tab1').checked) {return table1(number);}
            else if (document.getElementById('tab2').checked) {return table2(number);}
            else if (document.getElementById('tab3').checked) {return table3(number);}
            else if (document.getElementById('tab4').checked) {return table4(number);}
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
                                <div class="col-md-3">
                                    <img class="img-responsive" src="/resources/img/table1.jpg" alt="Table1">
                                </div>
                                <div class="col-md-3">
                                    <img class="img-responsive" src="/resources/img/table2.jpg" alt="Table2">
                                </div>
                                <div class="col-md-3">
                                    <img class="img-responsive" src="/resources/img/table3.jpg" alt="Table3">
                                </div>
                                <div class="col-md-3">
                                    <img class="img-responsive" src="/resources/img/table4.jpg" alt="Table4">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="radio">
                                        <label><input type="radio" name="optradio" id="tab1" value="1">Table 1</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio">
                                        <label><input type="radio" name="optradio" id="tab2" value="2">Table 2</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio">
                                        <label><input type="radio" name="optradio" id="tab3" value="3">Table 3</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio">
                                        <label><input type="radio" name="optradio" id="tab4" value="4">Table 4</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="step">Number of rows:</label>
                                <input type="text" class="form-control" id="row">
                            </div>
                            <button type="button" class="btn btn-primary center-block" onclick="document.getElementById('tablearea')
                            .innerHTML = table(parseInt(document.getElementById('row').value))">Start</button>
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
