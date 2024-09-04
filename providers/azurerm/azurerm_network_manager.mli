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

type scope

val scope :
  ?management_group_ids:string prop list ->
  ?subscription_ids:string prop list ->
  unit ->
  scope

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_manager

val azurerm_network_manager :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_accesses:string prop list ->
  scope:scope list ->
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
  scope_accesses : string list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_accesses:string prop list ->
  scope:scope list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_accesses:string prop list ->
  scope:scope list ->
  string ->
  t Tf_core.resource
