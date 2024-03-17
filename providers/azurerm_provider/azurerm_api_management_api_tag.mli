(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_tag__timeouts
type azurerm_api_management_api_tag

type t = private {
  api_id : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_api_management_api_tag :
  ?id:string prop ->
  ?timeouts:azurerm_api_management_api_tag__timeouts ->
  api_id:string prop ->
  name:string prop ->
  string ->
  t
