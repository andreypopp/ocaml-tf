(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_database__encryption_config
type google_spanner_database__timeouts
type google_spanner_database

val google_spanner_database :
  ?ddl:string list ->
  ?deletion_protection:bool ->
  ?enable_drop_protection:bool ->
  ?timeouts:google_spanner_database__timeouts ->
  instance:string ->
  name:string ->
  encryption_config:google_spanner_database__encryption_config list ->
  string ->
  unit
