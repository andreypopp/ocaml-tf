(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_version_set__timeouts
type azurerm_api_management_api_version_set

val azurerm_api_management_api_version_set :
  ?description:string ->
  ?version_header_name:string ->
  ?version_query_name:string ->
  ?timeouts:azurerm_api_management_api_version_set__timeouts ->
  api_management_name:string ->
  display_name:string ->
  name:string ->
  resource_group_name:string ->
  versioning_scheme:string ->
  string ->
  unit
