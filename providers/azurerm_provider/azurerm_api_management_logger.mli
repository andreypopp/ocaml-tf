(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_logger__application_insights
type azurerm_api_management_logger__eventhub
type azurerm_api_management_logger__timeouts
type azurerm_api_management_logger

val azurerm_api_management_logger :
  ?buffered:bool ->
  ?description:string ->
  ?id:string ->
  ?resource_id:string ->
  ?timeouts:azurerm_api_management_logger__timeouts ->
  api_management_name:string ->
  name:string ->
  resource_group_name:string ->
  application_insights:
    azurerm_api_management_logger__application_insights list ->
  eventhub:azurerm_api_management_logger__eventhub list ->
  string ->
  unit
