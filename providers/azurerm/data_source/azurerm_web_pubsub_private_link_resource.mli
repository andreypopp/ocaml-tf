(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type shared_private_link_resource_types = {
  description : string prop;  (** description *)
  subresource_name : string prop;  (** subresource_name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_web_pubsub_private_link_resource

val azurerm_web_pubsub_private_link_resource :
  ?id:string prop ->
  ?timeouts:timeouts ->
  web_pubsub_id:string prop ->
  unit ->
  azurerm_web_pubsub_private_link_resource

val yojson_of_azurerm_web_pubsub_private_link_resource :
  azurerm_web_pubsub_private_link_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  shared_private_link_resource_types :
    shared_private_link_resource_types list prop;
  web_pubsub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  web_pubsub_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  web_pubsub_id:string prop ->
  string ->
  t Tf_core.resource
