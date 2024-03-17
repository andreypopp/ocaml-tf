(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_gateway__location_data
type azurerm_api_management_gateway__timeouts
type azurerm_api_management_gateway

type t = private {
  api_management_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_api_management_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_api_management_gateway__timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  location_data:azurerm_api_management_gateway__location_data list ->
  string ->
  t
