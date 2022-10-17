package io.dataease.ext;

import io.dataease.plugins.common.base.domain.SysMenu;
import io.dataease.ext.query.GridExample;
import io.dataease.controller.sys.request.SimpleTreeNode;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ExtSysMenuMapper {

    List<SimpleTreeNode> allNodes();

    List<SimpleTreeNode> nodesByExample(GridExample example);

    List<SysMenu> querySysMenu(@Param("userId") String userId);
}
