(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_database__timeouts
type google_sql_database

val google_sql_database :
  ?charset:string ->
  ?collation:string ->
  ?deletion_policy:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_sql_database__timeouts ->
  instance:string ->
  name:string ->
  string ->
  unit
