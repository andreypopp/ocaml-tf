(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_eventhub_namespace_schema_group

val azurerm_eventhub_namespace_schema_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  schema_compatibility:string prop ->
  schema_type:string prop ->
  unit ->
  azurerm_eventhub_namespace_schema_group

val yojson_of_azurerm_eventhub_namespace_schema_group :
  azurerm_eventhub_namespace_schema_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  schema_compatibility : string prop;
  schema_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  schema_compatibility:string prop ->
  schema_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  schema_compatibility:string prop ->
  schema_type:string prop ->
  string ->
  t Tf_core.resource
