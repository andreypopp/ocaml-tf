(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_connection__timeouts
type azurerm_api_connection

val azurerm_api_connection :
  ?display_name:string prop ->
  ?id:string prop ->
  ?parameter_values:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_api_connection__timeouts ->
  managed_api_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
