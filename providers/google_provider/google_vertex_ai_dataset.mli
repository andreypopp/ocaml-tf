(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_dataset__encryption_spec
type google_vertex_ai_dataset__timeouts
type google_vertex_ai_dataset

val google_vertex_ai_dataset :
  ?labels:(string * string) list ->
  ?timeouts:google_vertex_ai_dataset__timeouts ->
  display_name:string ->
  metadata_schema_uri:string ->
  encryption_spec:google_vertex_ai_dataset__encryption_spec list ->
  string ->
  unit
