(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_web_pubsub_shared_private_link_resource

val azurerm_web_pubsub_shared_private_link_resource :
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  web_pubsub_id:string prop ->
  unit ->
  azurerm_web_pubsub_shared_private_link_resource

val yojson_of_azurerm_web_pubsub_shared_private_link_resource :
  azurerm_web_pubsub_shared_private_link_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  request_message : string prop;
  status : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
  web_pubsub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  web_pubsub_id:string prop ->
  string ->
  t
