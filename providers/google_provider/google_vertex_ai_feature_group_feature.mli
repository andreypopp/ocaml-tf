(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_group_feature__timeouts
type google_vertex_ai_feature_group_feature

val google_vertex_ai_feature_group_feature :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?version_column_name:string prop ->
  ?timeouts:google_vertex_ai_feature_group_feature__timeouts ->
  feature_group:string prop ->
  name:string prop ->
  region:string prop ->
  string ->
  unit
