(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_vmware_express_route_authorization

val azurerm_vmware_express_route_authorization :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_cloud_id:string prop ->
  unit ->
  azurerm_vmware_express_route_authorization

val yojson_of_azurerm_vmware_express_route_authorization :
  azurerm_vmware_express_route_authorization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  express_route_authorization_id : string prop;
  express_route_authorization_key : string prop;
  id : string prop;
  name : string prop;
  private_cloud_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_cloud_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  private_cloud_id:string prop ->
  string ->
  t Tf_core.resource
