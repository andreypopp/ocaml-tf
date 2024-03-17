(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_gc_policy__max_age
type google_bigtable_gc_policy__max_version
type google_bigtable_gc_policy__timeouts
type google_bigtable_gc_policy

val google_bigtable_gc_policy :
  ?deletion_policy:string ->
  ?gc_rules:string ->
  ?mode:string ->
  ?timeouts:google_bigtable_gc_policy__timeouts ->
  column_family:string ->
  instance_name:string ->
  table:string ->
  max_age:google_bigtable_gc_policy__max_age list ->
  max_version:google_bigtable_gc_policy__max_version list ->
  string ->
  unit
