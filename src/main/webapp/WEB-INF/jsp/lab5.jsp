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
                $.get("/test/ajaxtest",function(data,status){
                    alert("Data: " + data + "\nStatus: " + status);
                    document.getElementById("area1").value =data;
                });
            });
        });
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
                    <label for="sel1">Select list:</label>
                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-1"><button type="button" id="test" class="btn btn-primary">Start</button></div>
                <div class="col-md-9">
                    <div class="form-group">
                        <textarea class="form-control" rows="1" id="area1"></textarea>
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
