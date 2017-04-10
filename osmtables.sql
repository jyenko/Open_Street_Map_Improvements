CREATE TABLE nodes (id integer, lat text, lon text, user text, uid integer, version integer, changeset integer, timestamp text);
CREATE TABLE ways (id integer, user text, uid integer, version integer, changeset integer, timestamp text);
CREATE TABLE nodes_tags (id integer, key text, value text, type text);
CREATE TABLE ways_tags (id integer, key text, value text, type text);
CREATE TABLE ways_nodes (id integer, node_id integer, position integer);