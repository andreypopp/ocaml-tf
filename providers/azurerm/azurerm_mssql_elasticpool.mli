(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type per_database_settings

val per_database_settings :
  max_capacity:float prop ->
  min_capacity:float prop ->
  unit ->
  per_database_settings

type sku

val sku :
  ?family:string prop ->
  capacity:float prop ->
  name:string prop ->
  tier:string prop ->
  unit ->
  sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_elasticpool

val azurerm_mssql_elasticpool :
  ?enclave_type:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?max_size_bytes:float prop ->
  ?max_size_gb:float prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  per_database_settings:per_database_settings list ->
  sku:sku list ->
  unit ->
  azurerm_mssql_elasticpool

val yojson_of_azurerm_mssql_elasticpool :
  azurerm_mssql_elasticpool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enclave_type : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  maintenance_configuration_name : string prop;
  max_size_bytes : float prop;
  max_size_gb : float prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?enclave_type:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?max_size_bytes:float prop ->
  ?max_size_gb:float prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  per_database_settings:per_database_settings list ->
  sku:sku list ->
  string ->
  t

val make :
  ?enclave_type:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?max_size_bytes:float prop ->
  ?max_size_gb:float prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  per_database_settings:per_database_settings list ->
  sku:sku list ->
  string ->
  t Tf_core.resource
