(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_featurestore_entitytype_feature__timeouts
type google_vertex_ai_featurestore_entitytype_feature

val google_vertex_ai_featurestore_entitytype_feature :
  ?description:string ->
  ?labels:(string * string) list ->
  ?name:string ->
  ?timeouts:
    google_vertex_ai_featurestore_entitytype_feature__timeouts ->
  entitytype:string ->
  value_type:string ->
  string ->
  unit
