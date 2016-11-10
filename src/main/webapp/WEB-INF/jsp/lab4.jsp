<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 4</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function fillArea(number) {

            var startValue;
            var stepValue;
            var endValue;

            if (parseInt(number) == 1){
                if (document.getElementById('start1r1').checked) {startValue = document.getElementById('start1r1').value}
                else if (document.getElementById('start1r2').checked) {startValue = document.getElementById('start1r2').value}
                else if (document.getElementById('start1r3').checked) {startValue = document.getElementById('start1r3').value}

                if (document.getElementById('step1r1').checked) {stepValue = document.getElementById('step1r1').value}
                else if (document.getElementById('step1r2').checked) {stepValue = document.getElementById('step1r2').value}
                else if (document.getElementById('step1r3').checked) {stepValue = document.getElementById('step1r3').value}

                if (document.getElementById('end1r1').checked) {endValue = document.getElementById('end1r1').value}
                else if (document.getElementById('end1r2').checked) {endValue = document.getElementById('end1r2').value}
                else if (document.getElementById('end1r3').checked) {endValue = document.getElementById('end1r3').value}
            }
            else if (parseInt(number) == 2) {
                if (document.getElementById('start2r1').checked) {startValue = document.getElementById('start2r1').value}
                else if (document.getElementById('start2r2').checked) {startValue = document.getElementById('start2r2').value}
                else if (document.getElementById('start2r3').checked) {startValue = document.getElementById('start2r3').value}

                if (document.getElementById('step2r1').checked) {stepValue = document.getElementById('step2r1').value}
                else if (document.getElementById('step2r2').checked) {stepValue = document.getElementById('step2r2').value}
                else if (document.getElementById('step2r3').checked) {stepValue = document.getElementById('step2r3').value}

                if (document.getElementById('end2r1').checked) {endValue = document.getElementById('end2r1').value}
                else if (document.getElementById('end2r2').checked) {endValue = document.getElementById('end2r2').value}
                else if (document.getElementById('end2r3').checked) {endValue = document.getElementById('end2r3').value}
            }
            else if (parseInt(number) == 3) {
                if (document.getElementById('start3r1').checked) {startValue = document.getElementById('start3r1').value}
                else if (document.getElementById('start3r2').checked) {startValue = document.getElementById('start3r2').value}
                else if (document.getElementById('start3r3').checked) {startValue = document.getElementById('start3r3').value}

                if (document.getElementById('step3r1').checked) {stepValue = document.getElementById('step3r1').value}
                else if (document.getElementById('step3r2').checked) {stepValue = document.getElementById('step3r2').value}
                else if (document.getElementById('step3r3').checked) {stepValue = document.getElementById('step3r3').value}

                if (document.getElementById('end3r1').checked) {endValue = document.getElementById('end3r1').value}
                else if (document.getElementById('end3r2').checked) {endValue = document.getElementById('end3r2').value}
                else if (document.getElementById('end3r3').checked) {endValue = document.getElementById('end3r3').value}
            }
            else {
                if (document.getElementById('start4r1').checked) {startValue = document.getElementById('start4r1').value}
                else if (document.getElementById('start4r2').checked) {startValue = document.getElementById('start4r2').value}
                else if (document.getElementById('start4r3').checked) {startValue = document.getElementById('start4r3').value}

                if (document.getElementById('step4r1').checked) {stepValue = document.getElementById('step4r1').value}
                else if (document.getElementById('step4r2').checked) {stepValue = document.getElementById('step4r2').value}
                else if (document.getElementById('step4r3').checked) {stepValue = document.getElementById('step4r3').value}

                if (document.getElementById('end4r1').checked) {endValue = document.getElementById('end4r1').value}
                else if (document.getElementById('end4r2').checked) {endValue = document.getElementById('end4r2').value}
                else if (document.getElementById('end4r3').checked) {endValue = document.getElementById('end4r3').value}
            }

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
            document.getElementById("area"+number).value = Alltext;
        }
    </script>
</head>
<body style="background-color:#009BDE">
<div class="panel-group">
    <div class="panel panel-default">
        <div class="panel-heading">Task 1</div>
        <div class="panel-body">

            <div class="row">
                <div class="col-sm-4">
                    Початок
                    <div class="radio">
                        <label><input type="radio" name="start" id="start1r1" value="200">200</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="start" id="start1r2" value="150">150</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="start" id="start1r3" value="120">120</label>
                    </div>

                </div>
                <div class="col-sm-4">
                    Крок
                    <div class="radio">
                        <label><input type="radio" name="step" id="step1r1" value="1">1</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="step" id="step1r2" value="2">2</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="step" id="step1r3" value="3">3</label>
                    </div>

                </div>
                <div class="col-sm-4">
                    Кінець
                    <div class="radio">
                        <label><input type="radio" name="end" id="end1r1" value="0"> 0</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="end" id="end1r2" value="1"> 1</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="end" id="end1r3" value="-1">-1</label>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"><br><br><button type="button" onclick="fillArea(1)" class="btn btn-primary">Start</button></div>
                <div class="col-sm-11">

                    <div class="form-group">
                        <textarea class="form-control" rows="5" id="area1"></textarea>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">Task 2</div>
        <div class="panel-body">

            <div class="row">
                <div class="col-sm-4">
                    Початок
                    <div class="radio">
                        <label><input type="radio" name="start" id="start2r1" value="0">0</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="start" id="start2r2" value="1">1</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="start" id="start2r3" value="2">2</label>
                    </div>

                </div>
                <div class="col-sm-4">
                    Крок
                    <div class="radio">
                        <label><input type="radio" name="step" id="step2r1" value="1">1</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="step" id="step2r2" value="10">10</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="step" id="step2r3" value="100">100</label>
                    </div>

                </div>
                <div class="col-sm-4">
                    Кінець
                    <div class="radio">
                        <label><input type="radio" name="end" id="end2r1" value="99">99</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="end" id="end2r2" value="199">199</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="end" id="end2r3" value="999">999</label>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"><br><br><button type="button" onclick="fillArea(2)" class="btn btn-primary">Start</button></div>
                <div class="col-sm-11">

                    <div class="form-group">
                        <textarea class="form-control" rows="5" id="area2"></textarea>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">Task 3</div>
        <div class="panel-body">

            <div class="row">
                <div class="col-sm-4">
                    Початок
                    <div class="radio">
                        <label><input type="radio" name="start" id="start3r1" value="1">1</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="start" id="start3r2" value="0">0</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="start" id="start3r3" value="-1">-1</label>
                    </div>

                </div>
                <div class="col-sm-4">
                    Крок
                    <div class="radio">
                        <label><input type="radio" name="step" id="step3r1" value="1">1</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="step" id="step3r2" value="2">2</label>
                    </div>
                </div>
                <div class="col-sm-4">
                    Кінець
                    <div class="radio">
                        <label><input type="radio" name="end" id="end3r1" value="-99">-99</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="end" id="end3r2" value="0">0</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="end" id="end3r3" value="99">99</label>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"><br><br><button type="button" onclick="fillArea(3)" class="btn btn-primary">Start</button></div>
                <div class="col-sm-11">

                    <div class="form-group">
                        <textarea class="form-control" rows="5" id="area3"></textarea>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">Task 4</div>
        <div class="panel-body">

            <div class="row">
                <div class="col-sm-4">
                    Початок
                    <div class="radio">
                        <label><input type="radio" name="start" id="start4r1" value="-100">-100</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="start" id="start4r2" value="0">0</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="start" id="start4r3" value="100">100</label>
                    </div>

                </div>
                <div class="col-sm-4">
                    Крок
                    <div class="radio">
                        <label><input type="radio" name="step" id="step4r1" value="2">2</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="step" id="step4r2" value="3">3</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="step" id="step4r3" value="4">4</label>
                    </div>
                </div>
                <div class="col-sm-4">
                    Кінець
                    <div class="radio">
                        <label><input type="radio" name="end" id="end4r1" value="-2">-2</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="end" id="end4r2" value="0">0</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="end" id="end4r3" value="2">2</label>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"><br><br><button type="button" onclick="fillArea(4)" class="btn btn-primary">Start</button></div>
                <div class="col-sm-11">

                    <div class="form-group">
                        <textarea class="form-control" rows="5" id="area4"></textarea>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
