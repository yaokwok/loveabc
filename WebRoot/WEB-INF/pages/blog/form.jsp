<%@ page contentType="text/html;charset=UTF-8"%>
 <input type="hidden" name="blog.id" value="${blog.id}" />
 <input type="hidden" name="blog.userId" value="${currentUser.get('id')}"/>
          <div class="control-group">
		<label class="control-label">主题：</label>
            <div class="controls">
              <input type="text" name="blog.title" value="${blog.title}" class="m-wrap large" placeholder="10-25字符"/>
            </div>
          </div>
          <div class="control-group">
					<label class="control-label">类型：</label>
					<div class="controls">
					<select name="blog.type" class="small m-wrap">
						<option value="1" ${user.question=='1'?"selected":null }>经验分享</option>
						<option value="2" ${user.question=='2'?"selected":null }>教学教程</option>
						<option value="3" ${user.question=='3'?"selected":null }>技术交流</option>
						<option value="4" ${user.question=='4'?"selected":null }>交友爆照</option>
					</select>
					</div></div>
          <div class="control-group">
            <label class="control-label" for="textarea">内容：</label>
            <div class="controls">
              <textarea  name="blog.content" id="editor_id" style="height:400px" class="span10"></textarea><span style="color:red;">${contentMsg}</span>
            </div>
          </div>
          <br>
		<div class="form-actions">
            <button type="submit" class="btn green" title="发表"><i class="icon-ok"></i> 发表</button>&nbsp;&nbsp;
            <button type="reset" class="btn yellow" title="重置"><i class="icon-repeat"></i> 重置</button>&nbsp;&nbsp;
            <a href="/blog" class="btn" title="返回"><i class="icon-arrow-left"></i> 返回</a>
          </div>
          <div id="portlet_tab2" class="tab-pane">
          </div>
