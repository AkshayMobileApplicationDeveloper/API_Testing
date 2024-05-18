<?php



header('Content-Type: application/json');

/***************************************
$data = array('key' => 'value');
header('Content-Type: application/json');
echo json_encode($data);
***************** */


header('Access-Control-Allow-Origin: *');


/***************************************
 * header('Access-Control-Allow-Origin: https://example.com');
 ***************** */


header('Access-Control-Allow-Methods: GET, POST, PUT,DELETE');



header('Access-Control-Allow-Headers: Content-Type, X-Custom-Header,Access-Control-Allow-Header,X-Requested-With, Authorization');


      `require 'connection.php';



$method = $_SERVER['REQUEST_METHOD'];


switch ($method) {
    case 'GET':
        $sql = "SELECT *FROM user ";
        $result = $conn->query($sql);
        $uses = [];

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $uses[] = $row;
            }
        }
        echo json_encode($uses);
        break;

    case 'POST':
        $data = json_decode(file_get_contents('php://input'), true);
        $name = $data['name'];
        $email = $data['email'];
        $password = $data['password'];

        $sql = "INSERT INTO user (name , email, password) VALUES ('$name','$email','$password')";

        if ($conn->query($sql) === TRUE) {
            echo json_encode(['Message' => 'user successfully inserted']);
        }

        break;

    case 'PUT':
        $data = json_decode(file_get_contents('php://input'), true);
        $user_id = $data['user_id'];
        $name = $data['name'];
        $email = $data['email'];
        $password = $data['password'];

        $sql = "UPDATE user SET name ='$name' , email ='$email', password ='$password' WHERE id='$user_id'";

        if ($conn->query($sql) === TRUE) {
            echo json_encode(['Message' => 'User data successfully updated']);
        } else {
            echo json_encode(['error' => 'User data does not  updated' . $conn->error]);
        }

        break;


    case 'DELETE':
        $data = json_decode(file_get_contents('php://input'), true);
        $user_id = $data['user_id'];
        $name = $data['name'];
        $email = $data['email'];
        $password = $data['password'];

        $sql = "DELETE FROM user WHERE id='$user_id'";

        if ($conn->query($sql) === TRUE) {
            echo json_encode(['Message' => 'User data deleted']);
        } else {
            echo json_encode(['error' => 'User data does not  deleted' . $conn->error]);
        }
        break;

    default:
        http_response_code(405);
        echo json_encode(['error' => 'User data does not  deleted' . $conn->error]);
        break;

}

?>