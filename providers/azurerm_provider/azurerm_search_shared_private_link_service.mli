(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_search_shared_private_link_service__timeouts
type azurerm_search_shared_private_link_service

val azurerm_search_shared_private_link_service :
  ?request_message:string ->
  ?timeouts:azurerm_search_shared_private_link_service__timeouts ->
  name:string ->
  search_service_id:string ->
  subresource_name:string ->
  target_resource_id:string ->
  string ->
  unit
