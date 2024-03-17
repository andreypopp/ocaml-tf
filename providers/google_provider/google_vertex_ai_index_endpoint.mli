(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_index_endpoint__private_service_connect_config
type google_vertex_ai_index_endpoint__timeouts
type google_vertex_ai_index_endpoint

val google_vertex_ai_index_endpoint :
  ?description:string ->
  ?labels:(string * string) list ->
  ?network:string ->
  ?public_endpoint_enabled:bool ->
  ?region:string ->
  ?timeouts:google_vertex_ai_index_endpoint__timeouts ->
  display_name:string ->
  private_service_connect_config:
    google_vertex_ai_index_endpoint__private_service_connect_config
    list ->
  string ->
  unit
