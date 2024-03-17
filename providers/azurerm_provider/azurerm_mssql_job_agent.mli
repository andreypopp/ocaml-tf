(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_job_agent__timeouts
type azurerm_mssql_job_agent

val azurerm_mssql_job_agent :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mssql_job_agent__timeouts ->
  database_id:string ->
  location:string ->
  name:string ->
  string ->
  unit
