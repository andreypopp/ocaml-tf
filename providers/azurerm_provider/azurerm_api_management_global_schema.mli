(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_global_schema__timeouts
type azurerm_api_management_global_schema

type t = private {
  api_management_name : string prop;
  description : string prop;
  id : string prop;
  resource_group_name : string prop;
  schema_id : string prop;
  type_ : string prop;
  value : string prop;
}

val azurerm_api_management_global_schema :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_api_management_global_schema__timeouts ->
  api_management_name:string prop ->
  resource_group_name:string prop ->
  schema_id:string prop ->
  type_:string prop ->
  value:string prop ->
  string ->
  t
