(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_connection__timeouts
type azurerm_api_connection

val azurerm_api_connection :
  ?display_name:string ->
  ?id:string ->
  ?parameter_values:(string * string) list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_api_connection__timeouts ->
  managed_api_id:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
