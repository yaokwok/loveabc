<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
			  <div class="control-group">
              <label class="control-label">名称 :</label>
              <div class="controls">
                <input type="text" value="${role.get('name')}" name="role.name" class="span4"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">授权 :</label>
              <input type="hidden" name="permissionId" id="msg" />
            <div class="controls">
		<ul id="treeDemo" class="ztree"></ul>
		</div>
		</div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">保存</button>
              <button type="button" onclick="history.back()" class="btn">取消</button>
            </div>
