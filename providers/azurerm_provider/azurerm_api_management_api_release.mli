(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_release__timeouts
type azurerm_api_management_api_release

val azurerm_api_management_api_release :
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:azurerm_api_management_api_release__timeouts ->
  api_id:string prop ->
  name:string prop ->
  string ->
  unit
