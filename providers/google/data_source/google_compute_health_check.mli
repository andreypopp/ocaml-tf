(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type grpc_health_check = {
  grpc_service_name : string prop;  (** grpc_service_name *)
  port : float prop;  (** port *)
  port_name : string prop;  (** port_name *)
  port_specification : string prop;  (** port_specification *)
}

type http2_health_check = {
  host : string prop;  (** host *)
  port : float prop;  (** port *)
  port_name : string prop;  (** port_name *)
  port_specification : string prop;  (** port_specification *)
  proxy_header : string prop;  (** proxy_header *)
  request_path : string prop;  (** request_path *)
  response : string prop;  (** response *)
}

type http_health_check = {
  host : string prop;  (** host *)
  port : float prop;  (** port *)
  port_name : string prop;  (** port_name *)
  port_specification : string prop;  (** port_specification *)
  proxy_header : string prop;  (** proxy_header *)
  request_path : string prop;  (** request_path *)
  response : string prop;  (** response *)
}

type https_health_check = {
  host : string prop;  (** host *)
  port : float prop;  (** port *)
  port_name : string prop;  (** port_name *)
  port_specification : string prop;  (** port_specification *)
  proxy_header : string prop;  (** proxy_header *)
  request_path : string prop;  (** request_path *)
  response : string prop;  (** response *)
}

type log_config = { enable : bool prop  (** enable *) }

type ssl_health_check = {
  port : float prop;  (** port *)
  port_name : string prop;  (** port_name *)
  port_specification : string prop;  (** port_specification *)
  proxy_header : string prop;  (** proxy_header *)
  request : string prop;  (** request *)
  response : string prop;  (** response *)
}

type tcp_health_check = {
  port : float prop;  (** port *)
  port_name : string prop;  (** port_name *)
  port_specification : string prop;  (** port_specification *)
  proxy_header : string prop;  (** proxy_header *)
  request : string prop;  (** request *)
  response : string prop;  (** response *)
}

type google_compute_health_check

val google_compute_health_check :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_compute_health_check

val yojson_of_google_compute_health_check :
  google_compute_health_check -> json

(** RESOURCE REGISTRATION *)

type t = private {
  check_interval_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  grpc_health_check : grpc_health_check list prop;
  healthy_threshold : float prop;
  http2_health_check : http2_health_check list prop;
  http_health_check : http_health_check list prop;
  https_health_check : https_health_check list prop;
  id : string prop;
  log_config : log_config list prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  ssl_health_check : ssl_health_check list prop;
  tcp_health_check : tcp_health_check list prop;
  timeout_sec : float prop;
  type_ : string prop;
  unhealthy_threshold : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
