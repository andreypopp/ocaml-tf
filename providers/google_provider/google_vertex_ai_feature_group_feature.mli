(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_group_feature__timeouts
type google_vertex_ai_feature_group_feature

val google_vertex_ai_feature_group_feature :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_vertex_ai_feature_group_feature__timeouts ->
  feature_group:string ->
  name:string ->
  region:string ->
  string ->
  unit
