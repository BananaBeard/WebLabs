<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 5</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#test").click(function(){
                $.get("/sort", {method: document.getElementById("sel1").value, list: document.getElementById("area1").value}, function(data,status){
                    document.getElementById("area1").value = data;
                });
            });
        });

        //        function sortText() {
        //            var list =
        //            {
        //                method: "1",
        //                list: document.getElementById("area1").value
        //            }
        //            $.ajax({
        //                type: "GET",
        //                dataType: 'json',
        //                url: "sort.html",
        //                data: {method: "1", list: document.getElementById("area1").value},
        //                success: function(data) {
        //                    $('#time').html(data);
        //                }
        //            });
        //        }
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8"><div class="panel panel-default">
            <div class="panel-heading">Сортування</div>
            <div class="panel-body">
                <div class="form-group">
                    <label for="sel1">Метод сортування:</label>
                    <select class="form-control" id="sel1">
                        <option>1. Метод вибору.</option>
                        <option>2. Метод вставки.</option>
                        <option>3. Випадковий метод.</option>
                        <option>4. Бульбашковий метод.</option>
                        <option>5. Швидкий метод.</option>
                        <option>6. Свій метод.</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-1"><button type="button" id="test" class="btn btn-primary">Start</button></div>
                <div class="col-md-9">
                    <div class="form-group">
                        <textarea class="form-control" rows="1" id="area1" name="area1"></textarea>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="alert alert-danger">
                        <strong>Увага!</strong> Bogosort(випадкове сортування) може виконуватися неймовірно довго.
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        </div>
        <div class="col-md-2"></div>
    </div>

</div>
</body>
</html>
