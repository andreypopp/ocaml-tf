(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_database__timeouts
type google_sql_database

val google_sql_database :
  ?deletion_policy:string ->
  ?timeouts:google_sql_database__timeouts ->
  instance:string ->
  name:string ->
  string ->
  unit
