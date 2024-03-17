(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_job_agent__timeouts
type azurerm_mssql_job_agent

type t = private {
  database_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val azurerm_mssql_job_agent :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mssql_job_agent__timeouts ->
  database_id:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t
