<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
		<head>
		<meta name="decorator" content="default" />
		<title>爱英语loveabc/与英语爱好者一同进步！</title>
	</head>
  	<body>
	<!-- BEGIN SLIDER
	================================================== -->
     <div class="slider">
 	    <div class="container">
 	    	<div class="row">
 	    		<div class="span12">
     
 			    	<div class="slider-area">
 				    	<ul class="slides">
 							
 							<!-- SLIDE #1 
 							==================================== -->
 				    		<li>
								<div class="row">
 				    			 	<div class="span12 bold-slider textcenter">
 				    			 		
 				    			 		<!-- slide #1 content -->
 										<div class="vcenter">
 					    			 		<h1 class="bold-heading">LOVEABC.TOP</h1>
											<br>
 					    			 		<img src="${ctxImg}/slogan.png">
 										</div>
 										
 				    			 	</div>
 				    			 </div>
 				    		</li>
 				    		
 				    		<!-- SLIDE #2 
 				    		==================================== -->
 				    		<li>
								<div class="row">
 				    			 	<div class="span12 textcenter">
 				    			 	
 				    			 		<!-- slide #2 content -->
 				    			 		<div class="vcenter">
 				    			 			<img src="assets/images/ipads.png" alt=""/>
 				    			 		</div>
 				    			 	</div>
 				    			 </div>
 				    		</li> 
 				    		
 				    		<!-- SLIDE #3
 				    		==================================== -->

 				    	</ul>
 			    	</div>
 			    	<div class="slider-space">
 			    	</div>
 	    	
				</div>
			</div>
		</div>
    </div>
    <!-- <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div> -->
    
    <!-- BEGIN MAIN BUBBLE
    ================================================== -->
    
    <div class="bubble-stripes"></div>
    
    <!-- 
    ================================================
    // BEGIN CONTENT
    ================================================ 
    -->
    <div class="content">
    
	    <!-- FEATURES
	    ================================================== -->
	    <div class="container" style="margin-top: 42px">
	    	<div class="row">
    			<div class="span4">
    				<div class="content-image">
    					<a href="assets/images/image1.png" class="fancybox">
	    					<span class="content-image-overlay"></span>
	    					<img src="assets/images/image1.png" alt="">
    					</a>
    				</div>
    				
    				<div class="content-bubble drop-shadow curved">
    					<h5 class="heading">1月1日</h5>
    					<p>Lorem ipsum dolor sit amet, contur adip elit, sed do eiusmod tempor incididunt ut labore et dolore magna</p>
    				</div>
    				<div class="content-bubble-triangle"></div>
    			</div>
    			
    			<div class="span4">
    				<div class="content-image">
    					<a href="assets/images/image2.png" class="fancybox">
    						<span class="content-image-overlay"></span>
    						<img src="assets/images/image2.png" alt="">
    					</a>
    				</div>
    				
    				<div class="content-bubble drop-shadow curved">
    					<h5 class="heading">1月2日</h5>
    					<p>Lorem ipsum dolor sit amet, contur adip elit, sed do eiusmod tempor incididunt ut labore et dolore magna</p>
    				</div>
    				<div class="content-bubble-triangle"></div>
    			</div>
    			
    			<div class="span4">
    				<div class="content-image">
    					<a href="assets/images/image2.png" class="fancybox">
    						<span class="content-image-overlay"></span>
    						<img src="assets/images/image3.png" alt="">
    					</a>
    				</div>
    				
    				<div class="content-bubble drop-shadow curved">
    					<h5 class="heading">1月3日</h5>
    					<p>Lorem ipsum dolor sit amet, contur adip elit, sed do eiusmod tempor incididunt ut labore et dolore magna</p>
    				</div>
    				<div class="content-bubble-triangle"></div>
    			</div>
	    	<!-- OUR SERVICES
	    	================================================== -->
	    	
	    	<div class="row">
	    		<div class="span12 textcenter">
	    			<span class="content-heading">英语音标(点击发音)</span>
	    			<div class="content-heading-stripes"></div>
	    		</div>
	    		<audio id='test' src="${ctxMp3}/i-sound.mp3"></audio>
	    		<table class="table border">
	    		<tr><td style="vertical-align:middle;" rowspan="2">单元音</td><td>短元音</td><td><a onclick="play('${ctxMp3}/i-sound.mp3')">[ɪ]</a></td><td><a onclick="play('${ctxMp3}/e-sound.mp3')">[e]</a></td><td><a onclick="play('${ctxMp3}/^-sound.mp3')">[ʌ]</a></td><td><a onclick="play('${ctxMp3}/e^-sound.mp3')">[ə]</a></td><td><a onclick="play('${ctxMp3}/o-sound.mp3')">[ɒ]</a></td><td><a onclick="play('${ctxMp3}/u-sound.mp3')">[ʊ]</a></td><td><a onclick="play('${ctxMp3}/an-sound.mp3')">[æ]</a></td></tr>
	    		<tr><td>长元音</td><td><a onclick="play('${ctxMp3}/i-sound2.mp3')">[iː]</a></td><td><a onclick="play('${ctxMp3}/er-sound.mp3')">[ɜː]</a></td><td><a onclick="play('${ctxMp3}/o-sound2.mp3')">[ɔː]</a></td><td><a onclick="play('${ctxMp3}/u-sound2.mp3')">[uː]</a></td><td><a onclick="play('${ctxMp3}/a-sound2.mp3')">[ɑː]</a></td></tr>
	    		<tr><td>双元音</td><td></td><td><a onclick="play('${ctxMp3}/ei.mp3')">[eɪ]</a></td><td><a onclick="play('${ctxMp3}/ai.mp3')">[aɪ]</a></td><td><a onclick="play('${ctxMp3}/oi.mp3')">[ɔɪ]</a></td><td><a onclick="play('${ctxMp3}/ao.mp3')">[aʊ]</a></td><td><a onclick="play('${ctxMp3}/eu.mp3')">[əʊ]</a></td><td><a onclick="play('${ctxMp3}/ir.mp3')">[ɪə]</a></td><td><a onclick="play('${ctxMp3}/er.mp3')">[eə]</a></td><td><a onclick="play('${ctxMp3}/uer.mp3')">[əə]</a></td></tr>
	    		<tr><td style="vertical-align:middle;" rowspan="2">清浊成对的辅音</td><td>清辅音</td><td><a onclick="play('${ctxMp3}/p.mp3')">[p]</a></td><td><a onclick="play('${ctxMp3}/t.mp3')">[t]</a></td><td><a onclick="play('${ctxMp3}/k.mp3')">[k]</a></td><td><a onclick="play('${ctxMp3}/f.mp3')">[f]</a></td><td><a onclick="play('${ctxMp3}/si.mp3')">[θ]</a></td><td><a onclick="play('${ctxMp3}/s.mp3')">[s]</a></td><td><a onclick="play('${ctxMp3}/ts.mp3')">[ts]</a></td><td><a onclick="play('${ctxMp3}/tr.mp3')">[tr]</a></td><td><a onclick="play('${ctxMp3}/ss.mp3')">[∫]</a></td><td><a onclick="play('${ctxMp3}/tss.mp3')">[t∫]</a></td></tr>
	    		<tr><td>浊辅音</td><td><a onclick="play('${ctxMp3}/b.mp3')">[b]</a></td><td><a onclick="play('${ctxMp3}/d.mp3')">[d]</a></td><td><a onclick="play('${ctxMp3}/g.mp3')">[g]</a></td><td><a onclick="play('${ctxMp3}/v.mp3')">[v]</a></td><td><a onclick="play('${ctxMp3}/qq.mp3')">[ð]</a></td><td><a onclick="play('${ctxMp3}/z.mp3')">[z]</a></td><td><a onclick="play('${ctxMp3}/dz.mp3')">[dz]</a></td><td><a onclick="play('${ctxMp3}/dr.mp3')">[dr]</a></td><td><a onclick="play('${ctxMp3}/n3.mp3')">[ʒ]</a></td><td><a onclick="play('${ctxMp3}/d3.mp3')">[dʒ]</a></td></tr>
	    		<tr><td>其它辅音</td><td></td><td><a onclick="play('${ctxMp3}/m.mp3')">[m]</a></td><td><a onclick="play('${ctxMp3}/n.mp3')">[n]</a></td><td><a onclick="play('${ctxMp3}/ng.mp3')">[ŋ]</a></td><td><a onclick="play('${ctxMp3}/h.mp3')">[h]</a></td><td><a onclick="play('${ctxMp3}/l.mp3')">[l]</a></td><td><a onclick="play('${ctxMp3}/r.mp3')">[r]</a></td><td><a onclick="play('${ctxMp3}/j.mp3')">[j]</a></td><td><a onclick="play('${ctxMp3}/w.mp3')">[w]</a></td></tr>
	    		</table>
	    		
	    	</div> 
	    	
	    	<!-- TESTIMONIALS
	    	================================================== --> 
	    	<div class="row">
	    	<div class="span12 textcenter">
	    			<span class="content-heading">设备支持</span>
	    			<div class="content-heading-stripes"></div>
	    		</div>
    			<div class="span4">
	    			<div class="features drop-shadow">
	    			
		    			<div class="features-circle">
		    				<img src="assets/img/icon_mobile.png" alt=""/>
		    			</div>
		    			
		    			<h4><strong>Phone</strong> 手机</h4>
		    			
		    			<p>支持各种智能手机，包括安卓和ios，在不同的尺寸下本站的显示效果都会完美兼容显示，让您随时随地随心所欲地学英语...</p>
		    			<br>
		    			<div class="features-read-more">
		    				<a class="btn btn-small btn-prime">READ MORE</a>
		    			</div>
	    			
	    			</div>
	    		</div>
	    		<div class="span4">
	    			<div class="features drop-shadow features-active">
	    			
	    				<div class="features-circle">
	    					<img src="assets/img/icon_desktop.png" alt=""/>
	    				</div>
	    				
	    				<h4><strong>PC</strong> 电脑</h4>
	    				
	    				<p>目前兼容IE8-IE11，以及firefox，chrome等众多主流浏览器，如果本站在您的电脑上显示不正常，那么so sorry,您该升级浏览器版本啦...</p>
	    				<br>
	    				<div class="features-read-more">
	    					<a class="btn btn-small btn-prime">READ MORE</a>
	    				</div>
	    			
	    			</div>
	    		</div>
	    		<div class="span4">
	    			<div class="features drop-shadow">
	    			
	    				<div class="features-circle">
	    					<img src="assets/img/icon_laptop.png" alt=""/>
	    				</div>
	    				
	    				<h4><strong>Pad</strong> 平板/笔记本</h4>
	    				
	    				<p>正如兼容手机一样，对于平板方面本站也兼容ios和安卓平台，而且不同分辨率下浏览效果也是完全ok的...</p>
	    				<br>
	    				<div class="features-read-more">
	    					<a class="btn btn-small btn-prime">READ MORE</a>
	    				</div>
	    			
	    			</div>
	    		</div>
	    	</div>
	    	</div>
	    </div> 	   	
	</div>		    	
	
	<!-- BEGIN SUB-FOOTER
	================================================== -->
    <div class="sub-footer">
    	<div class="container">
    		<div class="row">
    		
    			<div class="span3 visible-desktop visible-tablet">
    				<h5 class="heading">关于我们</h5>
    				<p>
    				
    				爱英语loveabc 是由 <a>yaokwok</a> 开发的用于英语学习交流的平台，我们的初衷是与英语爱好者一同进步！
    				<br>
    				<i class="icon-map-marker icon-white"></i> : 中国&nbsp;&nbsp;&nbsp;成都<br>
    				<i class="icon-envelope icon-white"></i> : yaokwok@live.com<br>
    				<br>
    				<a>微信公众号:</a>
    				loveabc_top
    				<br>
    				<a>新浪微博:</a> 
    				爱英语loveabc
    				<br>
    				<a>腾讯微博:</a> 
    				loveabc_top
    				</p>
    			</div>
    			<div class="span3 visible-desktop visible-tablet">
    				<div class="latest-posts">
	    				<h5 class="heading">赞助支持</h5>
	    				<p>您可以为我们提供免费的技术或劳力支持:</p><br>
	    				<a class="first">java软件工程师，美工，前端工程师</a>
	    				<a>推广员，英语爱好者，英语专业学生</a>
	    				<a>英语从教员，外国友人，网络教育机构</a>
	    				<a class="last">培训机构，培训班，外语学校</a>
    				</div>
    			</div>
    			<div class="span3 visible-desktop visible-tablet">
    				<h5 class="heading">友情链接</h5>
    				<p>
    				<a href="http://dict.youdao.com/" style="border-bottom:0px" target="_blank"><img src="${ctxImg}/logo-youdao.png"></a>
    				<br><br><br><br>
    				您可以在右侧申请交换链接
    				</p>
    			</div>
    			<div class="span3">
					<div class="contact-alerts"></div>
					<input placeholder="您的姓名" type="text" name="name" id="name">
					<input placeholder="您的邮箱" type="text" name="email" id="email">
					<textarea placeholder="写下你对本站的建议，看法，或者合作谈判等..." rows="3" cols="50" name="message" id="message"></textarea> 
					<button id="submit" class="btn btn-black btn-full">提交</button>
    			</div>
    			
    		</div>
    	</div>	
    </div>
    <script>
 // 检查是否正在播放
    var isPlaying = false; 
    function play(v) {
        var player = document.querySelector('#test');
        if (isPlaying) {
            // 如果正在播放, 停止播放并停止读取此音乐文件
            player.pause();
            player.src = '';
        } else {
            player.src = v;
            player.play();
        }
    }
    </script>
  </body>
</html>
