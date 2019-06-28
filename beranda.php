<div class="slider">
		<div class="container">
			<div id="about-slider">
				<div id="carousel-slider" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
				  	<ol class="carousel-indicators visible-xs">
					    <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-slider" data-slide-to="1"></li>
					    <li data-target="#carousel-slider" data-slide-to="2"></li>
				  	</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div>
					   <div class="item">
							<img src="images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div> 
					   <div class="item">
							<img src="images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div> 
					</div>
					
					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i> 
					</a>
					
					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i> 
					</a>
				</div> <!--/#carousel-slider-->
			</div><!--/#about-slider-->
		</div>
    </div>
</div>

<!-- artikel -->

<section id="blog" class="container">
        <div class="blog">
            <div class="row">
                 <div class="col-md-8">
                    <div class="blog-item">
                    
                    <?php
                            $kategori = "";
                            if (@$_GET['kategori']=="") {
                               $sql = mysqli_query($koneksi, "SELECT * FROM tb_post a, tb_user b, tb_kategoripost c WHERE a.id_user=b.id_user AND a.id_kat=c.id_kat ORDER BY id_post DESC");
                            }else {
                                $kategori = $_GET['kategori'];
                                $sql = mysqli_query($koneksi, "SELECT * FROM tb_post a, tb_user b, tb_kategoripost c WHERE a.id_user=b.id_user AND a.id_kat=c.id_kat AND a.id_kat='$kategori' ORDER BY id_post DESC");
                            }
                            
                            while ($data = mysqli_fetch_array($sql)) {
                        ?>

                        <div class="row">
                            <div class="col-xs-12 col-sm-2 text-center">
                                <div class="entry-meta">
                                    <span id="publish_date"><?php echo date("d-M-Y", strtotime($data['tgl-post'])) ?></span>
                                    <span><i class="fa fa-user"></i> <a href="#"><?php echo $data['nama_user'] ?></a></span>
                                    <span><i class="fa fa-tags"></i><a href="#"><?php echo $data['kategori_post'] ?></a></span>
                                </div>
                            </div>
                                
                            <div class="col-xs-12 col-sm-10 blog-content">
                                <a href="index.php?page=detail_berita&id=<?php echo $data['id_post'] ?>"><img class="img-responsive img-blog" src="images/berita/<?php echo $data['header'] ?>" width="100%" alt="<?php echo $data['header'] ?>" /></a>
                                <h2><a href="index.php?page=detail_berita&id=<?php echo $data['id_post'] ?>"><?php $data['judul'] ?></a></h2>
                                <h3><?php echo substr($data['isi_post'], 0, 100) ?>"..."</h3>
                                <a class="btn btn-primary readmore" href="index.php?page=detail_berita&id=<?php echo $data['id_post'] ?>">Read More <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>    
                            <?php } ?>
                    </div><!--/.blog-item-->
                        
                    <ul class="pagination pagination-lg">
                        <li><a href="#"><i class="fa fa-long-arrow-left"></i>Previous Page</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">Next Page<i class="fa fa-long-arrow-right"></i></a></li>
                    </ul><!--/.pagination-->
                </div><!--/.col-md-8-->

                <?php include 'kategori.php' ?>
                
            </div><!--/.row-->
        </div>
    </section><!--/#blog-->

