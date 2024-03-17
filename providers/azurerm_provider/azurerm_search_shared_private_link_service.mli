(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_search_shared_private_link_service__timeouts
type azurerm_search_shared_private_link_service

val azurerm_search_shared_private_link_service :
  ?id:string prop ->
  ?request_message:string prop ->
  ?timeouts:azurerm_search_shared_private_link_service__timeouts ->
  name:string prop ->
  search_service_id:string prop ->
  subresource_name:string prop ->
  target_resource_id:string prop ->
  string ->
  unit
