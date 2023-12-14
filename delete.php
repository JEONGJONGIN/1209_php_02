<?php
require_once('funcs.php');

// GET 파라미터로 전달된 ID 값 가져오기
$id = $_GET['id'];

// DB 연결
try {
  $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost', 'root', '');
} catch (PDOException $e) {
  exit('DBConnectError:' . $e->getMessage());
}

// DELETE 쿼리 실행
$stmt = $pdo->prepare("DELETE FROM gs_am_table WHERE id = :id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

// 삭제 성공 여부에 따라 메시지 표시
if ($status == false) {
  $error = $stmt->errorInfo();
  exit("ErrorQuery:" . $error[2]);
} else {
  echo "ID: $id 레코드가 삭제되었습니다.";
  header('location: select.php');
}

?>
