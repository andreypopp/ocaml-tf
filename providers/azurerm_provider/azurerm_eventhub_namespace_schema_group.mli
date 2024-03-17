(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_namespace_schema_group__timeouts
type azurerm_eventhub_namespace_schema_group

val azurerm_eventhub_namespace_schema_group :
  ?id:string ->
  ?timeouts:azurerm_eventhub_namespace_schema_group__timeouts ->
  name:string ->
  namespace_id:string ->
  schema_compatibility:string ->
  schema_type:string ->
  string ->
  unit
