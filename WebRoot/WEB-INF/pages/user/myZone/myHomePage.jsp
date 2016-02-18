<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
<title>易英语</title>
<meta name="decorator" content="Admindefault" />
		<div class="page-content">
<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<div id="dashboard">
					<!-- BEGIN DASHBOARD STATS -->
					<div class="row-fluid">
						<div class="row-fluid profile">
					<div class="span12">
						<!--BEGIN TABS-->
						<div class="tabbable tabbable-custom">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab_1_1" data-toggle="tab">个人主页</a></li>
								<li><a href="#tab_1_2" data-toggle="tab">个人资料</a></li>
								<li><a href="#tab_1_3" data-toggle="tab">关注/粉丝</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane row-fluid active" id="tab_1_1">
									<ul class="unstyled profile-nav span3">
										<li><img width="250px" height="250px" name="user.imgurl" src="<c:if test="${empty user.get('imgurl') }">/images/nopic.jpg</c:if><c:if test="${!empty user.get('imgurl') }">${user.get('imgurl')}</c:if>"/></li>
										<li><a href="#"><b>关注</b><span>3</span></a></li>
										<li><a href="#"><b>粉丝</b><span>3</span></a></li>
									</ul>
									<div class="span9">
										<div class="row-fluid">
											<div class="span8 profile-info">
												<h1>${user.get('nickname')}</h1>
												<p style="height:150px">${user.get('idiograph')}</p>
												<ul class="unstyled inline">
													<li><i class="icon-map-marker"></i>${user.get('address')} - ${user.get('address1')}</li>
													<li><i class="icon-calendar"></i>${user.get('born')}</li>
													<li><i class="icon-star"></i>${user.get('level')}</li>
												</ul>
											</div>
											<!--end span8-->
											<div class="span4">
												<div class="portlet sale-summary">
													<div class="portlet-title">
														<h4>影响力：未上榜</h4>
													</div>
													<ul class="unstyled">
														<li>
															<span class="sale-info">累计帖子 <i class="icon-img-up"></i></span> 
															<span class="sale-num">23</span>
														</li>
														<li>
															<span class="sale-info">回答问题 <i class="icon-img-down"></i></span> 
															<span class="sale-num">87</span>
														</li>
														<li>
															<span class="sale-info">等级积分</span> 
															<span class="sale-num">${user.get('point')}</span>
														</li>
														<li>
															<span class="sale-info">E币</span> 
															<span class="sale-num">${user.get('money')}</span>
														</li>
													</ul>
												</div>
											</div>
											<!--end span4-->
										</div>
										<!--end row-fluid-->
										<div class="tabbable tabbable-custom tabbable-custom-profile">
											<ul class="nav nav-tabs">
												<li class="active"><a href="#tab_1_11" data-toggle="tab">待办任务</a></li>
												<li class=""><a href="#tab_1_22" data-toggle="tab">我发布的帖子</a></li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" id="tab_1_11">
													<div class="portlet-body" style="display: block;">
														<table class="table table-striped table-bordered table-advance table-hover">
															<thead>
																<tr>
																	<th class="hidden-phone"><i class="icon-question-sign"></i> Descrition</th>
																	<th><i class="icon-bookmark"></i> Amount</th>
																	<th></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="hidden-phone">Server hardware purchase</td>
																	<td>52560.10$ <span class="label label-success label-mini">Paid</span></td>
																	<td><a class="btn mini green-stripe" href="#">View</a></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!--tab-pane-->
												<div class="tab-pane" id="tab_1_22">
													<div class="tab-pane active" id="tab_1_1_1">
														<div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible1="1">
															<ul class="feeds">
																<li>
																	<div class="col1">
																		<div class="cont">
																			<div class="cont-col1">
																				<div class="label label-success">								
																					<i class="icon-bell"></i>
																				</div>
																			</div>
																			<div class="cont-col2">
																				<div class="desc">
																					You have 4 pending tasks.
																					<span class="label label-important label-mini">
																					Take action 
																					<i class="icon-share-alt"></i>
																					</span>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="col2">
																		<div class="date">
																			Just now
																		</div>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<!--tab-pane-->
											</div>
										</div>
									</div>
									<!--end span9-->
								</div>
								<!--end tab-pane-->
								<div class="tab-pane profile-classic row-fluid" id="tab_1_2">
									<div class="span2"><img width="250px" height="250px" name="user.imgurl" id="fileName" onclick="uppic()" src="<c:if test="${empty user.get('imgurl') }">/images/nopic.jpg</c:if><c:if test="${!empty user.get('imgurl') }">${user.get('imgurl')}</c:if>"/><a href="/user/edit" class="profile-edit">修改</a></div>
									<ul class="unstyled span10">
										<li><span>昵称:</span> ${user.get('nickname')}</li>
										<li><span>性别:</span> ${user.get('sex')==1?'男':user.get('sex')==2?'女':'保密'}</li>
										<li><span>所在地:</span> ${user.get('address')} - ${user.get('address1')} — ${user.get('address2')}</li>
										<li><span>出生日期:</span> ${user.get('born')}</li>
										<li><span>等级:</span> ${user.get('level')}</li>
										<li><span>Email:</span> <a href="#">${user.get('email')}</a></li>
										<li><span>注册时间:</span> ${user.get('time')}</li>
										<li><span>座右铭:</span> ${user.get('idiograph')}</li>
									</ul>
								</div>
								<!--tab_1_2-->
								<div class="tab-pane row-fluid profile-account" id="tab_1_3">
									<div class="row-fluid">
										<div class="span12">
											<div class="span9">
												<div class="tab-content">
												</div>
											</div>
											<!--end span9-->                                   
										</div>
									</div>
								</div>
								<!--end tab-pane-->
							</div>
						</div>
						<!--END TABS-->
					</div>
				</div></div></div>
				</div>
				</div>
</html>