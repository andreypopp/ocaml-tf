(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_group__named_port
type google_compute_instance_group__timeouts
type google_compute_instance_group

val google_compute_instance_group :
  ?description:string ->
  ?timeouts:google_compute_instance_group__timeouts ->
  name:string ->
  named_port:google_compute_instance_group__named_port list ->
  string ->
  unit
