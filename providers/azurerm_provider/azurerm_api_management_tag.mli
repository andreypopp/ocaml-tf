(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_tag__timeouts
type azurerm_api_management_tag

val azurerm_api_management_tag :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_api_management_tag__timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  string ->
  unit
