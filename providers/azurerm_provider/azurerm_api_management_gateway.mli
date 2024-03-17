(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_gateway__location_data
type azurerm_api_management_gateway__timeouts
type azurerm_api_management_gateway

val azurerm_api_management_gateway :
  ?description:string ->
  ?timeouts:azurerm_api_management_gateway__timeouts ->
  api_management_id:string ->
  name:string ->
  location_data:azurerm_api_management_gateway__location_data list ->
  string ->
  unit
