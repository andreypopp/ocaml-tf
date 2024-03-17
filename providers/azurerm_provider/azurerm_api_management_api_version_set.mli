(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_version_set__timeouts
type azurerm_api_management_api_version_set

val azurerm_api_management_api_version_set :
  ?description:string prop ->
  ?id:string prop ->
  ?version_header_name:string prop ->
  ?version_query_name:string prop ->
  ?timeouts:azurerm_api_management_api_version_set__timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  versioning_scheme:string prop ->
  string ->
  unit
