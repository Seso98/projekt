<?php 
	print '
		<div id="users">
			<table>
				<tbody>';
                $userId = $_SESSION['user']['id'];
				$query  = "SELECT * FROM users";
                $query .= " WHERE id = $userId";
				$result = @mysqli_query($MySQL, $query);
				if($row = @mysqli_fetch_array($result)) {
						print '
						<p><b>First name:</b> ' . $row['firstname'] . '</p>
		                <p><b>Last name:</b> ' . $row['lastname'] . '</p>
		                <p><b>Username:</b> ' . $row['username'] . '</p>';
							$_query  = "SELECT * FROM countries";
							$_query .= " WHERE country_code='" . $row['country'] . "'";
							$_result = @mysqli_query($MySQL, $_query);
							$_row = @mysqli_fetch_array($_result, MYSQLI_ASSOC);
							print '
		                <p><b>Country:</b> ' .$_row['country_name'] . '</p>
		                <p><b>Date:</b> ' . pickerDateToMysql($row['date']) . '</p>
		                <p><a href="index.php?menu=1">Back</a></p>';
				}
			print '
				</tbody>
			</table>
		</div>';
?>

