<?php
//file name:index.php
//description: This file runs all of the files in this project.

require_once ("application/config.php");

//load autoloader
require_once ("vendor/autoload.php");

$book_controller = new BookController();
$index_controller = new IndexController();
$cart_controller = new CartController();
$user_controller = new UserController();

//set default values
$controller = "index";
$action = NULL;
$para = NULL;

//retrieve values if they are there
if (isset($_GET['controller']) && !(empty($_GET['controller'])))
    $controller = $_GET['controller'];

if (isset($_GET['action']) && !(empty($_GET['action'])))
    $action = $_GET['action'];

if (isset($_GET['para']) && !(empty($_GET['para'])))
    $para = $_GET['para'];

//determine which action to take
if ($controller === 'index') {
    $index_controller->index();
} else if ($controller === "book") {
    if ($action == "list") {
        $book_controller->index();
    } elseif ($action == "details") {
        try {
            if ($para == NULL) {
                throw new ParameterMissingException("Parameter is missing.");
            } else {
                $book_controller->detail($para);
            }
        } catch (ParameterMissingException $e) {
            $book_controller->error($e->getMessage());
        }
    } elseif ($action == "search") {
        $book_controller->search();
    } elseif ($action == "addform") {
        $book_controller->addBookForm();
    } elseif ($action == "add") {
        $book_controller->addBook();
    } elseif ($action == "editform") {
        try {
            if ($para == NULL) {
                throw new ParameterMissingException("Parameter is missing.");
            } else {
                $book_controller->editBookForm($para);
            }
        } catch (ParameterMissingException $e) {
            $book_controller->error($e->getMessage());
        }
    } elseif ($action == "edit") {
        $book_controller->editBook($para);
    } elseif ($action == "delete") {
        try {
            if ($para == NULL) {
                throw new ParameterMissingException("Parameter is missing.");
            } else {
                $book_controller->deleteBook($para);
            }
        } catch (ParameterMissingException $e) {
            $book_controller->error($e->getMessage());
        }
    } elseif ($action == "suggest") {
        try {
            if ($para == NULL) {
                throw new ParameterMissingException("Parameter is missing.");
            } else {
                $book_controller->suggest($para);
            }
        } catch (ParameterMissingException $e) {
            $book_controller->error($e->getMessage());
        }
    } elseif ($action == "error") {
        try {
            if ($para == NULL) {
                throw new ParameterMissingException("Parameter is missing.");
            } else {
                $book_controller->error($para);
            }
        } catch (ParameterMissingException $e) {
            $book_controller->error($e->getMessage());
        }
    } else {
        try {
            throw new Exception("An error occured");
        } catch (Exception $e) {
            $book_controller->error($e->getMessage());
        }
    }
} else if ($controller == "cart") {
    if ($action == "show") {
        $cart_controller->showCart();
    } elseif ($action == "checkout") {
        $cart_controller->checkoutCart();
    } elseif ($action == "add") {
        try {
            if ($para == NULL) {
                throw new ParameterMissingException("Parameter is missing.");
            } else {
                $cart_controller->addToCart($para);
            }
        } catch (ParameterMissingException $e) {
            $book_controller->error($e->getMessage());
        }
    } elseif ($action == "remove") {
        try {
            if ($para == NULL) {
                throw new ParameterMissingException("Parameter is missing.");
            } else {
                $cart_controller->removeFromCart($para);
            }
        } catch (ParameterMissingException $e) {
            $cart_controller->error($e->getMessage());
        }
    } else {
        try {
            throw new Exception("An error occured");
        } catch (Exception $e) {
            $cart_controller->error($e->getMessage());
        }
    }
} else if ($controller == "user") {
    if ($action == "loginform") {
        $user_controller->loginPage();
    } else if ($action == "loginconfirm") {
        $user_controller->confirmLogin();
    } else if ($action == "login") {
        $user_controller->logIn();
    } elseif ($action == "logout") {
        $user_controller->logout();
    } else if ($action == "createform") {
        $user_controller->createForm();
    } else if ($action == "create") {
        $user_controller->create();
    } else if ($action == "editform") {
        $user_controller->editForm();
    } else if ($action == "edit") {
        $user_controller->edit();
    } else if ($action == "editconfirm") {
        $user_controller->editConfirm();
    } else if ($action == "delete") {
        $user_controller->delete();
    } else if ($action == "manage") {
        $user_controller->manage();
    } elseif ($$action == "error") {
        try {
            if ($para == NULL) {
                throw new ParameterMissingException("Parameter is missing.");
            } else {
                $user_controller->error($para);
            }
        } catch (ParameterMissingException $e) {
            $user_controller->error($e->getMessage());
        }
    } else {
        try {
            throw new Exception("An error occured");
        } catch (Exception $e) {
            $user_controller->error($e->getMessage());
        }
    }
} else {
        try {
            throw new Exception("An error occured");
        } catch (Exception $e) {
            $book_controller->error($e->getMessage());
        }
    }


