(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub_shared_private_link_resource__timeouts
type azurerm_web_pubsub_shared_private_link_resource

type t = private {
  id : string prop;
  name : string prop;
  request_message : string prop;
  status : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
  web_pubsub_id : string prop;
}

val azurerm_web_pubsub_shared_private_link_resource :
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:azurerm_web_pubsub_shared_private_link_resource__timeouts ->
  name:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  web_pubsub_id:string prop ->
  string ->
  t
