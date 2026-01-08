<!DOCTYPE html>
<html lang="en">
<?php
include 'sql/db_conn.php';
// $conn = OpenCon();
// $f_nic = $_REQUEST['nic'];
$f_nic='737103749V';
//$nic='526812484V';
//$nic='596660711V';
//echo "<script>alert('$nic')</script>";

$length_nic = strlen($f_nic);
        if($length_nic==12)
        {
            $nic_check=substr($f_nic,2,5).substr($f_nic,8,4);
        }
        else if($length_nic==10)
        {
            $nic_check=substr($f_nic,0,9);
        }
        else
        {
            $nic_check="0";
        }

// echo $nic_check;
        
$sql1 ="SELECT * FROM tbl_famer WHERE nic_check='$nic_check' ";
$result1 = $conn->query($sql1);
$row = $result1->num_rows;

if ($result1->num_rows == 0) {
    echo "<script>alert('Famer not Registered in the System');</script>";
    echo "<script>window.close();</script>";
                            }

else if ($result1->num_rows > 0) {
$sql="SELECT * FROM tbl_famer WHERE nic_check='$nic_check'";
$result = $conn->query($sql);
$famer = mysqli_fetch_assoc($conn->query($sql));
$f_sn=$famer['f_sn'];
}
        
        
?>
<head>

	<meta charset="UTF-8">
	<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="Description" content="Bootstrap Responsive Admin Web Dashboard HTML5 Template">
	<meta name="Author" content="Spruko Technologies Private Limited">
	<meta name="Keywords"
		content="admin,admin dashboard,admin dashboard template,admin panel template,admin template,admin theme,bootstrap 4 admin template,bootstrap 4 dashboard,bootstrap admin,bootstrap admin dashboard,bootstrap admin panel,bootstrap admin template,bootstrap admin theme,bootstrap dashboard,bootstrap form template,bootstrap panel,bootstrap ui kit,dashboard bootstrap 4,dashboard design,dashboard html,dashboard template,dashboard ui kit,envato templates,flat ui,html,html and css templates,html dashboard template,html5,jquery html,premium,premium quality,sidebar bootstrap 4,template admin bootstrap 4" />

	<!-- Title -->
	<title> Department of Agrarian Development</title>

	<!-- Favicon -->
	<link rel="icon" href="assets/img/brand/favicon.png" type="image/x-icon" />

	<!-- Icons css -->
	<link href="assets//css/icons.css" rel="stylesheet">

	<!-- Bootstrap css -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- style css -->
	<link href="assets/css/style.css" rel="stylesheet">

	<!--- Animations css-->
	<link href="assets/css/animate.css" rel="stylesheet">
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../assets/plugins/iconfonts/feather/fonts/feather.css">
<!-- style css -->
<link href="assets/css/style.css" rel="stylesheet">
<link rel="icon" href="assets/img/brand/favicon.png" type="image/x-icon" />

<!-- Icons css -->
<link href="assets/css/icons.css" rel="stylesheet">

<!-- Bootstrap css -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- style css -->
<link href="assets/css/style.css" rel="stylesheet">

<!--- Animations css-->
<link href="assets/css/animate.css" rel="stylesheet">
<!--- Animations css-->
<link href="assets/css/animate.css" rel="stylesheet">
  <!-- Favicon -->
  <link rel="icon" href="assets/img/brand/favicon.png" type="image/x-icon"/>

<!-- Icons css -->
<link href="assets/css/icons.css" rel="stylesheet"> 

</head>

<body>

	<!-- Loader -->
	
	<!-- /Loader -->

	<!-- Page -->
	<div >
			

		<!-- main-content -->
		<div class="container-fuild">
		

			<!-- container -->
			<div class="main-container">

				<!-- breadcrumb -->
				
				<!-- breadcrumb -->
				
				
				<!-- row -->
				<div class="row row-sm">
				    <div class="col-lg-3" style="background-color: #c7ab73;">
						<div class="" >
							<div class="card-body">
								<div class="ps-0">
									<div class="main-profile-overview text-center">
										<img src="data/images/logo.png" alt="logo" width="100" height="150">
										
									</div>
									<!-- main-profile-overview -->
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6" style="background-color: #c7ab73;">
						<div class="" >
							<div class="card-body">
								<div class="ps-0">
									<div class="main-profile-overview text-center">
										<h1 style="text-shadow:1.5px 1.5px #bd7a7a;">Department of Agrarian Development</h1>
													<h2> Agrarian Information System</h2>
													<h3>Farmer (<?php echo $f_sn;?>) Details</h3>
										
									</div>
									<!-- main-profile-overview -->
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3" style="background-color: #c7ab73;" >
						<div class="" >
							<div class="card-body">
								<div class="ps-0">
									<div class="main-profile-overview text-center">
										<img src="data/images/dad_logo.png" alt="logo" width="150" height="150">
										
									</div>
									<!-- main-profile-overview -->
								</div>
							</div>
						</div>
					</div>
					<hr class="mg-y-10">
					<div class="col-lg-3" style="padding-top: 20px; background-color: #ffe6cc;">
						<div class="card" style=" font-size:medium">
							<div class="card-body">
								<div class="ps-0">
									<div class="main-profile-overview">
										<div class="main-img-user profile-user display: flex; justify-content: center; align-items: center;">
											<img alt="" src="img/<?php echo  $famer['f_image']; ?>"><a
												class="fas fa-camera profile-edit" href="JavaScript:void(0);"></a>
										</div>
										<div class="d-flex justify-content-between mg-b-20">
											<div>
											        <?php

                                        			?>
												<h5 class="main-profile-name"><?php echo  $famer['f_name']; ?></h5>
												<p class="main-profile-name-text">Farmer</p>
											</div>
										</div>
										<hr class="mg-y-30">
										<label class="main-content-label tx-13 mg-b-20">Details</label>
										<div class="main-profile-social-list">
											<div class="media">
												<div class="media-icon bg-primary-transparent text-primary">
													<i class="icon ion-ios-contact"></i>
												</div>
												<div class="media-body">
													<span>ID Number</span> <span> <?php echo  $famer['f_sn']; ?>  </span> 
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-success-transparent text-success">
													<i class="icon ion-ios-mail"></i>
												</div>
												<div class="media-body">
													<span>Address</span> <span> <?php echo  $famer['f_address']; ?> </span>
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-info-transparent text-info">
													<i class="icon ion-ios-card"></i>
												</div>
												<div class="media-body">
													<span>NIC Number</span> <span> <?php echo  $famer['f_nic']; ?> </span>
												</div>
											</div>
											<div class="media">
												<div class="media-icon bg-info-transparent text-info">
													<i class="icon ion-ios-call"></i>
												</div>
												<div class="media-body">
													<span>Telephone Number</span> <span> <?php echo  $famer['f_tp']; ?> </span>
												</div>
											</div>
											
										</div>
									</div>
									<br>main-profile-overview
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-9">
						
						<div class="card" >
							<div class="card-body" style="background-color: #f0e8d9;">
								
								<div class="tab-content border border-top-0 p-4 br-dark">
									<div class="tab-pane active" id="home">
										<h4 class="tx-15 text-uppercase mb-3">Land Details</h4>
										<?php
										$sql2="SELECT * FROM tbl_cultivation JOIN tbl_land ON tbl_cultivation.l_id=tbl_land.l_id JOIN tbl_asc ON tbl_land.asc_code=tbl_asc.asc_code JOIN tbl_district ON tbl_asc.dis_id=tbl_district.dis_id WHERE tbl_cultivation.f_sn='$f_sn' AND tbl_cultivation.r_status='1' GROUP BY tbl_cultivation.l_id";
      $result2 = $conn->query($sql2);
										?>
										<table class="table table-responsive ">
										    <thead>
										        <th>Land Number</th>
										        <th>District</th>
										        <th>ASC</th>
										        <th>PLR Number</th>
										        <th>Irrigation</th>
										        <th>Land Extent(Ha)</th>
										    </thead>
											<?php 
											while($cul = mysqli_fetch_assoc($result2)) { ?>
											    
                                                <tr>
                                                <td><?php echo  $cul['l_id']; ?></td>
											    <td><?php echo  $cul['dis_name']; ?></td>
											    <td><?php echo  $cul['asc_name']; ?></td>
												<td><?php echo  $cul['l_plr_no']; ?></td>
												<td><?php echo  $cul['l_irrigation']; ?></td>
												<td><?php echo  $cul['l_extent']; ?></td></tr>
											<?php
												}
												?>
												
											
										</table>
										<div class="m-t-30">
											<hr>
											<div class="">
												<h4 class="tx-15 text-uppercase mb-3">Cultivation Details</h4>
												
												<table class="table table-responsive">
												<thead>
												<th>Season</th>
										        <th>District</th>
										        <th>ASC</th>
										        <th>PLR Number</th>
										        <th>Irrigation</th>
										        <th>Land Extent(Ha)</th>
										        <th>Cultivated Extent(Ha)</th>
										        </thead>
										        
											<?php 
										$sql3="SELECT * FROM tbl_cultivation JOIN tbl_land ON tbl_cultivation.l_id=tbl_land.l_id JOIN tbl_asc ON tbl_land.asc_code=tbl_asc.asc_code JOIN tbl_district ON tbl_asc.dis_id=tbl_district.dis_id WHERE tbl_cultivation.f_sn='$f_sn' AND culti_extent!='0' AND tbl_cultivation.asc_approve='1' AND l_status='1' AND r_status='1' ORDER BY tbl_cultivation.season DESC";
                                        $result3 = $conn->query($sql3);
											while($cul2 = mysqli_fetch_assoc($result3)) { ?>
                                                <tr>
                                                <td><?php if($cul2['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul2['season']; ?></font></td>    
												<td><?php if($cul2['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul2['dis_name']; ?></font></td>
											    <td><?php if($cul2['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul2['asc_name']; ?></font></td>
												<td><?php if($cul2['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul2['l_plr_no']; ?></font></td>
												<td><?php if($cul2['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul2['l_irrigation']; ?></font></td>
												<td><?php if($cul2['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul2['l_extent']; ?></font></td>
												<td><?php if($cul2['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul2['culti_extent']; ?></font></td>
											</tr>
											<?php
												}
												?>
										</table>
											</div>
											<hr>

								<div class="">
									<h4 class="tx-15 text-uppercase mb-3">Subsidy Details</h4>			
									<?php
										$sql2="SELECT * FROM tbl_cashgrant JOIN tbl_asc ON tbl_cashgrant.asc_code=tbl_asc.asc_code 
										JOIN tbl_district ON tbl_asc.dis_id=tbl_district.dis_id 
										WHERE tbl_cashgrant.nic_check='$nic_check' AND cg_status='2' ORDER BY tbl_cashgrant.season DESC";
      									$result2 = $conn->query($sql2);
									?>
										<table class="table table-responsive">
										    <thead>
										        <th>Season</th>
										        <th>Subsidy Type</th>
										        <th>District</th>
										        <th>ASC</th>
										        <th>PLR Number</th>
										        <th>Land Extent(Ha)</th>
												<th>Bank details</th>
										        <th>Amount/Quantity</th>
										        <th>Status</th>

										    </thead>
										<?php 
     										$fuel = "SELECT * FROM tbl_subsidies JOIN tbl_famer ON tbl_famer.f_sn=tbl_subsidies.f_sn 
											JOIN tbl_land ON tbl_land.l_id=tbl_subsidies.l_id 
											JOIN tbl_asc ON tbl_asc.asc_code=tbl_land.asc_code 
											JOIN tbl_district on tbl_district.dis_id=tbl_asc.dis_id 
											WHERE tbl_subsidies.s_type='Fuel' AND tbl_subsidies.f_sn='$f_sn';";
      										$result5 = $conn->query($fuel);
											while($cul = mysqli_fetch_assoc($result2)) { ?>
											    
                                                <tr>
                                                <td><?php if($cul['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul['season']; ?></font></td>    
                                                <td><?php if($cul['season']=="2024/25 Maha"){echo "<font color='blue'>";} ?>Cash Grant</font></td>    
											    <td><?php if($cul['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul['dis_name']; ?></font></td>
											    <td><?php if($cul['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul['asc_name']; ?></font></td>
											    <td><?php if($cul['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul['l_olddos'];?></font></td>
												<td><?php if($cul['season']=="2024/25 Maha"){echo "<font color='blue'>";} echo  $cul['culti_extent']; ?></font></td>
												<!-- bank details -->
												 
												<td>
													<?php echo  $cul['acc_no']; ?></font> <br>
													<?php echo  $cul['bank_code']; ?></font><br>
													<?php echo  $cul['branch_code']; ?></font>
												</td>   
												<!-- status  -->
												<td><?php if($cul['season']=="2024/25 Maha"){echo "<font color='blue'>";} ?>Rs. <?php echo  $cul['amount']; ?></font></td>
												<td><?php if($cul['season']=="2024/25 Maha"){echo "<font color='blue'>";} ?>
													<?php 
														if($cul['bank_reject']=="1"){echo "Rejected From Bank";}
														else{
																if($cul['cg_status']==0)
																{
																	echo "Process";	
																}
																elseif($cul['cg_status']==1)
																{
																	echo "Process";	
																}
																else {
																	if($cul['trance_date']=="" || $cul['trance_date']=="0000-00-00")
																	{
																		if($cul['season']=="2022/23 Maha"){echo "Paid";} 
																		else{echo "Ready to Pay";}
																	} 
																	else { echo  "Deposit on ".$cul['trance_date'];}
																} 
															}
															?></font>			
												</td>
											<?php
												}
											while($cul5 = mysqli_fetch_assoc($result5)) { ?>
											    
                                                <tr>
                                                <td><?php echo  $cul5['s_season']; ?></td>
                                                <td>Fuel</td>    
											    <td><?php echo  $cul5['dis_name']; ?></td>
											    <td><?php echo  $cul5['asc_name']; ?></td>
											    <td></td>
												<td><?php echo  $cul5['s_extent']; ?></td>
												<td><?php echo  $cul5['s_issu']; ?> L</td>
												<td></td>
											<?php
												}
												?>
											
										</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- row closed -->
			</div>
			<!-- Container closed -->
		</div>
		<!-- main-content closed -->

		<!-- Sidebar-right-->
		
		<!--/Sidebar-right-->

		<!-- Message Modal -->
		
		<!-- Footer opened -->
		<div class="main-footer ht-45">
			<div class="container-fluid pd-t-0 ht-200p">
  <strong>© 2023 Copyright:
    <a class="text-reset fw-bold" href="https://www.agrariandept.gov.lk">Department of Agrarian Development All Rights Reserved.</a></strong>
    <strong> Designed and Developed by Information Management Unit</strong>
			</div>
		</div>
		<!-- Footer closed -->

	</div>
	<!-- End Page -->

	<!-- Back-to-top -->
	<a href="#top" id="back-to-top"><i class="las la-angle-double-up"></i></a>

	<!-- JQuery min js -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>

	<!-- Bootstrap Bundle js -->
	<script src="assets/plugins/bootstrap/js/popper.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- Moment js -->
	<script src="assets/plugins/moment/moment.js"></script>

	<!-- P-scroll js -->
	<script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="assets/plugins/perfect-scrollbar/p-scroll.js"></script>

	<!-- Sticky js -->
	<script src="assets/js/sticky.js"></script>

	<!-- Rating js-->
	<script src="assets/plugins/ratings-2/jquery.star-rating.js"></script>
	<script src="assets/plugins/ratings-2/star-rating.js"></script>

	<!-- smart photo master js -->
	<script src="assets/plugins/SmartPhoto-master/smartphoto.js"></script>
	<script src="assets/js/gallery-1.js"></script>

	<!-- Sidebar js -->
	<script src="assets/plugins/side-menu/sidemenu.js"></script>

	<!-- Right-sidebar js -->
	<script src="assets/plugins/sidebar/sidebar.js"></script>
	<script src="assets/plugins/sidebar/sidebar-custom.js"></script>

	<!-- eva-icons js -->
	<script src="assets/js/eva-icons.min.js"></script>

	<!--themecolor js-->
	<script src="assets/js/themecolor.js"></script>

	<!-- custom js -->
	<script src="assets/js/custom.js"></script>

</body>

</html>