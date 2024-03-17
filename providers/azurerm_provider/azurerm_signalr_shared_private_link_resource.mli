(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_signalr_shared_private_link_resource__timeouts
type azurerm_signalr_shared_private_link_resource

val azurerm_signalr_shared_private_link_resource :
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:azurerm_signalr_shared_private_link_resource__timeouts ->
  name:string prop ->
  signalr_service_id:string prop ->
  sub_resource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  unit
