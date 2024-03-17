(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_group__named_port
type google_compute_instance_group__timeouts
type google_compute_instance_group

type t = private {
  description : string prop;
  id : string prop;
  instances : string list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  zone : string prop;
}

val google_compute_instance_group :
  ?description:string prop ->
  ?id:string prop ->
  ?instances:string prop list ->
  ?network:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_instance_group__timeouts ->
  name:string prop ->
  named_port:google_compute_instance_group__named_port list ->
  string ->
  t
