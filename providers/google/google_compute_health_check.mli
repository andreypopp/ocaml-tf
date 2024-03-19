(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type grpc_health_check

val grpc_health_check :
  ?grpc_service_name:string prop ->
  ?port:float prop ->
  ?port_name:string prop ->
  ?port_specification:string prop ->
  unit ->
  grpc_health_check

type http2_health_check

val http2_health_check :
  ?host:string prop ->
  ?port:float prop ->
  ?port_name:string prop ->
  ?port_specification:string prop ->
  ?proxy_header:string prop ->
  ?request_path:string prop ->
  ?response:string prop ->
  unit ->
  http2_health_check

type http_health_check

val http_health_check :
  ?host:string prop ->
  ?port:float prop ->
  ?port_name:string prop ->
  ?port_specification:string prop ->
  ?proxy_header:string prop ->
  ?request_path:string prop ->
  ?response:string prop ->
  unit ->
  http_health_check

type https_health_check

val https_health_check :
  ?host:string prop ->
  ?port:float prop ->
  ?port_name:string prop ->
  ?port_specification:string prop ->
  ?proxy_header:string prop ->
  ?request_path:string prop ->
  ?response:string prop ->
  unit ->
  https_health_check

type log_config

val log_config : ?enable:bool prop -> unit -> log_config

type ssl_health_check

val ssl_health_check :
  ?port:float prop ->
  ?port_name:string prop ->
  ?port_specification:string prop ->
  ?proxy_header:string prop ->
  ?request:string prop ->
  ?response:string prop ->
  unit ->
  ssl_health_check

type tcp_health_check

val tcp_health_check :
  ?port:float prop ->
  ?port_name:string prop ->
  ?port_specification:string prop ->
  ?proxy_header:string prop ->
  ?request:string prop ->
  ?response:string prop ->
  unit ->
  tcp_health_check

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_health_check

val google_compute_health_check :
  ?check_interval_sec:float prop ->
  ?description:string prop ->
  ?healthy_threshold:float prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeout_sec:float prop ->
  ?unhealthy_threshold:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  grpc_health_check:grpc_health_check list ->
  http2_health_check:http2_health_check list ->
  http_health_check:http_health_check list ->
  https_health_check:https_health_check list ->
  log_config:log_config list ->
  ssl_health_check:ssl_health_check list ->
  tcp_health_check:tcp_health_check list ->
  unit ->
  google_compute_health_check

val yojson_of_google_compute_health_check :
  google_compute_health_check -> json

(** RESOURCE REGISTRATION *)

type t = private {
  check_interval_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  healthy_threshold : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  timeout_sec : float prop;
  type_ : string prop;
  unhealthy_threshold : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?check_interval_sec:float prop ->
  ?description:string prop ->
  ?healthy_threshold:float prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeout_sec:float prop ->
  ?unhealthy_threshold:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  grpc_health_check:grpc_health_check list ->
  http2_health_check:http2_health_check list ->
  http_health_check:http_health_check list ->
  https_health_check:https_health_check list ->
  log_config:log_config list ->
  ssl_health_check:ssl_health_check list ->
  tcp_health_check:tcp_health_check list ->
  string ->
  t
