(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_job_agent

val azurerm_mssql_job_agent :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  database_id:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  azurerm_mssql_job_agent

val yojson_of_azurerm_mssql_job_agent :
  azurerm_mssql_job_agent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  database_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  database_id:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  database_id:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
