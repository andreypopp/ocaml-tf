(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cassandra

val cassandra :
  ?connect_timeout:float prop ->
  ?hosts:string prop list ->
  ?insecure_tls:bool prop ->
  ?password:string prop ->
  ?pem_bundle:string prop ->
  ?pem_json:string prop ->
  ?port:float prop ->
  ?protocol_version:float prop ->
  ?skip_verification:bool prop ->
  ?tls:bool prop ->
  ?username:string prop ->
  unit ->
  cassandra

type couchbase

val couchbase :
  ?base64_pem:string prop ->
  ?bucket_name:string prop ->
  ?insecure_tls:bool prop ->
  ?tls:bool prop ->
  ?username_template:string prop ->
  hosts:string prop list ->
  password:string prop ->
  username:string prop ->
  unit ->
  couchbase

type elasticsearch

val elasticsearch :
  ?ca_cert:string prop ->
  ?ca_path:string prop ->
  ?client_cert:string prop ->
  ?client_key:string prop ->
  ?insecure:bool prop ->
  ?tls_server_name:string prop ->
  ?username_template:string prop ->
  password:string prop ->
  url:string prop ->
  username:string prop ->
  unit ->
  elasticsearch

type hana

val hana :
  ?connection_url:string prop ->
  ?disable_escaping:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?username:string prop ->
  unit ->
  hana

type influxdb

val influxdb :
  ?connect_timeout:float prop ->
  ?insecure_tls:bool prop ->
  ?pem_bundle:string prop ->
  ?pem_json:string prop ->
  ?port:float prop ->
  ?tls:bool prop ->
  ?username_template:string prop ->
  host:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  influxdb

type mongodb

val mongodb :
  ?connection_url:string prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  mongodb

type mongodbatlas

val mongodbatlas : private_key:string prop -> project_id:string prop -> public_key:string prop -> unit -> mongodbatlas

type mssql

val mssql :
  ?connection_url:string prop ->
  ?contained_db:bool prop ->
  ?disable_escaping:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  mssql

type mysql

val mysql :
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate_key:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  mysql

type mysql_aurora

val mysql_aurora :
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate_key:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  mysql_aurora

type mysql_legacy

val mysql_legacy :
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate_key:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  mysql_legacy

type mysql_rds

val mysql_rds :
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate_key:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  mysql_rds

type oracle

val oracle :
  ?connection_url:string prop ->
  ?disconnect_sessions:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?split_statements:bool prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  oracle

type postgresql

val postgresql :
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?disable_escaping:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?password_authentication:string prop ->
  ?private_key:string prop ->
  ?self_managed:bool prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  postgresql

type redis

val redis :
  ?ca_cert:string prop ->
  ?insecure_tls:bool prop ->
  ?port:float prop ->
  ?tls:bool prop ->
  host:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  redis

type redis_elasticache

val redis_elasticache :
  ?password:string prop -> ?region:string prop -> ?username:string prop -> url:string prop -> unit -> redis_elasticache

type redshift

val redshift :
  ?connection_url:string prop ->
  ?disable_escaping:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  redshift

type snowflake

val snowflake :
  ?connection_url:string prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  unit ->
  snowflake

type vault_database_secret_backend_connection

val vault_database_secret_backend_connection :
  ?allowed_roles:string prop list ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?verify_connection:bool prop ->
  ?cassandra:cassandra list ->
  ?couchbase:couchbase list ->
  ?elasticsearch:elasticsearch list ->
  ?hana:hana list ->
  ?influxdb:influxdb list ->
  ?mongodb:mongodb list ->
  ?mongodbatlas:mongodbatlas list ->
  ?mssql:mssql list ->
  ?mysql:mysql list ->
  ?mysql_aurora:mysql_aurora list ->
  ?mysql_legacy:mysql_legacy list ->
  ?mysql_rds:mysql_rds list ->
  ?oracle:oracle list ->
  ?postgresql:postgresql list ->
  ?redis:redis list ->
  ?redis_elasticache:redis_elasticache list ->
  ?redshift:redshift list ->
  ?snowflake:snowflake list ->
  backend:string prop ->
  name:string prop ->
  unit ->
  vault_database_secret_backend_connection

val yojson_of_vault_database_secret_backend_connection : vault_database_secret_backend_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_roles : string list prop;
  backend : string prop;
  data : string Tf_core.assoc prop;
  disable_automated_rotation : bool prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  plugin_name : string prop;
  root_rotation_statements : string list prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  verify_connection : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_roles:string prop list ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?verify_connection:bool prop ->
  ?cassandra:cassandra list ->
  ?couchbase:couchbase list ->
  ?elasticsearch:elasticsearch list ->
  ?hana:hana list ->
  ?influxdb:influxdb list ->
  ?mongodb:mongodb list ->
  ?mongodbatlas:mongodbatlas list ->
  ?mssql:mssql list ->
  ?mysql:mysql list ->
  ?mysql_aurora:mysql_aurora list ->
  ?mysql_legacy:mysql_legacy list ->
  ?mysql_rds:mysql_rds list ->
  ?oracle:oracle list ->
  ?postgresql:postgresql list ->
  ?redis:redis list ->
  ?redis_elasticache:redis_elasticache list ->
  ?redshift:redshift list ->
  ?snowflake:snowflake list ->
  backend:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?allowed_roles:string prop list ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?verify_connection:bool prop ->
  ?cassandra:cassandra list ->
  ?couchbase:couchbase list ->
  ?elasticsearch:elasticsearch list ->
  ?hana:hana list ->
  ?influxdb:influxdb list ->
  ?mongodb:mongodb list ->
  ?mongodbatlas:mongodbatlas list ->
  ?mssql:mssql list ->
  ?mysql:mysql list ->
  ?mysql_aurora:mysql_aurora list ->
  ?mysql_legacy:mysql_legacy list ->
  ?mysql_rds:mysql_rds list ->
  ?oracle:oracle list ->
  ?postgresql:postgresql list ->
  ?redis:redis list ->
  ?redis_elasticache:redis_elasticache list ->
  ?redshift:redshift list ->
  ?snowflake:snowflake list ->
  backend:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
