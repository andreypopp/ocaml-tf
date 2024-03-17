(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_job_credential__timeouts
type azurerm_mssql_job_credential

val azurerm_mssql_job_credential :
  ?id:string ->
  ?timeouts:azurerm_mssql_job_credential__timeouts ->
  job_agent_id:string ->
  name:string ->
  password:string ->
  username:string ->
  string ->
  unit
