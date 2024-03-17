(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_table__column_family
type google_bigtable_table__timeouts
type google_bigtable_table

val google_bigtable_table :
  ?change_stream_retention:string prop ->
  ?deletion_protection:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?split_keys:string prop list ->
  ?timeouts:google_bigtable_table__timeouts ->
  instance_name:string prop ->
  name:string prop ->
  column_family:google_bigtable_table__column_family list ->
  string ->
  unit
