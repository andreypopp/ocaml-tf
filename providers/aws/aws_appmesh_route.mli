(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__grpc_route__action__weighted_target

val spec__grpc_route__action__weighted_target :
  ?port:float prop ->
  virtual_node:string prop ->
  weight:float prop ->
  unit ->
  spec__grpc_route__action__weighted_target

type spec__grpc_route__action

val spec__grpc_route__action :
  weighted_target:spec__grpc_route__action__weighted_target list ->
  unit ->
  spec__grpc_route__action

type spec__grpc_route__match__metadata__match__range

val spec__grpc_route__match__metadata__match__range :
  end_:float prop ->
  start:float prop ->
  unit ->
  spec__grpc_route__match__metadata__match__range

type spec__grpc_route__match__metadata__match

val spec__grpc_route__match__metadata__match :
  ?exact:string prop ->
  ?prefix:string prop ->
  ?regex:string prop ->
  ?suffix:string prop ->
  ?range:spec__grpc_route__match__metadata__match__range list ->
  unit ->
  spec__grpc_route__match__metadata__match

type spec__grpc_route__match__metadata

val spec__grpc_route__match__metadata :
  ?invert:bool prop ->
  ?match_:spec__grpc_route__match__metadata__match list ->
  name:string prop ->
  unit ->
  spec__grpc_route__match__metadata

type spec__grpc_route__match

val spec__grpc_route__match :
  ?method_name:string prop ->
  ?port:float prop ->
  ?prefix:string prop ->
  ?service_name:string prop ->
  metadata:spec__grpc_route__match__metadata list ->
  unit ->
  spec__grpc_route__match

type spec__grpc_route__retry_policy__per_retry_timeout

val spec__grpc_route__retry_policy__per_retry_timeout :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__grpc_route__retry_policy__per_retry_timeout

type spec__grpc_route__retry_policy

val spec__grpc_route__retry_policy :
  ?grpc_retry_events:string prop list ->
  ?http_retry_events:string prop list ->
  ?tcp_retry_events:string prop list ->
  max_retries:float prop ->
  per_retry_timeout:
    spec__grpc_route__retry_policy__per_retry_timeout list ->
  unit ->
  spec__grpc_route__retry_policy

type spec__grpc_route__timeout__idle

val spec__grpc_route__timeout__idle :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__grpc_route__timeout__idle

type spec__grpc_route__timeout__per_request

val spec__grpc_route__timeout__per_request :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__grpc_route__timeout__per_request

type spec__grpc_route__timeout

val spec__grpc_route__timeout :
  ?idle:spec__grpc_route__timeout__idle list ->
  ?per_request:spec__grpc_route__timeout__per_request list ->
  unit ->
  spec__grpc_route__timeout

type spec__grpc_route

val spec__grpc_route :
  ?match_:spec__grpc_route__match list ->
  ?retry_policy:spec__grpc_route__retry_policy list ->
  ?timeout:spec__grpc_route__timeout list ->
  action:spec__grpc_route__action list ->
  unit ->
  spec__grpc_route

type spec__http2_route__action__weighted_target

val spec__http2_route__action__weighted_target :
  ?port:float prop ->
  virtual_node:string prop ->
  weight:float prop ->
  unit ->
  spec__http2_route__action__weighted_target

type spec__http2_route__action

val spec__http2_route__action :
  weighted_target:spec__http2_route__action__weighted_target list ->
  unit ->
  spec__http2_route__action

type spec__http2_route__match__header__match__range

val spec__http2_route__match__header__match__range :
  end_:float prop ->
  start:float prop ->
  unit ->
  spec__http2_route__match__header__match__range

type spec__http2_route__match__header__match

val spec__http2_route__match__header__match :
  ?exact:string prop ->
  ?prefix:string prop ->
  ?regex:string prop ->
  ?suffix:string prop ->
  ?range:spec__http2_route__match__header__match__range list ->
  unit ->
  spec__http2_route__match__header__match

type spec__http2_route__match__header

val spec__http2_route__match__header :
  ?invert:bool prop ->
  ?match_:spec__http2_route__match__header__match list ->
  name:string prop ->
  unit ->
  spec__http2_route__match__header

type spec__http2_route__match__path

val spec__http2_route__match__path :
  ?exact:string prop ->
  ?regex:string prop ->
  unit ->
  spec__http2_route__match__path

type spec__http2_route__match__query_parameter__match

val spec__http2_route__match__query_parameter__match :
  ?exact:string prop ->
  unit ->
  spec__http2_route__match__query_parameter__match

type spec__http2_route__match__query_parameter

val spec__http2_route__match__query_parameter :
  ?match_:spec__http2_route__match__query_parameter__match list ->
  name:string prop ->
  unit ->
  spec__http2_route__match__query_parameter

type spec__http2_route__match

val spec__http2_route__match :
  ?method_:string prop ->
  ?port:float prop ->
  ?prefix:string prop ->
  ?scheme:string prop ->
  ?path:spec__http2_route__match__path list ->
  header:spec__http2_route__match__header list ->
  query_parameter:spec__http2_route__match__query_parameter list ->
  unit ->
  spec__http2_route__match

type spec__http2_route__retry_policy__per_retry_timeout

val spec__http2_route__retry_policy__per_retry_timeout :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__http2_route__retry_policy__per_retry_timeout

type spec__http2_route__retry_policy

val spec__http2_route__retry_policy :
  ?http_retry_events:string prop list ->
  ?tcp_retry_events:string prop list ->
  max_retries:float prop ->
  per_retry_timeout:
    spec__http2_route__retry_policy__per_retry_timeout list ->
  unit ->
  spec__http2_route__retry_policy

type spec__http2_route__timeout__idle

val spec__http2_route__timeout__idle :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__http2_route__timeout__idle

type spec__http2_route__timeout__per_request

val spec__http2_route__timeout__per_request :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__http2_route__timeout__per_request

type spec__http2_route__timeout

val spec__http2_route__timeout :
  ?idle:spec__http2_route__timeout__idle list ->
  ?per_request:spec__http2_route__timeout__per_request list ->
  unit ->
  spec__http2_route__timeout

type spec__http2_route

val spec__http2_route :
  ?retry_policy:spec__http2_route__retry_policy list ->
  ?timeout:spec__http2_route__timeout list ->
  action:spec__http2_route__action list ->
  match_:spec__http2_route__match list ->
  unit ->
  spec__http2_route

type spec__http_route__action__weighted_target

val spec__http_route__action__weighted_target :
  ?port:float prop ->
  virtual_node:string prop ->
  weight:float prop ->
  unit ->
  spec__http_route__action__weighted_target

type spec__http_route__action

val spec__http_route__action :
  weighted_target:spec__http_route__action__weighted_target list ->
  unit ->
  spec__http_route__action

type spec__http_route__match__header__match__range

val spec__http_route__match__header__match__range :
  end_:float prop ->
  start:float prop ->
  unit ->
  spec__http_route__match__header__match__range

type spec__http_route__match__header__match

val spec__http_route__match__header__match :
  ?exact:string prop ->
  ?prefix:string prop ->
  ?regex:string prop ->
  ?suffix:string prop ->
  ?range:spec__http_route__match__header__match__range list ->
  unit ->
  spec__http_route__match__header__match

type spec__http_route__match__header

val spec__http_route__match__header :
  ?invert:bool prop ->
  ?match_:spec__http_route__match__header__match list ->
  name:string prop ->
  unit ->
  spec__http_route__match__header

type spec__http_route__match__path

val spec__http_route__match__path :
  ?exact:string prop ->
  ?regex:string prop ->
  unit ->
  spec__http_route__match__path

type spec__http_route__match__query_parameter__match

val spec__http_route__match__query_parameter__match :
  ?exact:string prop ->
  unit ->
  spec__http_route__match__query_parameter__match

type spec__http_route__match__query_parameter

val spec__http_route__match__query_parameter :
  ?match_:spec__http_route__match__query_parameter__match list ->
  name:string prop ->
  unit ->
  spec__http_route__match__query_parameter

type spec__http_route__match

val spec__http_route__match :
  ?method_:string prop ->
  ?port:float prop ->
  ?prefix:string prop ->
  ?scheme:string prop ->
  ?path:spec__http_route__match__path list ->
  header:spec__http_route__match__header list ->
  query_parameter:spec__http_route__match__query_parameter list ->
  unit ->
  spec__http_route__match

type spec__http_route__retry_policy__per_retry_timeout

val spec__http_route__retry_policy__per_retry_timeout :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__http_route__retry_policy__per_retry_timeout

type spec__http_route__retry_policy

val spec__http_route__retry_policy :
  ?http_retry_events:string prop list ->
  ?tcp_retry_events:string prop list ->
  max_retries:float prop ->
  per_retry_timeout:
    spec__http_route__retry_policy__per_retry_timeout list ->
  unit ->
  spec__http_route__retry_policy

type spec__http_route__timeout__idle

val spec__http_route__timeout__idle :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__http_route__timeout__idle

type spec__http_route__timeout__per_request

val spec__http_route__timeout__per_request :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__http_route__timeout__per_request

type spec__http_route__timeout

val spec__http_route__timeout :
  ?idle:spec__http_route__timeout__idle list ->
  ?per_request:spec__http_route__timeout__per_request list ->
  unit ->
  spec__http_route__timeout

type spec__http_route

val spec__http_route :
  ?retry_policy:spec__http_route__retry_policy list ->
  ?timeout:spec__http_route__timeout list ->
  action:spec__http_route__action list ->
  match_:spec__http_route__match list ->
  unit ->
  spec__http_route

type spec__tcp_route__action__weighted_target

val spec__tcp_route__action__weighted_target :
  ?port:float prop ->
  virtual_node:string prop ->
  weight:float prop ->
  unit ->
  spec__tcp_route__action__weighted_target

type spec__tcp_route__action

val spec__tcp_route__action :
  weighted_target:spec__tcp_route__action__weighted_target list ->
  unit ->
  spec__tcp_route__action

type spec__tcp_route__match

val spec__tcp_route__match :
  ?port:float prop -> unit -> spec__tcp_route__match

type spec__tcp_route__timeout__idle

val spec__tcp_route__timeout__idle :
  unit:string prop ->
  value:float prop ->
  unit ->
  spec__tcp_route__timeout__idle

type spec__tcp_route__timeout

val spec__tcp_route__timeout :
  ?idle:spec__tcp_route__timeout__idle list ->
  unit ->
  spec__tcp_route__timeout

type spec__tcp_route

val spec__tcp_route :
  ?match_:spec__tcp_route__match list ->
  ?timeout:spec__tcp_route__timeout list ->
  action:spec__tcp_route__action list ->
  unit ->
  spec__tcp_route

type spec

val spec :
  ?priority:float prop ->
  ?grpc_route:spec__grpc_route list ->
  ?http2_route:spec__http2_route list ->
  ?http_route:spec__http_route list ->
  ?tcp_route:spec__tcp_route list ->
  unit ->
  spec

type aws_appmesh_route

val aws_appmesh_route :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_router_name:string prop ->
  spec:spec list ->
  unit ->
  aws_appmesh_route

val yojson_of_aws_appmesh_route : aws_appmesh_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  virtual_router_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_router_name:string prop ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_router_name:string prop ->
  spec:spec list ->
  string ->
  t Tf_core.resource
