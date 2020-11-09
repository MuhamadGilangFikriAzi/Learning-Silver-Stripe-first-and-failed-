<%-- <% include Banner %> --%>
<!-- BEGIN CONTENT WRAPPER -->
<div class="content">
	<div class="container">
		<div class="row">

			<!-- BEGIN MAIN CONTENT -->
			<div class="main col-sm-8">
				<div id="blog-listing" class="list-style clearfix">
					<div class="row">
                        <% loop $Children %>
                            <div class="item col-md-6">
                              <div class="image">
                                <a href="blog-detail.html">
                                  <span class="btn btn-default">Read More</span>
                                </a>
                                <img src="http://placehold.it/766x515" alt="" />
                              </div> <div class="tag"><i class="fa fa-file-text"></i></div>
                             <div class="info-blog">
                               <ul class="top-info">
                                 <li><i class="fa fa-calendar"></i> July 30, 2014</li>
                                 <li><i class="fa fa-comments-o"></i> 2</li>
                                 <li><i class="fa fa-tags"></i> Properties, Prices, best deals</li>
                               </ul>
                              <h3><a href="blog-detail.html">How to get your dream property for the best price?>/a></h3>
                              <p>Sed rutrum urna id tellus euismod gravida. Praesent placerat, mauris ac pellentesque fringilla, tortor libero condimen. Aliquam fermem tum nulla felis, sed molestie libero porttitor in.</p>
                             </div>
                            </div>
                            <% end_loop %>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->



			<!-- BEGIN SIDEBAR -->
			<div class="sidebar gray col-sm-4">

				<h2 class="section-title">Categories</h2>
				<ul class="categories">
				<% loop $Categories %>
					<li><a href="$Link">$Title <span>($Article.count)</span></a></li>
				<% end_loop %>
				</ul>


				<!-- BEGIN LATEST NEWS -->
				<h2 class="section-title">Latest News</h2>
				<ul class="latest-news">
					<li class="col-md-12">
						<div class="image">
							<a href="blog-detail.html"></a>
							<img src="http://placehold.it/100x100" alt="" />
						</div>

						<ul class="top-info">
							<li><i class="fa fa-calendar"></i> July 30, 2014</li>
						</ul>

						<h3><a href="blog-detail.html">How to get your dream property for the best price?</a></h3>
					</li>
					<li class="col-md-12">
						<div class="image">
							<a href="blog-detail.html"></a>
							<img src="http://placehold.it/100x100" alt="" />
						</div>

						<ul class="top-info">
							<li><i class="fa fa-calendar"></i> July 24, 2014</li>
						</ul>

						<h3><a href="blog-detail.html">7 tips to get the best mortgage.</a></h3>
					</li>
					<li class="col-md-12">
						<div class="image">
							<a href="blog-detail.html"></a>
							<img src="http://placehold.it/100x100" alt="" />
						</div>

						<ul class="top-info">
							<li><i class="fa fa-calendar"></i> July 05, 2014</li>
						</ul>

						<h3><a href="blog-detail.html">House, location or price: What's the most important factor?</a></h3>
					</li>
				</ul>
				<!-- END LATEST NEWS -->

			</div>
			<!-- END SIDEBAR -->

		</div>
	</div>
</div>
