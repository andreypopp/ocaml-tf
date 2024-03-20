(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_integration_account_assembly

val azurerm_logic_app_integration_account_assembly :
  ?assembly_version:string prop ->
  ?content:string prop ->
  ?content_link_uri:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  assembly_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_logic_app_integration_account_assembly

val yojson_of_azurerm_logic_app_integration_account_assembly :
  azurerm_logic_app_integration_account_assembly -> json

(** RESOURCE REGISTRATION *)

type t = private {
  assembly_name : string prop;
  assembly_version : string prop;
  content : string prop;
  content_link_uri : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?assembly_version:string prop ->
  ?content:string prop ->
  ?content_link_uri:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  assembly_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?assembly_version:string prop ->
  ?content:string prop ->
  ?content_link_uri:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  assembly_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
