(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type import

val import :
  ?operation_mode:string prop ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  authentication_type:string prop ->
  storage_key:string prop ->
  storage_key_type:string prop ->
  storage_uri:string prop ->
  unit ->
  import

type threat_detection_policy

val threat_detection_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins:string prop ->
  ?email_addresses:string prop list ->
  ?retention_days:float prop ->
  ?state:string prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  unit ->
  threat_detection_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sql_database

val azurerm_sql_database :
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?edition:string prop ->
  ?elastic_pool_name:string prop ->
  ?id:string prop ->
  ?max_size_bytes:string prop ->
  ?max_size_gb:string prop ->
  ?read_scale:bool prop ->
  ?requested_service_objective_id:string prop ->
  ?requested_service_objective_name:string prop ->
  ?restore_point_in_time:string prop ->
  ?source_database_deletion_date:string prop ->
  ?source_database_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone_redundant:bool prop ->
  ?import:import list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  unit ->
  azurerm_sql_database

val yojson_of_azurerm_sql_database : azurerm_sql_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  collation : string prop;
  create_mode : string prop;
  creation_date : string prop;
  default_secondary_location : string prop;
  edition : string prop;
  elastic_pool_name : string prop;
  encryption : string prop;
  id : string prop;
  location : string prop;
  max_size_bytes : string prop;
  max_size_gb : string prop;
  name : string prop;
  read_scale : bool prop;
  requested_service_objective_id : string prop;
  requested_service_objective_name : string prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  server_name : string prop;
  source_database_deletion_date : string prop;
  source_database_id : string prop;
  tags : string Tf_core.assoc prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?edition:string prop ->
  ?elastic_pool_name:string prop ->
  ?id:string prop ->
  ?max_size_bytes:string prop ->
  ?max_size_gb:string prop ->
  ?read_scale:bool prop ->
  ?requested_service_objective_id:string prop ->
  ?requested_service_objective_name:string prop ->
  ?restore_point_in_time:string prop ->
  ?source_database_deletion_date:string prop ->
  ?source_database_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone_redundant:bool prop ->
  ?import:import list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t

val make :
  ?collation:string prop ->
  ?create_mode:string prop ->
  ?edition:string prop ->
  ?elastic_pool_name:string prop ->
  ?id:string prop ->
  ?max_size_bytes:string prop ->
  ?max_size_gb:string prop ->
  ?read_scale:bool prop ->
  ?requested_service_objective_id:string prop ->
  ?requested_service_objective_name:string prop ->
  ?restore_point_in_time:string prop ->
  ?source_database_deletion_date:string prop ->
  ?source_database_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone_redundant:bool prop ->
  ?import:import list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t Tf_core.resource
