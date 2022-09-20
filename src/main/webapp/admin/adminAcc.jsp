<%-- 
    Document   : adminAcc
    Created on : 20 Sep 2022, 18:13:35
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GoCheeta - Administrator</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">        
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
	<div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
		<div class="p-4 pt-5">
                    <a href="#" class="img logo rounded-circle mb-5" style="background-image: url(images/user.jpg);"></a>
                    <div style="text-align: center;">
                        <a href="#">Abdulaziz Roshan</a>
                        <p>abdulazizroshan@gmail.com</p>
                    </div>
                    <ul class="list-unstyled components mb-5">
                        <li>
                            <a href="admin.jsp">Home</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li>
                            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">User Accounts</a>
                            <ul class="collapse list-unstyled" id="pageSubmenu">
                              <li>
                                  <a href="customerAcc.jsp">Customers</a>
                              </li>
                              <li>
                                  <a href="driverAcc.jsp">Drivers</a>
                              </li>
                              <li class="nav-item active">
                                  <a>Administrators</a>
                              </li>
                            </ul>
                        </li>
                        <li>
                            <a href="bookings.jsp">Bookings</a>
                        </li>
                        <li>
                            <a href="vehicles.jsp">Vehicles</a>
                        </li>
                        <li>
                            <a href="branches.jsp">Branches</a>
                        </li>
                        <li>
                             <a href="#">Sales</a>
                        </li>
                    </ul>

                    <div class="footer">
                        <a href="https://www.linkedin.com/in/abdulaziz-roshan-013938229/" target="_blank">Abdulaziz Roshan</a>
                        <p>ST20251852 | NG/BSCSD/07/01</p>
                    </div>
                </div>
            </nav>
        
            <!-- Page Content  -->
            <div id="content" class="p-4 p-md-5" style="align-content: center; background-image: url(images/taxibg.jpg); background-repeat: no-repeat; background-size: cover; height: 500px;">
                <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 4rem; border-radius: 10px">
              <div class="container-fluid">
                <button type="button" id="sidebarCollapse" class="btn btn-primary">
                  <i class="fa fa-bars"></i>
                  <span class="sr-only">Toggle Menu</span>
                </button>
                <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <h4 class="mb-4" style="padding-top: 1.5rem; padding-left: 1rem">GoCheeta - Admins</h4>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="admin.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="customerAcc.jsp">Accounts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="bookings.jsp">Bookings</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="vehicles.jsp">Vehicles</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="branches.jsp">Branches</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./remove.jsp">Logout</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
                
            <table class="table table-striped table-hover" style="background-color: white">
                <tbody id="tblAdmins">
                    <thead>
                        <tr>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Name</th>
                            <th>Branch</th>
                        </tr>
                    </thead>
                </tbody>
            </table>
             
            <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
            <script>
                addEventListener('load', (event) => {
                    getAdmins();
                }); 
                const url = "http://localhost:8080/gocheeta-rest/admins/";
                function getAdmins() {
                    const options = {
                        method: "GET"
                    };
                    fetch(url, options)
                        .then(res => res.json()) //covert response to json
                        .then(data => {
                        console.log(data)
                        admins = data;
                        var html;
                        for (var i=0; i<admins.length; i++) {
                            html = html + `<tr>
                                    <td>`+admins[i].email+`</td>
                                    <td>`+admins[i].password+`</td>
                                    <td>`+admins[i].name+`</td>
                                    <td>`+admins[i].branch+`</td>
                                    </tr>`;
                        }
                        $("#tblAdmins").html(html);
                     });  
                }
            </script>
        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
</html>