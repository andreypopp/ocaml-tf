(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_communication_service__timeouts
type azurerm_communication_service

val azurerm_communication_service :
  ?data_location:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_communication_service__timeouts ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
