-- 索引脚本
-- author : pengc
-- date : 2017/12/27

-- 示例
-- 索引名称：idx_+名称

-- 添加
-- CREATE INDEX idx_name ON table_name (column_list)
-- CREATE UNIQUE INDEX idx_name ON table_name (column_list)

-- 删除
-- DROP INDEX idx_name ON talbe_name

-- 查询
-- show index from tblname;

-- T_ARTICLE
CREATE INDEX idx_title ON T_ARTICLE(TITLE);
CREATE INDEX idx_column_id ON T_ARTICLE(COLUMN_ID);
CREATE INDEX idx_model_id ON T_ARTICLE(MODEL_ID);