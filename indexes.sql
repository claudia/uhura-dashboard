CREATE INDEX index1 ON items USING btree (channel_id);
CREATE INDEX listened ON user_items USING btree (item_id, user_id);
CREATE INDEX listened2 ON user_items USING btree (channel_id, user_id);
CREATE INDEX subscribed ON user_channels USING btree (channel_id);
CREATE INDEX subscriptions ON user_channels USING btree (channel_id, user_id);
CREATE INDEX suggestions ON items USING btree(channel_id, id);
CREATE INDEX index4 ON user_items USING btree(user_id, viewed);
CREATE INDEX user_token ON users USING btree(remember_token ASC NULLS LAST);
CREATE INDEX user_email ON users USING btree(email ASC NULLS LAST);
