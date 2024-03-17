(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_table__column_family
type google_bigtable_table__timeouts
type google_bigtable_table

val google_bigtable_table :
  ?change_stream_retention:string ->
  ?deletion_protection:string ->
  ?id:string ->
  ?project:string ->
  ?split_keys:string list ->
  ?timeouts:google_bigtable_table__timeouts ->
  instance_name:string ->
  name:string ->
  column_family:google_bigtable_table__column_family list ->
  string ->
  unit
