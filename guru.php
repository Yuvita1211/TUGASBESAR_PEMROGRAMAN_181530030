<section id="about-us">
        <div class="container">			
			<div class="skill-wrap clearfix">			
				<div class="center wow fadeInDown">
                    <h2>Data Guru</h2>
                </div>

                <!-- our-team -->
			<div class="team">
				<div class="row clearfix">
				<?php
					$sql = mysqli_query($koneksi, "SELECT * FROM tb_karyawan WHERE status='guru'");
					while($data = mysqli_fetch_array($sql)){
				?>
					<div class="col-md-4 col-sm-6">	
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="images/guru/<?php echo $data['foto'] ?>" alt="<?php echo $data['foto'] ?>"></a>
								</div>
								<div class="media-body">
									<h4><?php echo $data['nama_karyawan'] ?></h4>
									<h5><?php echo $data['nik'] ?></h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#"><?php echo $data['mengajar'] ?></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p>Alamat : <?php echo $data['alamat'] ?>.</p>
						</div>
					</div><!--/.col-lg-4 -->
					<?php } ?>
				</div>	<!--/.row-->
			</div><!--section-->
		</div><!--/.container-->
</section><!--/about-us-->