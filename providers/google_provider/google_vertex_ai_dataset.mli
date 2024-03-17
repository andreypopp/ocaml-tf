(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_dataset__encryption_spec
type google_vertex_ai_dataset__timeouts
type google_vertex_ai_dataset

val google_vertex_ai_dataset :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_vertex_ai_dataset__timeouts ->
  display_name:string prop ->
  metadata_schema_uri:string prop ->
  encryption_spec:google_vertex_ai_dataset__encryption_spec list ->
  string ->
  unit
