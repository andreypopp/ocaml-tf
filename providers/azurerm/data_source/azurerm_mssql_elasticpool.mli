(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku = {
  capacity : float prop;  (** capacity *)
  family : string prop;  (** family *)
  name : string prop;  (** name *)
  tier : string prop;  (** tier *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mssql_elasticpool

val azurerm_mssql_elasticpool :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  unit ->
  azurerm_mssql_elasticpool

val yojson_of_azurerm_mssql_elasticpool :
  azurerm_mssql_elasticpool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enclave_type : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  max_size_bytes : float prop;
  max_size_gb : float prop;
  name : string prop;
  per_db_max_capacity : float prop;
  per_db_min_capacity : float prop;
  resource_group_name : string prop;
  server_name : string prop;
  sku : sku list prop;
  tags : string Tf_core.assoc prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  t Tf_core.resource
