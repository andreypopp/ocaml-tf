(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_email_communication_service__timeouts
type azurerm_email_communication_service

val azurerm_email_communication_service :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_email_communication_service__timeouts ->
  data_location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
