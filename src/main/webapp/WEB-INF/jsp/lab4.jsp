<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 4</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function cycle1() {
            var startValue;
            var stepValue;
            var endValue;

            if (document.getElementById('start1r1').checked) {startValue = document.getElementById('start1r1').value}
            else if (document.getElementById('start1r2').checked) {startValue = document.getElementById('start1r2').value}
            else if (document.getElementById('start1r3').checked) {startValue = document.getElementById('start1r3').value}

            if (document.getElementById('step1r1').checked) {stepValue = document.getElementById('step1r1').value}
            else if (document.getElementById('step1r2').checked) {stepValue = document.getElementById('step1r2').value}
            else if (document.getElementById('step1r3').checked) {stepValue = document.getElementById('step1r3').value}

            if (document.getElementById('end1r1').checked) {endValue = document.getElementById('end1r1').value}
            else if (document.getElementById('end1r2').checked) {endValue = document.getElementById('end1r2').value}
            else if (document.getElementById('end1r3').checked) {endValue = document.getElementById('end1r3').value}

            var Alltext = "";
            for(var i=startValue; i>=endValue; i -= stepValue) {
                Alltext+=i + " ";
            }
            document.getElementById("area1" + "s").value = Alltext;
        }

        function cycle(start, step, end) {
            var Alltext = "";
            if (start < end) {
                for (var i = start; i <= end; i += step) {
                    Alltext += i + " ";
                }
            } else {
                for (var i = end; i >= start; i -= step) {
                    Alltext +=i + " ";
                }
            }
            return Alltext;
        }

        function fillArrea(number) {

            var startValue;
            var stepValue;
            var endValue;

            if (number == 1){
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
            else if (number == 2) {
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
            else if (number == 3) {

            }
            else {

            }

            var text = cycle(startValue, stepValue, endValue);

            if (number == 2) {
                document.getElementById("area2").value = text;
            }
            document.getElementById("area" + number).value = text;
        }
    </script>
</head>
<body>
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
                <div class="col-sm-1"><br><br><button type="button" onclick="cycle1()" class="btn btn-primary">Start</button></div>
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
                <div class="col-sm-1"><br><br><button type="button" onclick="fillArrea(2)" class="btn btn-primary">Start</button></div>
                <div class="col-sm-11">

                    <div class="form-group">
                        <textarea class="form-control" rows="5" id="area2"></textarea>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
