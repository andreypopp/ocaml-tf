(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_biglake_database__hive_options
type google_biglake_database__timeouts
type google_biglake_database

val google_biglake_database :
  ?id:string ->
  ?timeouts:google_biglake_database__timeouts ->
  catalog:string ->
  name:string ->
  type_:string ->
  hive_options:google_biglake_database__hive_options list ->
  string ->
  unit
