(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type basic_auth = { environments : string prop  (** environments *) }

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_static_web_app

val azurerm_static_web_app :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_static_web_app

val yojson_of_azurerm_static_web_app : azurerm_static_web_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_key : string prop;
  app_settings : (string * string) list prop;
  basic_auth : basic_auth list prop;
  configuration_file_changes_enabled : bool prop;
  default_host_name : string prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  preview_environments_enabled : bool prop;
  resource_group_name : string prop;
  sku_size : string prop;
  sku_tier : string prop;
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
