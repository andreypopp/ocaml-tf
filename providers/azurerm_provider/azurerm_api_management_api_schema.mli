(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_schema__timeouts
type azurerm_api_management_api_schema

type t = private {
  api_management_name : string prop;
  api_name : string prop;
  components : string prop;
  content_type : string prop;
  definitions : string prop;
  id : string prop;
  resource_group_name : string prop;
  schema_id : string prop;
  value : string prop;
}

val azurerm_api_management_api_schema :
  ?components:string prop ->
  ?definitions:string prop ->
  ?id:string prop ->
  ?value:string prop ->
  ?timeouts:azurerm_api_management_api_schema__timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  content_type:string prop ->
  resource_group_name:string prop ->
  schema_id:string prop ->
  string ->
  t
