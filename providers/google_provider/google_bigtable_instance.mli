(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_instance__cluster__autoscaling_config
type google_bigtable_instance__cluster
type google_bigtable_instance__timeouts
type google_bigtable_instance

val google_bigtable_instance :
  ?deletion_protection:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_bigtable_instance__timeouts ->
  name:string prop ->
  cluster:google_bigtable_instance__cluster list ->
  string ->
  unit
