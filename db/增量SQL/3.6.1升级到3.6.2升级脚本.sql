ALTER TABLE onl_drag_page
MODIFY COLUMN id varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键' FIRST,
MODIFY COLUMN low_app_id varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用ID' AFTER update_time;

ALTER TABLE onl_drag_page_comp
MODIFY COLUMN page_Id varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '界面ID' AFTER parent_id;

ALTER TABLE onl_drag_page
ADD COLUMN visits_num int(11) NULL DEFAULT NULL COMMENT '访问次数' AFTER update_count;

UPDATE onl_drag_comp SET parent_id = '1537764868216684545', comp_name = '金字塔漏斗图', comp_type = 'JPyramidFunnel', icon = 'icon-park-outline:children-pyramid', order_num = 100, type_id = NULL, comp_config = '{\n  \"dataType\": 1,\n  \"url\": \"http://api.jeecg.com/mock/26/funnel\",\n  \"timeOut\": 0,\n  \"turnConfig\": {\n    \"url\": \"\"\n  },\n  \"linkageConfig\": [],\n  \"dataMapping\": [\n    {\n      \"filed\": \"维度\",\n      \"mapping\": \"\"\n    },\n    {\n      \"filed\": \"数值\",\n      \"mapping\": \"\"\n    }\n  ],\n  \"chartData\": [\n    {\n      \"value\": 1000,\n      \"name\": \"直接访问\"\n    },\n    {\n      \"value\": 200,\n      \"name\": \"邮件营销\"\n    },\n    {\n      \"value\": 400,\n      \"name\": \"联盟广告\"\n    },\n    {\n      \"value\": 600,\n      \"name\": \"网页查询\"\n    },\n    {\n      \"value\": 800,\n      \"name\": \"广告点击\"\n    }\n  ],\n  \"option\": {\n    \"title\": {\n      \"text\": \"基础漏斗图\",\n      \"show\": true\n    },\n    \"grid\": {\n      \"bottom\": 115\n    },\n    \"card\": {\n      \"title\": \"\",\n      \"extra\": \"\",\n      \"rightHref\": \"\",\n      \"size\": \"default\"\n    },\n    \"tooltip\": {\n      \"trigger\": \"item\",\n      \"formatter\": \"{a} <br/>{b} : {c}\"\n    },\n    \"legend\": {\n      \"orient\": \"horizontal\"\n    },\n    \"series\": [\n      {\n        \"name\": \"Funnel\",\n        \"type\": \"funnel\",\n        \"left\": \"10%\",\n        \"width\": \"80%\",\n        \"sort\": \"ascending\",\n        \"gap\": 2,\n        \"label\": {\n          \"show\": true,\n          \"position\": \"inside\"\n        },\n        \"labelLine\": {\n          \"length\": 10,\n          \"lineStyle\": {\n            \"width\": 1,\n            \"type\": \"solid\"\n          }\n        },\n        \"itemStyle\": {\n          \"borderColor\": \"#fff\",\n          \"borderWidth\": 1\n        },\n        \"emphasis\": {\n          \"label\": {\n            \"fontSize\": 20\n          }\n        }\n      }\n    ]\n  }\n}', status = '1', create_by = NULL, create_time = '2022-06-16 14:17:31', update_by = NULL, update_time = '2022-06-16 14:59:44' WHERE id = '1537318433201340417';
UPDATE onl_drag_comp SET parent_id = '1537764868216684545', comp_name = '普通漏斗图', comp_type = 'JFunnel', icon = 'ant-design:funnel-plot-filled', order_num = 8, type_id = NULL, comp_config = '{\n  \"dataType\": 1,\n  \"url\": \"http://api.jeecg.com/mock/26/funnel\",\n  \"timeOut\": 0,\n  \"turnConfig\": {\n    \"url\": \"\"\n  },\n  \"linkageConfig\": [],\n  \"dataMapping\": [\n    {\n      \"filed\": \"维度\",\n      \"mapping\": \"\"\n    },\n    {\n      \"filed\": \"数值\",\n      \"mapping\": \"\"\n    }\n  ],\n  \"chartData\": [\n    {\n      \"value\": 335,\n      \"name\": \"直接访问\"\n    },\n    {\n      \"value\": 310,\n      \"name\": \"邮件营销\"\n    },\n    {\n      \"value\": 234,\n      \"name\": \"联盟广告\"\n    }\n  ],\n  \"option\": {\n    \"title\": {\n      \"text\": \"基础漏斗图\",\n      \"show\": true\n    },\n    \"grid\": {\n      \"bottom\": 115\n    },\n    \"card\": {\n      \"title\": \"\",\n      \"extra\": \"\",\n      \"rightHref\": \"\",\n      \"size\": \"default\"\n    },\n    \"tooltip\": {\n      \"trigger\": \"item\",\n      \"formatter\": \"{a} <br/>{b} : {c}\"\n    },\n    \"legend\": {\n      \"orient\": \"horizontal\"\n    },\n    \"series\": [\n      {\n        \"name\": \"Funnel\",\n        \"type\": \"funnel\",\n        \"left\": \"10%\",\n        \"width\": \"80%\",\n        \"sort\": \"descending\",\n        \"gap\": 2,\n        \"label\": {\n          \"show\": true,\n          \"position\": \"inside\"\n        },\n        \"labelLine\": {\n          \"length\": 10,\n          \"lineStyle\": {\n            \"width\": 1,\n            \"type\": \"solid\"\n          }\n        },\n        \"itemStyle\": {\n          \"borderColor\": \"#fff\",\n          \"borderWidth\": 1\n        },\n        \"emphasis\": {\n          \"label\": {\n            \"fontSize\": 20\n          }\n        }\n      }\n    ]\n  }\n}', status = '1', create_by = NULL, create_time = '2022-01-06 14:38:04', update_by = 'admin', update_time = '2022-06-17 19:51:26' WHERE id = '200208';

INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external) VALUES ('1698650926200352770', '1473927410093187073', '数据集解析SQL', NULL, NULL, 0, NULL, NULL, 2, 'drag:analysis:sql', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'jeecg', '2023-09-04 18:55:15', 'jeecg', '2023-09-05 20:36:51', 0, 0, '1', 0);
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external) VALUES ('1699038961937113090', '1473927410093187073', '数据源添加', NULL, NULL, 0, NULL, NULL, 2, 'drag:datasource:saveOrUpate', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'jeecg', '2023-09-05 20:37:10', NULL, NULL, 0, 0, '1', 0);
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external) VALUES ('1699039098474291201', '1473927410093187073', '数据源删除', NULL, NULL, 0, NULL, NULL, 2, 'drag:datasource:delete', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'jeecg', '2023-09-05 20:37:42', NULL, NULL, 0, 0, '1', 0);
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external) VALUES ('1699039192154071041', '1473927410093187073', '数据源批量删除', NULL, NULL, 0, NULL, NULL, 2, 'drag:datasource:deleteBatch', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'jeecg', '2023-09-05 20:38:05', NULL, NULL, 0, 0, '1', 0);
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external) VALUES ('1701475606988812289', '1473927410093187073', '数据源连接', NULL, NULL, 0, NULL, NULL, 2, 'drag:datasource:testConnection', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'jeecg', '2023-09-12 13:59:31', NULL, NULL, 0, 0, '1', 0);

INSERT INTO onl_drag_comp ( id, parent_id, comp_name, comp_type, icon, order_num, type_id, comp_config, status, create_by, create_time, update_by, update_time ) VALUES ( '72811631742776660', '100', '查询条件', 'JFilterQuery', 'ant-design:filter-filled', 100, NULL, '{\r\n	\"w\": 12,\r\n	\"h\": 12,\r\n	\"dataType\": 1,\r\n	\"url\": \"\",\r\n	\"timeOut\": 0,\r\n	\"chartData\": []\r\n}', '1', 'jeecg', '2022-09-09 15:21:08', 'jeecg', '2022-09-09 15:41:56' );

UPDATE onl_drag_comp SET comp_config = '{\r\n  \"dataType\": 1,\r\n  \"background\": \"#ffffff\",\r\n  \"url\": \"http://api.jeecg.com/mock/33/chart\",\r\n  \"timeOut\": 0,\r\n  \"turnConfig\": {\r\n    \"url\": \"\"\r\n  },\r\n  \"linkageConfig\": [],\r\n  \"dataMapping\": [],\r\n	\"customOption\": \"option = {xAxis: {type: \'category\',data: [\'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\', \'Sat\', \'Sun\']},yAxis: {type: \'value\'},series: [{data: [150, 230, 224, 218, 135, 147, 260],type: \'line\'}]};return option;\",\r\n  \"chartData\": [\r\n    {\r\n      \"value\": 0,\r\n      \"name\": \"\"\r\n    }\r\n  ],\r\n	\r\n  \"option\": {\r\n    \"grid\": {\r\n      \"bottom\": 115\r\n    },\r\n    \"card\": {\r\n      \"title\": \"\",\r\n      \"extra\": \"\",\r\n      \"rightHref\": \"\",\r\n      \"size\": \"default\"\r\n    },\r\n    \"title\": {\r\n      \"text\": \"\",\r\n      \"show\": true\r\n    }\r\n  }\r\n}' WHERE id = '200400';

UPDATE onl_drag_comp SET parent_id = '100', comp_name = '文本', comp_type = 'JText', icon = 'ant-design:font-colors-outlined', order_num = 14, type_id = NULL, comp_config = '{\n  \"w\": 8,\n  \"h\": 12,\n  \"dataType\": 1,\n  \"url\": \"http://api.jeecg.com/mock/42/nav\",\n  \"timeOut\": 0,\n  \"turnConfig\": {\n    \"url\": \"\"\n  },\r\n	\"background\": \"#4A90E2\",\n  \"chartData\": \"JeecgBoot面板设计\",\n  \"option\": {\n    \"card\": {\n      \"title\": \"\",\n      \"extra\": \"\",\n      \"rightHref\": \"\",\n      \"size\": \"default\"\n    },\n    \"body\": {\n      \"text\": \"\",\n      \"color\": \"#4A90E2\",\n      \"fontWeight\": \"bold\",\n      \"marginLeft\": 0,\n      \"marginTop\": 0\n    }\n  }\n}', status = '1', create_by = NULL, create_time = NULL, update_by = 'admin', update_time = '2022-04-29 10:49:04' WHERE id = '100110';

UPDATE onl_drag_page_comp SET parent_id = NULL, page_id = NULL, comp_id = NULL, component = 'JBar', config = '{\r\n    \"id\": \"116606b2-4620-42d6-9202-36f39288a8d5\",\r\n    \"component\": \"JBar\",\r\n    \"config\": {\r\n        \"formType\": \"design\",\r\n        \"dataType\": 4,\r\n        \"timeOut\": 0,\r\n        \"option\": {\r\n            \"grid\": {\r\n                \"show\": false,\r\n                \"top\": 90,\r\n                \"bottom\": 115\r\n            },\r\n            \"card\": {\r\n                \"title\": \"\",\r\n                \"extra\": \"\",\r\n                \"rightHref\": \"\",\r\n                \"size\": \"default\"\r\n            },\r\n            \"title\": {\r\n                \"text\": \"每日新增记录\",\r\n                \"show\": true,\r\n                \"textStyle\": {\r\n                    \"color\": \"#464646\"\r\n                }\r\n            },\r\n            \"tooltip\": {\r\n                \"trigger\": \"axis\",\r\n                \"axisPointer\": {\r\n                    \"type\": \"shadow\",\r\n                    \"label\": {\r\n                        \"show\": true,\r\n                        \"backgroundColor\": \"#333\"\r\n                    }\r\n                }\r\n            },\r\n            \"yAxis\": {\r\n                \"splitLine\": {\r\n                    \"interval\": 2\r\n                },\r\n                \"lineStyle\": {\r\n                    \"color\": \"#f3f3f3\"\r\n                }\r\n            },\r\n            \"series\": [\r\n                {\r\n                    \"data\": [\r\n                        \r\n                    ],\r\n                    \"type\": \"bar\",\r\n                    \"barWidth\": 40,\r\n                    \"itemStyle\": {\r\n                        \"color\": \"#64b5f6\",\r\n                        \"borderRadius\": 0\r\n                    }\r\n                }\r\n            ]\r\n        },\r\n        \"size\": {\r\n            \"height\": 500\r\n        },\r\n        \"dataNum\": \"\",\r\n        \"chart\": {\r\n            \"category\": \"Bar\",\r\n            \"subclass\": \"JBar\",\r\n            \"isGroup\": false\r\n        },\r\n        \"typeFields\": [\r\n            \r\n        ],\r\n        \"nameFields\": [\r\n            {\r\n                \"fieldName\": \"create_time\",\r\n                \"fieldTxt\": \"创建时间\",\r\n                \"fieldType\": \"date\",\r\n                \"widgetType\": \"date\",\r\n								\"customDateType\": \"3\"\r\n            }\r\n        ],\r\n        \"valueFields\": [\r\n            {\r\n                \"fieldName\": \"record_count\",\r\n                \"fieldTxt\": \"记录数量\",\r\n                \"fieldType\": \"count\",\r\n                \"widgetType\": \"text\"\r\n            }\r\n        ],\r\n        \"assistYFields\": [\r\n            \r\n        ],\r\n        \"assistTypeFields\": [\r\n            \r\n        ],\r\n        \"calcFields\": [\r\n            \r\n        ],\r\n        \"tableName\": \"test_1031\",\r\n        \"sorts\": {\r\n            \"name\": \"\",\r\n            \"type\": \"\"\r\n        },\r\n        \"filter\": {\r\n            \"queryField\": \"create_time\",\r\n            \"queryRange\": \"month\",\r\n            \"customTime\": null,\r\n            \"conditionMode\": \"and\",\r\n            \"conditionFields\": [\r\n                \r\n            ]\r\n        },\r\n        \"analysis\": {\r\n            \"isRawData\": true,\r\n            \"showMode\": 1,\r\n            \"showData\": 1,\r\n            \"isCompare\": false,\r\n            \"compareType\": \"\",\r\n            \"trendType\": \"1\",\r\n            \"compareValue\": null,\r\n            \"showFields\": [\r\n                \r\n            ]\r\n        },\r\n        \"formId\": \"test_1031\",\r\n        \"formName\": \"test1031\",\r\n        \"compStyleConfig\": {\r\n            \"summary\": {\r\n                \"showY\": true,\r\n                \"showTotal\": false,\r\n                \"showField\": \"\",\r\n                \"totalType\": \"sum\",\r\n                \"showName\": \"总计\"\r\n            },\r\n            \"showUnit\": {\r\n                \"numberLevel\": \"\",\r\n                \"decimal\": 0,\r\n                \"position\": \"suffix\",\r\n                \"unit\": \"\"\r\n            },\r\n            \"assist\": {\r\n                \"showUnit\": {\r\n                    \"numberLevel\": \"\",\r\n                    \"decimal\": 0,\r\n                    \"position\": \"suffix\",\r\n                    \"unit\": \"\"\r\n                },\r\n                \"summary\": {\r\n                    \"showY\": true,\r\n                    \"showField\": \"\",\r\n                    \"totalType\": \"sum\",\r\n                    \"showName\": \"总计\"\r\n                }\r\n            },\r\n            \"headerFreeze\": true,\r\n            \"unilineShow\": true,\r\n            \"columnFreeze\": true,\r\n            \"lineFreeze\": true\r\n        }\r\n    }\r\n}', create_by = 'jeecg', create_time = '2022-12-16 19:56:21', update_by = NULL, update_time = NULL WHERE id = '763699587304030208';

UPDATE sys_permission SET parent_id = '1455100420297859074', name = '仪表盘设计器', url = '/report/drag', component = '{{ window._CONFIG[\'domianURL\'] }}/drag/list?token=${token}&tenantId=${tenantId}', is_route = 0, component_name = NULL, redirect = NULL, menu_type = 1, perms = NULL, perms_type = '0', sort_no = 3.00, always_show = 0, icon = '', is_leaf = 0, keep_alive = 0, hidden = 0, hide_tab = 0, description = NULL, create_by = 'admin', create_time = '2021-12-23 16:04:13', update_by = 'admin', update_time = '2023-12-31 13:13:04', del_flag = 0, rule_flag = 0, status = NULL, internal_or_external = 1 WHERE id = '1473927410093187073';
delete from  sys_permission where id = '1473955758466981890';

-- 补充权限
INSERT INTO `sys_permission` (`id`, `parent_id`, `name`, `url`, `component`, `is_route`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_leaf`, `keep_alive`, `hidden`, `hide_tab`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES ('1546736974756032513', '1455101470794850305', '选择代码生成路径', NULL, NULL, 0, NULL, NULL, 2, 'online:codeGenerate:projectPath', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2022-07-12 14:03:26', NULL, NULL, 0, 0, '1', 0);