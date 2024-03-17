(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_biglake_table__hive_options__storage_descriptor
type google_biglake_table__hive_options
type google_biglake_table__timeouts
type google_biglake_table

val google_biglake_table :
  ?database:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?timeouts:google_biglake_table__timeouts ->
  name:string prop ->
  hive_options:google_biglake_table__hive_options list ->
  string ->
  unit
