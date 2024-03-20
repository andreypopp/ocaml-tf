(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type capabilities = { name : string prop  (** name *) }

type consistency_policy = {
  consistency_level : string prop;  (** consistency_level *)
  max_interval_in_seconds : float prop;
      (** max_interval_in_seconds *)
  max_staleness_prefix : float prop;  (** max_staleness_prefix *)
}

type geo_location = {
  failover_priority : float prop;  (** failover_priority *)
  id : string prop;  (** id *)
  location : string prop;  (** location *)
}

type virtual_network_rule = { id : string prop  (** id *) }
type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cosmosdb_account

val azurerm_cosmosdb_account :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cosmosdb_account

val yojson_of_azurerm_cosmosdb_account :
  azurerm_cosmosdb_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  capabilities : capabilities list prop;
  connection_strings : string list prop;
  consistency_policy : consistency_policy list prop;
  enable_automatic_failover : bool prop;
  enable_free_tier : bool prop;
  enable_multiple_write_locations : bool prop;
  endpoint : string prop;
  geo_location : geo_location list prop;
  id : string prop;
  ip_range_filter : string prop;
  is_virtual_network_filter_enabled : bool prop;
  key_vault_key_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  offer_type : string prop;
  primary_key : string prop;
  primary_mongodb_connection_string : string prop;
  primary_readonly_key : string prop;
  primary_readonly_mongodb_connection_string : string prop;
  primary_readonly_sql_connection_string : string prop;
  primary_sql_connection_string : string prop;
  read_endpoints : string list prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  secondary_mongodb_connection_string : string prop;
  secondary_readonly_key : string prop;
  secondary_readonly_mongodb_connection_string : string prop;
  secondary_readonly_sql_connection_string : string prop;
  secondary_sql_connection_string : string prop;
  tags : (string * string) list prop;
  virtual_network_rule : virtual_network_rule list prop;
  write_endpoints : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
