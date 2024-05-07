(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_endpoint

val private_endpoint :
  ?allowed_request_types:string prop list ->
  ?denied_request_types:string prop list ->
  id:string prop ->
  unit ->
  private_endpoint

type public_network

val public_network :
  ?allowed_request_types:string prop list ->
  ?denied_request_types:string prop list ->
  unit ->
  public_network

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_web_pubsub_network_acl

val azurerm_web_pubsub_network_acl :
  ?default_action:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  web_pubsub_id:string prop ->
  private_endpoint:private_endpoint list ->
  public_network:public_network list ->
  unit ->
  azurerm_web_pubsub_network_acl

val yojson_of_azurerm_web_pubsub_network_acl :
  azurerm_web_pubsub_network_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_action : string prop;
  id : string prop;
  web_pubsub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_action:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  web_pubsub_id:string prop ->
  private_endpoint:private_endpoint list ->
  public_network:public_network list ->
  string ->
  t

val make :
  ?default_action:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  web_pubsub_id:string prop ->
  private_endpoint:private_endpoint list ->
  public_network:public_network list ->
  string ->
  t Tf_core.resource
