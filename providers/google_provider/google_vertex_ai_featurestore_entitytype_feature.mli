(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_featurestore_entitytype_feature__timeouts
type google_vertex_ai_featurestore_entitytype_feature

val google_vertex_ai_featurestore_entitytype_feature :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?timeouts:
    google_vertex_ai_featurestore_entitytype_feature__timeouts ->
  entitytype:string prop ->
  value_type:string prop ->
  string ->
  unit
