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

type azurerm_mssql_job_credential

val azurerm_mssql_job_credential :
  ?id:string prop ->
  ?timeouts:timeouts ->
  job_agent_id:string prop ->
  name:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  azurerm_mssql_job_credential

val yojson_of_azurerm_mssql_job_credential :
  azurerm_mssql_job_credential -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  job_agent_id : string prop;
  name : string prop;
  password : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  job_agent_id:string prop ->
  name:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t
