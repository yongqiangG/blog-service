create DATABASE if NOT EXISTS `blog-service` DEFAULT CHARACTER SET UTF8MB4 DEFAULT COLLATE UTF8MB4_GENERAL_CI;
USE blog_service;
CREATE TABLE `blog_tag`
(
    `id`          INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name`        VARCHAR(100)        DEFAULT '' COMMENT '标签名称',
    `create_on`   INT(10) UNSIGNED    DEFAULT '0' COMMENT '创建时间',
    `create_by`   VARCHAR(100)        DEFAULT '' COMMENT '创建人',
    `modified_on` INT(10) UNSIGNED    DEFAULT '0' COMMENT '修改时间',
    `modified_by` VARCHAR(100)        DEFAULT '' COMMENT '修改人',
    `deleted_on`  INT(10) UNSIGNED    DEFAULT '0' COMMENT '删除时间',
    `is_del`      TINYINT(3) UNSIGNED DEFAULT '0' COMMENT '是否删除 0:未删除 1:已删除',
    `state`       TINYINT(3) UNSIGNED DEFAULT '1' COMMENT '状态 0:禁用 1:启用',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARset = UTF8MB4 COMMENT ='标签管理';


CREATE TABLE `blog_artical`
(
    `id`              INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title`           VARCHAR(100)        DEFAULT '' COMMENT '文章标题',
    `desc`            VARCHAR(255)        DEFAULT '' COMMENT '文章简述',
    `cover_image_url` VARCHAR(255)        DEFAULT '' COMMENT '封面图片地址',
    `content`         LONGTEXT COMMENT '文章内容',
    `create_on`       INT(10) UNSIGNED    DEFAULT '0' COMMENT '创建时间',
    `create_by`       VARCHAR(100)        DEFAULT '' COMMENT '创建人',
    `modified_on`     INT(10) UNSIGNED    DEFAULT '0' COMMENT '修改时间',
    `modified_by`     VARCHAR(100)        DEFAULT '' COMMENT '修改人',
    `deleted_on`      INT(10) UNSIGNED    DEFAULT '0' COMMENT '删除时间',
    `is_del`          TINYINT(3) UNSIGNED DEFAULT '0' COMMENT '是否删除 0:未删除 1:已删除',
    `state`           TINYINT(3) UNSIGNED DEFAULT '1' COMMENT '状态 0:禁用 1:启用',
    PRIMARY KEY (`id`)
) ENGINE = INNODB
  DEFAULT CHARSET = UTF8MB4 COMMENT ='文章管理';

CREATE TABLE `blog_artical_tag`
(
    `id`          INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `artical_id`  INT(11)          NOT NULL COMMENT '文章 ID',
    `tag_id`      INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '标签ID',
    `create_on`   INT(10) UNSIGNED          DEFAULT '0' COMMENT '创建时间',
    `create_by`   VARCHAR(100)              DEFAULT '' COMMENT '创建人',
    `modified_on` INT(10) UNSIGNED          DEFAULT '0' COMMENT '修改时间',
    `modified_by` VARCHAR(100)              DEFAULT '' COMMENT '修改人',
    `deleted_on`  INT(10) UNSIGNED          DEFAULT '0' COMMENT '删除时间',
    `is_del`      TINYINT(3) UNSIGNED       DEFAULT '0' COMMENT '是否删除 0:未删除 1:已删除',
    PRIMARY KEY (`id`)
) ENGINE = INNODB
  DEFAULT CHARSET = UTF8MB4 COMMENT ='文章标签关联';