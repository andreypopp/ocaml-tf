(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cassandra

val cassandra :
  ?allowed_roles:string prop list ->
  ?connect_timeout:float prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?hosts:string prop list ->
  ?insecure_tls:bool prop ->
  ?password:string prop ->
  ?pem_bundle:string prop ->
  ?pem_json:string prop ->
  ?plugin_name:string prop ->
  ?port:float prop ->
  ?protocol_version:float prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?skip_verification:bool prop ->
  ?tls:bool prop ->
  ?username:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  cassandra

type couchbase

val couchbase :
  ?allowed_roles:string prop list ->
  ?base64_pem:string prop ->
  ?bucket_name:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?insecure_tls:bool prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?tls:bool prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  hosts:string prop list ->
  name:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  couchbase

type elasticsearch

val elasticsearch :
  ?allowed_roles:string prop list ->
  ?ca_cert:string prop ->
  ?ca_path:string prop ->
  ?client_cert:string prop ->
  ?client_key:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?insecure:bool prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?tls_server_name:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  password:string prop ->
  url:string prop ->
  username:string prop ->
  unit ->
  elasticsearch

type hana

val hana :
  ?allowed_roles:string prop list ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?disable_escaping:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?username:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  hana

type influxdb

val influxdb :
  ?allowed_roles:string prop list ->
  ?connect_timeout:float prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?insecure_tls:bool prop ->
  ?pem_bundle:string prop ->
  ?pem_json:string prop ->
  ?plugin_name:string prop ->
  ?port:float prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?tls:bool prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  host:string prop ->
  name:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  influxdb

type mongodb

val mongodb :
  ?allowed_roles:string prop list ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  mongodb

type mongodbatlas

val mongodbatlas :
  ?allowed_roles:string prop list ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  private_key:string prop ->
  project_id:string prop ->
  public_key:string prop ->
  unit ->
  mongodbatlas

type mssql

val mssql :
  ?allowed_roles:string prop list ->
  ?connection_url:string prop ->
  ?contained_db:bool prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?disable_escaping:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  mssql

type mysql

val mysql :
  ?allowed_roles:string prop list ->
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate_key:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  mysql

type mysql_aurora

val mysql_aurora :
  ?allowed_roles:string prop list ->
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate_key:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  mysql_aurora

type mysql_legacy

val mysql_legacy :
  ?allowed_roles:string prop list ->
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate_key:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  mysql_legacy

type mysql_rds

val mysql_rds :
  ?allowed_roles:string prop list ->
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate_key:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  mysql_rds

type oracle

val oracle :
  ?allowed_roles:string prop list ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?disconnect_sessions:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?split_statements:bool prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  oracle

type postgresql

val postgresql :
  ?allowed_roles:string prop list ->
  ?auth_type:string prop ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?disable_escaping:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?password_authentication:string prop ->
  ?plugin_name:string prop ->
  ?private_key:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?self_managed:bool prop ->
  ?service_account_json:string prop ->
  ?tls_ca:string prop ->
  ?tls_certificate:string prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  postgresql

type redis

val redis :
  ?allowed_roles:string prop list ->
  ?ca_cert:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?insecure_tls:bool prop ->
  ?plugin_name:string prop ->
  ?port:float prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?tls:bool prop ->
  ?verify_connection:bool prop ->
  host:string prop ->
  name:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  redis

type redis_elasticache

val redis_elasticache :
  ?allowed_roles:string prop list ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?region:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?username:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  url:string prop ->
  unit ->
  redis_elasticache

type redshift

val redshift :
  ?allowed_roles:string prop list ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?disable_escaping:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  redshift

type snowflake

val snowflake :
  ?allowed_roles:string prop list ->
  ?connection_url:string prop ->
  ?data:string prop Tf_core.assoc ->
  ?disable_automated_rotation:bool prop ->
  ?max_connection_lifetime:float prop ->
  ?max_idle_connections:float prop ->
  ?max_open_connections:float prop ->
  ?password:string prop ->
  ?plugin_name:string prop ->
  ?root_rotation_statements:string prop list ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?username:string prop ->
  ?username_template:string prop ->
  ?verify_connection:bool prop ->
  name:string prop ->
  unit ->
  snowflake

type vault_database_secrets_mount

val vault_database_secrets_mount :
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?plugin_version:string prop ->
  ?seal_wrap:bool prop ->
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
  path:string prop ->
  unit ->
  vault_database_secrets_mount

val yojson_of_vault_database_secrets_mount : vault_database_secrets_mount -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  allowed_managed_keys : string list prop;
  allowed_response_headers : string list prop;
  audit_non_hmac_request_keys : string list prop;
  audit_non_hmac_response_keys : string list prop;
  default_lease_ttl_seconds : float prop;
  delegated_auth_accessors : string list prop;
  description : string prop;
  engine_count : float prop;
  external_entropy_access : bool prop;
  id : string prop;
  identity_token_key : string prop;
  listing_visibility : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  passthrough_request_headers : string list prop;
  path : string prop;
  plugin_version : string prop;
  seal_wrap : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?plugin_version:string prop ->
  ?seal_wrap:bool prop ->
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
  path:string prop ->
  string ->
  t

val make :
  ?allowed_managed_keys:string prop list ->
  ?allowed_response_headers:string prop list ->
  ?audit_non_hmac_request_keys:string prop list ->
  ?audit_non_hmac_response_keys:string prop list ->
  ?default_lease_ttl_seconds:float prop ->
  ?delegated_auth_accessors:string prop list ->
  ?description:string prop ->
  ?external_entropy_access:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?listing_visibility:string prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?passthrough_request_headers:string prop list ->
  ?plugin_version:string prop ->
  ?seal_wrap:bool prop ->
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
  path:string prop ->
  string ->
  t Tf_core.resource
