(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_signalr_shared_private_link_resource__timeouts
type azurerm_signalr_shared_private_link_resource

val azurerm_signalr_shared_private_link_resource :
  ?request_message:string ->
  ?timeouts:azurerm_signalr_shared_private_link_resource__timeouts ->
  name:string ->
  signalr_service_id:string ->
  sub_resource_name:string ->
  target_resource_id:string ->
  string ->
  unit
