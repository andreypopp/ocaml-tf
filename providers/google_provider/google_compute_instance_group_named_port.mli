(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_group_named_port__timeouts
type google_compute_instance_group_named_port

val google_compute_instance_group_named_port :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_instance_group_named_port__timeouts ->
  group:string prop ->
  name:string prop ->
  port:float prop ->
  string ->
  unit
