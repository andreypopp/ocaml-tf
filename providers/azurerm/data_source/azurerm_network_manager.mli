(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cross_tenant_scopes = {
  management_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** management_groups *)
  subscriptions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subscriptions *)
  tenant_id : string prop;  (** tenant_id *)
}

type scope = {
  management_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** management_group_ids *)
  subscription_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subscription_ids *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_network_manager

val azurerm_network_manager :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_network_manager

val yojson_of_azurerm_network_manager :
  azurerm_network_manager -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cross_tenant_scopes : cross_tenant_scopes list prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope : scope list prop;
  scope_accesses : string list prop;
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
