(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_dataset__encryption_spec
type google_vertex_ai_dataset__timeouts
type google_vertex_ai_dataset

val google_vertex_ai_dataset :
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?region:string ->
  ?timeouts:google_vertex_ai_dataset__timeouts ->
  display_name:string ->
  metadata_schema_uri:string ->
  encryption_spec:google_vertex_ai_dataset__encryption_spec list ->
  string ->
  unit
