CREATE DATABASE IF NOT EXISTS examCube;
use examCube;
CREATE TABLE IF NOT EXISTS users(
    id              BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '用户唯一ID',
    username        VARCHAR(50)  NOT NULL UNIQUE COMMENT '用户名（唯一）',
    email           VARCHAR(100) NOT NULL UNIQUE COMMENT '邮箱（唯一）',
    password_hash   CHAR(60)     NOT NULL COMMENT '密码哈希值（BCrypt格式）',
    salt            CHAR(16)     NOT NULL COMMENT '密码盐值（16字节）',
    is_active       BOOLEAN      NOT NULL DEFAULT TRUE COMMENT '账户是否激活',
    is_verified     BOOLEAN      NOT NULL DEFAULT FALSE COMMENT '邮箱是否验证',
    role            ENUM('USER', 'ADMIN') NOT NULL DEFAULT 'USER' COMMENT '用户角色',
    created_at      DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
    updated_at      DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    last_login      DATETIME     COMMENT '最后登录时间',
    avatar_url      VARCHAR(255) COMMENT '头像URL',
    reset_token     VARCHAR(100) COMMENT '密码重置令牌',
    reset_token_expires DATETIME COMMENT '令牌过期时间',
    social_id       VARCHAR(100) COMMENT '社交账号唯一标识（如微信OpenID）',
    social_type     ENUM('WECHAT', 'QQ', 'GITHUB', 'GOOGLE') COMMENT '社交平台类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
