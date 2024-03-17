(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_global_schema__timeouts
type azurerm_api_management_global_schema

val azurerm_api_management_global_schema :
  ?description:string ->
  ?timeouts:azurerm_api_management_global_schema__timeouts ->
  api_management_name:string ->
  resource_group_name:string ->
  schema_id:string ->
  type_:string ->
  value:string ->
  string ->
  unit
