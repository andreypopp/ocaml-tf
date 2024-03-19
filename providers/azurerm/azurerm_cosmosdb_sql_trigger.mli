(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_sql_trigger

val azurerm_cosmosdb_sql_trigger :
  ?id:string prop ->
  ?timeouts:timeouts ->
  body:string prop ->
  container_id:string prop ->
  name:string prop ->
  operation:string prop ->
  type_:string prop ->
  unit ->
  azurerm_cosmosdb_sql_trigger

val yojson_of_azurerm_cosmosdb_sql_trigger :
  azurerm_cosmosdb_sql_trigger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  body : string prop;
  container_id : string prop;
  id : string prop;
  name : string prop;
  operation : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  body:string prop ->
  container_id:string prop ->
  name:string prop ->
  operation:string prop ->
  type_:string prop ->
  string ->
  t
