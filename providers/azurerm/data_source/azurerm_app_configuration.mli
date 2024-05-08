(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption = {
  identity_client_id : string prop;  (** identity_client_id *)
  key_vault_key_identifier : string prop;
      (** key_vault_key_identifier *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type primary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

type primary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

type replica = {
  endpoint : string prop;  (** endpoint *)
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
}

type secondary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

type secondary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_configuration

val azurerm_app_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_configuration

val yojson_of_azurerm_app_configuration :
  azurerm_app_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  encryption : encryption list prop;
  endpoint : string prop;
  id : string prop;
  identity : identity list prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_read_key : primary_read_key list prop;
  primary_write_key : primary_write_key list prop;
  public_network_access : string prop;
  public_network_access_enabled : bool prop;
  purge_protection_enabled : bool prop;
  replica : replica list prop;
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
