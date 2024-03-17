(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_instance__cluster__autoscaling_config
type google_bigtable_instance__cluster
type google_bigtable_instance__timeouts
type google_bigtable_instance

val google_bigtable_instance :
  ?deletion_protection:bool ->
  ?display_name:string ->
  ?id:string ->
  ?instance_type:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_bigtable_instance__timeouts ->
  name:string ->
  cluster:google_bigtable_instance__cluster list ->
  string ->
  unit
