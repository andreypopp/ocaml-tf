(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_namespace_schema_group__timeouts
type azurerm_eventhub_namespace_schema_group

type t = private {
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  schema_compatibility : string prop;
  schema_type : string prop;
}

val azurerm_eventhub_namespace_schema_group :
  ?id:string prop ->
  ?timeouts:azurerm_eventhub_namespace_schema_group__timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  schema_compatibility:string prop ->
  schema_type:string prop ->
  string ->
  t
