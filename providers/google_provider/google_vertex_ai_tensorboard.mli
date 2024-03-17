(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_tensorboard__encryption_spec
type google_vertex_ai_tensorboard__timeouts
type google_vertex_ai_tensorboard

val google_vertex_ai_tensorboard :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?region:string ->
  ?timeouts:google_vertex_ai_tensorboard__timeouts ->
  display_name:string ->
  encryption_spec:google_vertex_ai_tensorboard__encryption_spec list ->
  string ->
  unit
