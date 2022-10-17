-- 修改默认初始化ui数据
UPDATE dataease.system_parameter SET param_value = '2', type = 'file', sort = 6 WHERE param_key = 'ui.favicon';
UPDATE dataease.system_parameter SET param_value = 'http://app.zrwy.tjeol.com', type = 'text', sort = 15 WHERE param_key = 'ui.helpLink';
UPDATE dataease.system_parameter SET param_value = 'http://data.zrwy.tjeol.com/', type = 'text', sort = 16 WHERE param_key = 'ui.homeLink';
UPDATE dataease.system_parameter SET param_value = '1', type = 'file', sort = 3 WHERE param_key = 'ui.loginImage';
UPDATE dataease.system_parameter SET param_value = '2', type = 'file', sort = 2 WHERE param_key = 'ui.loginLogo';
UPDATE dataease.system_parameter SET param_value = '数据可视化', type = 'text', sort = 4 WHERE param_key = 'ui.loginTitle';
UPDATE dataease.system_parameter SET param_value = '2', type = 'file', sort = 1 WHERE param_key = 'ui.logo';
UPDATE dataease.system_parameter SET param_value = null, type = 'file', sort = 14 WHERE param_key = 'ui.mobileBG';
UPDATE dataease.system_parameter SET param_value = 'true', type = 'boolean', sort = 13 WHERE param_key = 'ui.openHomePage';
UPDATE dataease.system_parameter SET param_value = 'light', type = 'text', sort = 12 WHERE param_key = 'ui.themeStr';
UPDATE dataease.system_parameter SET param_value = '数据可视化', type = 'text', sort = 5 WHERE param_key = 'ui.title';

