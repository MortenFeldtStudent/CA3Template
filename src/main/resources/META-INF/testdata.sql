USE ca3template;
INSERT INTO users (user_name, user_pass) VALUES ('guest', '$2a$12$ixgMNxVtcHqdscmvxrGQGuSY0V4zKu7fzVfntNUA6hZYnUBzemZZi');
INSERT INTO users (user_name, user_pass) VALUES ('morten', '$2a$12$KgmLt2XsDL9jCZBXo87ZF.OXE6ZPpEW/OzjvUzdnTdf96WmxJT7Re');
INSERT INTO roles (role_name) VALUES ('user');
INSERT INTO roles (role_name) VALUES ('admin');
INSERT INTO user_roles (user_name, role_name) VALUES ('guest', 'user');
INSERT INTO user_roles (user_name, role_name) VALUES ('morten', 'admin');