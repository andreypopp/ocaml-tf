(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventgrid_domain_topic__timeouts
type azurerm_eventgrid_domain_topic

val azurerm_eventgrid_domain_topic :
  ?id:string prop ->
  ?timeouts:azurerm_eventgrid_domain_topic__timeouts ->
  domain_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
