<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Product</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>
    <style>
        body{
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            background-size: cover;
            font-family: Poppins;
        }
    </style>

    <body>
        <header>
            <nav
                class="navbar navbar-expand-lg navbar-dark bg-dark"
            >
                <div class="container">
                
                
                <img
                    src="images/tj.jpg"
                    class=" rounded-circle"
                    alt=""
                    height="40"
                    width="40"
                        />
                    <div class="collapse navbar-collapse" id="collapsibleNavId">
                        <ul class="navbar-nav me-auto mt-2 mt-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" href="#" aria-current="page"
                                    >Home
                                    <span class="visually-hidden">(current)</span></a
                                >
                            </li>
                            <li class="nav-item dropdown">
                                <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="dropdownId"
                                    data-bs-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    >Categories</a
                                >
                                <div
                                    class="dropdown-menu"
                                    aria-labelledby="dropdownId"
                                >
                                <a class="dropdown-item" href="#">Automotive</a>
                                <a class="dropdown-item" href="#">Beauty</a>
                                <a class="dropdown-item" href="#">Books</a>
                                <a class="dropdown-item" href="#">Clothing</a>
                                <a class="dropdown-item" href="#">Electronics</a>
                                <a class="dropdown-item" href="#">Food</a>
                                <a class="dropdown-item" href="#">Furniture</a>
                                <a class="dropdown-item" href="#">Gardening</a>
                                <a class="dropdown-item" href="#">Healthcare</a>
                                <a class="dropdown-item" href="#">Kitchen</a>
                                <a class="dropdown-item" href="#">Sports</a>
                                <a class="dropdown-item" href="#">Toys</a>
                                
                                </div>
                            </li>
                        </ul>
                        <form class="d-flex my-2 my-lg-0 mx-2">
                            <input
                                class="form-control me-sm-2"
                                type="text"
                                placeholder="Search"
                            />
                            <button
                                class="btn btn-outline-success my-2 my-sm-0"
                                type="submit"
                            >
                                Search
                            </button>
                        </form>
                        <button type="button" class="btn" onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="images/shoppingcarticon.webp" alt="Button Image" height="40" width="40" />
                        </button>
                        <button type="button" class="btn"  onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="images/usericon.jpg" alt="Button Image" height="40" width="40" />
                        </button>
                    </div>
                </div>
            </nav>
            
        </header>
        <main>
            <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
                <ol class="carousel-indicators">
                    <li
                        data-bs-target="#carouselId"
                        data-bs-slide-to="0"
                        class="active"
                        aria-current="true"
                        aria-label="First slide"
                    ></li>
                    <li
                        data-bs-target="#carouselId"
                        data-bs-slide-to="1"
                        aria-label="Second slide"
                    ></li>
                    <li
                        data-bs-target="#carouselId"
                        data-bs-slide-to="2"
                        aria-label="Third slide"
                    ></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img
                            src="images/cookies.jpg"
                            class="w-100 d-block"
                            alt="First slide"
                            height="670"

                        />
                    </div>
                    <div class="carousel-item">
                        <img
                            src="images/shoes.jpg"
                            class="w-100 d-block"
                            alt="Second slide"
                            height="670"
                        />
                    </div>
                    <div class="carousel-item">
                        <img
                            src="images/sofa.jpg"
                            class="w-100 d-block"
                            alt="Third slide"
                            height="670"
                        />
                    </div>
                </div>
                <button
                    class="carousel-control-prev"
                    type="button"
                    data-bs-target="#carouselId"
                    data-bs-slide="prev"
                >
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button
                    class="carousel-control-next"
                    type="button"
                    data-bs-target="#carouselId"
                    data-bs-slide="next"
                >
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <div
                class="container mt-3"
                style="background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 8px 32px 0 rgba(0, 0, 3, 0.37);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.29);
            
            padding: 20px;
            text-align: center;">
            
            <h2 class=""   style="text-align: center; color: white;">Categories</h2>
                <div
                    class="row justify-content-center align-items-center "
                >
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://as1.ftcdn.net/v2/jpg/02/71/52/04/1000_F_271520480_kLKjlmiRHvV8tX0mvGhUNIY1drgmEZ3o.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Automative</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://thumbs.dreamstime.com/b/cream-neon-icon-elements-women-s-accessories-set-simple-websites-web-design-mobile-app-info-graphics-dark-gradient-151367347.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Beauty</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://i.pinimg.com/736x/ac/b5/2c/acb52c61be9fbbf8bc14256cbdaa7d0d.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Books</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://i.pinimg.com/736x/ee/ca/8e/eeca8e559c83f8988116dc6565dad1d8.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Clothing</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTA0L2ZyZWVpbWFnZXNjb21wYW55X3NpbXBsZV9saW5lX25lb25fb2ZfY29tcHV0ZXJfaWNvbl9pbl90aGVfc3R5bF9kMjg4NWRlMC01MTRhLTQ2YzktOGM4MC02MjY3ODNjYTg5ZTZfMS5qcGc.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Electronics</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://as1.ftcdn.net/v2/jpg/02/49/13/92/1000_F_249139286_M99CAMRTPC84D4H300wK5CnHXQ8ccdbp.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Food</h2></div>
                        </button>
                        
                    </div>
                    
                </div>
                
                <div
                    class="row justify-content-center align-items-center "
                >
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://static.vecteezy.com/system/resources/previews/020/377/648/non_2x/furniture-table-lamp-neon-glow-icon-illustration-vector.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Furniture</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://img.freepik.com/premium-vector/flower-pot-neon-sign-gardening-agriculture-concept_98480-402.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Gardening</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://img.freepik.com/premium-vector/bright-luminous-pink-medical-digital-medical-neon-sign-pharmacy-hospital-store-beautiful-shiny-with-stethoscope-phonendoscope-black-background-vector-illustration_549897-3000.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Healthcare</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://img.freepik.com/premium-vector/multicooker-neon-sign-glowing-icon-kitchen-appliances-vector-illustration-design-cooking-concept_98480-2521.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Kitchen</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://static.vecteezy.com/system/resources/previews/020/548/197/non_2x/footwear-fitness-sport-neon-glow-icon-illustration-vector.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Sports</h2></div>
                        </button>
                        
                    </div>
                    <div class="col " style="text-align: center;">
                        <button type="button" class="btn " onclick="window.location.href='login.html';">
                            <img  class="rounded-circle" src="https://as1.ftcdn.net/v2/jpg/02/71/16/76/1000_F_271167667_4prlbxlZfHTiJ2BgiOCfG2zaItZrgK5b.jpg" alt="Button Image" height="100" width="100 " />
                            <div><h2 style="color: white;">Toys</h2></div>
                        </button>
                        
                    </div>
                    
                </div>
                
            </div>

            
           
            <div 
                class="container mt-3"
                style="background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 8px 32px 0 rgba(0, 0, 3, 0.37);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.29);
            
            padding: 20px;
            text-align: center;">
            >
            <div
                class="container"
            >
            <h2  class="mt-2" style="text-align:  center; color: white;">Our Featured Product</h2>
                <div
                    class="row justify-content-center align-items-center g-2"
                >
                    <div class="col">
                        <div class="card">
                            <img class="card-img-top" src="images/skincare.jpg" alt="Title" />
                            <div class="card-body">
                                <h4 class="card-title">Title</h4>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col">
                        <div class="card">
                            <img class="card-img-top" src="images/smartwatch.jpg" alt="Title" />
                            <div class="card-body">
                                <h4 class="card-title">Title</h4>
                                
                            </div>
                        </div>
                        
                    </div>
                    <div class="col">
                        <div class="card">
                            <img class="card-img-top" src="images/cookies.jpg" alt="Title" />
                            <div class="card-body">
                                <h4 class="card-title">Title</h4>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div>
            <div
                class="container mt-2"
            >
                <div
                    class="row justify-content-center align-items-center g-2"
                >
                    <div class="col">
                        <div class="card">
                            <img class="card-img-top" src="images/skincare.jpg" alt="Title" />
                            <div class="card-body">
                                <h4 class="card-title">Title</h4>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col">
                        <div class="card">
                            <img class="card-img-top" src="images/smartwatch.jpg" alt="Title" />
                            <div class="card-body">
                                <h4 class="card-title">Title</h4>
                                
                            </div>
                        </div>
                        
                    </div>
                    <div class="col">
                        <div class="card">
                            <img class="card-img-top" src="images/cookies.jpg" alt="Title" />
                            <div class="card-body">
                                <h4 class="card-title">Title</h4>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div>
            </div>
            
            
            
        </main>
        <footer>
            <!-- place footer here -->
        </footer>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
    