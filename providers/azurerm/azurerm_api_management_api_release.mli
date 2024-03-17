(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_release__timeouts
type azurerm_api_management_api_release

type t = private {
  api_id : string prop;
  id : string prop;
  name : string prop;
  notes : string prop;
}

val azurerm_api_management_api_release :
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:azurerm_api_management_api_release__timeouts ->
  api_id:string prop ->
  name:string prop ->
  string ->
  t
