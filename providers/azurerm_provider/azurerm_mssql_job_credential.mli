(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_job_credential__timeouts
type azurerm_mssql_job_credential

val azurerm_mssql_job_credential :
  ?id:string prop ->
  ?timeouts:azurerm_mssql_job_credential__timeouts ->
  job_agent_id:string prop ->
  name:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  unit
