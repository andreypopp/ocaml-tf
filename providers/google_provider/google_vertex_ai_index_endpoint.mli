(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_index_endpoint__private_service_connect_config
type google_vertex_ai_index_endpoint__timeouts
type google_vertex_ai_index_endpoint

type t = private {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  public_endpoint_domain_name : string prop;
  public_endpoint_enabled : bool prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_vertex_ai_index_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?project:string prop ->
  ?public_endpoint_enabled:bool prop ->
  ?region:string prop ->
  ?timeouts:google_vertex_ai_index_endpoint__timeouts ->
  display_name:string prop ->
  private_service_connect_config:
    google_vertex_ai_index_endpoint__private_service_connect_config
    list ->
  string ->
  t
