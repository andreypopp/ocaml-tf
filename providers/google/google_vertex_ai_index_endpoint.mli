(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_service_connect_config

val private_service_connect_config :
  ?project_allowlist:string prop list ->
  enable_private_service_connect:bool prop ->
  unit ->
  private_service_connect_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_index_endpoint

val google_vertex_ai_index_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?project:string prop ->
  ?public_endpoint_enabled:bool prop ->
  ?region:string prop ->
  ?private_service_connect_config:private_service_connect_config list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  unit ->
  google_vertex_ai_index_endpoint

val yojson_of_google_vertex_ai_index_endpoint :
  google_vertex_ai_index_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?project:string prop ->
  ?public_endpoint_enabled:bool prop ->
  ?region:string prop ->
  ?private_service_connect_config:private_service_connect_config list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?project:string prop ->
  ?public_endpoint_enabled:bool prop ->
  ?region:string prop ->
  ?private_service_connect_config:private_service_connect_config list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
