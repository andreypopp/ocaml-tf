(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_group_membership__timeouts
type google_compute_instance_group_membership

val google_compute_instance_group_membership :
  ?zone:string ->
  ?timeouts:google_compute_instance_group_membership__timeouts ->
  instance:string ->
  instance_group:string ->
  string ->
  unit
