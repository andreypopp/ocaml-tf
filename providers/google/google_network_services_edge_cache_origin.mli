(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_v4_authentication

val aws_v4_authentication :
  access_key_id:string prop ->
  origin_region:string prop ->
  secret_access_key_version:string prop ->
  unit ->
  aws_v4_authentication

type origin_override_action__header_action__request_headers_to_add

val origin_override_action__header_action__request_headers_to_add :
  ?replace:bool prop ->
  header_name:string prop ->
  header_value:string prop ->
  unit ->
  origin_override_action__header_action__request_headers_to_add

type origin_override_action__header_action

val origin_override_action__header_action :
  ?request_headers_to_add:
    origin_override_action__header_action__request_headers_to_add
    list ->
  unit ->
  origin_override_action__header_action

type origin_override_action__url_rewrite

val origin_override_action__url_rewrite :
  ?host_rewrite:string prop ->
  unit ->
  origin_override_action__url_rewrite

type origin_override_action

val origin_override_action :
  ?header_action:origin_override_action__header_action list ->
  ?url_rewrite:origin_override_action__url_rewrite list ->
  unit ->
  origin_override_action

type origin_redirect

val origin_redirect :
  ?redirect_conditions:string prop list -> unit -> origin_redirect

type timeout

val timeout :
  ?connect_timeout:string prop ->
  ?max_attempts_timeout:string prop ->
  ?read_timeout:string prop ->
  ?response_timeout:string prop ->
  unit ->
  timeout

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_services_edge_cache_origin

val google_network_services_edge_cache_origin :
  ?description:string prop ->
  ?failover_origin:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?max_attempts:float prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?retry_conditions:string prop list ->
  ?aws_v4_authentication:aws_v4_authentication list ->
  ?origin_override_action:origin_override_action list ->
  ?origin_redirect:origin_redirect list ->
  ?timeout:timeout list ->
  ?timeouts:timeouts ->
  name:string prop ->
  origin_address:string prop ->
  unit ->
  google_network_services_edge_cache_origin

val yojson_of_google_network_services_edge_cache_origin :
  google_network_services_edge_cache_origin -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  failover_origin : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  max_attempts : float prop;
  name : string prop;
  origin_address : string prop;
  port : float prop;
  project : string prop;
  protocol : string prop;
  retry_conditions : string list prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?failover_origin:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?max_attempts:float prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?retry_conditions:string prop list ->
  ?aws_v4_authentication:aws_v4_authentication list ->
  ?origin_override_action:origin_override_action list ->
  ?origin_redirect:origin_redirect list ->
  ?timeout:timeout list ->
  ?timeouts:timeouts ->
  name:string prop ->
  origin_address:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?failover_origin:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?max_attempts:float prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?retry_conditions:string prop list ->
  ?aws_v4_authentication:aws_v4_authentication list ->
  ?origin_override_action:origin_override_action list ->
  ?origin_redirect:origin_redirect list ->
  ?timeout:timeout list ->
  ?timeouts:timeouts ->
  name:string prop ->
  origin_address:string prop ->
  string ->
  t Tf_core.resource
