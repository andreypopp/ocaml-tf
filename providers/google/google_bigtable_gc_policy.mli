(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_gc_policy__max_age
type google_bigtable_gc_policy__max_version
type google_bigtable_gc_policy__timeouts
type google_bigtable_gc_policy

type t = private {
  column_family : string prop;
  deletion_policy : string prop;
  gc_rules : string prop;
  id : string prop;
  instance_name : string prop;
  mode : string prop;
  project : string prop;
  table : string prop;
}

val google_bigtable_gc_policy :
  ?deletion_policy:string prop ->
  ?gc_rules:string prop ->
  ?id:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?timeouts:google_bigtable_gc_policy__timeouts ->
  column_family:string prop ->
  instance_name:string prop ->
  table:string prop ->
  max_age:google_bigtable_gc_policy__max_age list ->
  max_version:google_bigtable_gc_policy__max_version list ->
  string ->
  t
