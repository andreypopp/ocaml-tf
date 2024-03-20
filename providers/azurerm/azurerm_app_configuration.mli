(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type primary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

[@@@deriving.end]

type primary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

[@@@deriving.end]

type secondary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

[@@@deriving.end]

type secondary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

[@@@deriving.end]

type encryption

val encryption :
  ?identity_client_id:string prop ->
  ?key_vault_key_identifier:string prop ->
  unit ->
  encryption

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type replica

val replica :
  location:string prop -> name:string prop -> unit -> replica

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_app_configuration

val azurerm_app_configuration :
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access:string prop ->
  ?purge_protection_enabled:bool prop ->
  ?sku:string prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  encryption:encryption list ->
  identity:identity list ->
  replica:replica list ->
  unit ->
  azurerm_app_configuration

val yojson_of_azurerm_app_configuration :
  azurerm_app_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  endpoint : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_read_key : primary_read_key list prop;
  primary_write_key : primary_write_key list prop;
  public_network_access : string prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  secondary_read_key : secondary_read_key list prop;
  secondary_write_key : secondary_write_key list prop;
  sku : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access:string prop ->
  ?purge_protection_enabled:bool prop ->
  ?sku:string prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  encryption:encryption list ->
  identity:identity list ->
  replica:replica list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access:string prop ->
  ?purge_protection_enabled:bool prop ->
  ?sku:string prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  encryption:encryption list ->
  identity:identity list ->
  replica:replica list ->
  string ->
  t Tf_core.resource
