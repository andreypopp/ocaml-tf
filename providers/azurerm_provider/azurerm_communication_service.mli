(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_communication_service__timeouts
type azurerm_communication_service

val azurerm_communication_service :
  ?data_location:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_communication_service__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
