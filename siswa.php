<section id="about-us">
        <div class="container">			
			<div class="skill-wrap clearfix">			
				<div class="center wow fadeInDown">
					<h2>Data Siswa</h2>
                </div>
                
                <table class="table table-responsive table-hover">
                    <thead>
                        <tr>
                            <th>NIS</th>
                            <th>Foto</th>
                            <th>Nama Siswa</th>
                            <th>L/P</th>
                            <th>Tempat, Tanggal Lahir</th>
                            <th>Alamat</th>
                            <th>Tahun Masuk</th>
                        </tr>
                    </thead>

                    <tbody>
                    <?php
                        $sql = mysqli_query($koneksi, "SELECT * FROM tb_siswa");
                        while($data = mysqli_fetch_array($sql)){
                    ?>
                        <tr>
                            <td><?php echo $data['nis'] ?></td>
                            <td><img src="images/siswa/<?php echo $data['foto'] ?>" alt="<?php echo $data['foto'] ?>" width=50px height=50px></td>
                            <td><?php echo $data['nama_siswa'] ?></td>
                            <td><?php echo $data['jk'] ?></td>
                            <td><?php echo $data['tmp_lahir'].', '.date('d-M-Y', strtotime($data['tgl_lahir'])) ?></td>
                            <td><?php echo $data['alamat'] ?></td>
                            <td><?php echo $data['tahun_masuk'] ?></td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>

			</div><!--section-->
		</div><!--/.container-->
</section><!--/about-us-->