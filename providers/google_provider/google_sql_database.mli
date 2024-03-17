(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_database__timeouts
type google_sql_database

val google_sql_database :
  ?charset:string prop ->
  ?collation:string prop ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_sql_database__timeouts ->
  instance:string prop ->
  name:string prop ->
  string ->
  unit
