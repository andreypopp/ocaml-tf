(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_group_membership__timeouts
type google_compute_instance_group_membership

val google_compute_instance_group_membership :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_instance_group_membership__timeouts ->
  instance:string prop ->
  instance_group:string prop ->
  string ->
  unit
