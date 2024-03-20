(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__grpc_route__action__target__virtual_service

val spec__grpc_route__action__target__virtual_service :
  virtual_service_name:string prop ->
  unit ->
  spec__grpc_route__action__target__virtual_service

type spec__grpc_route__action__target

val spec__grpc_route__action__target :
  ?port:float prop ->
  virtual_service:
    spec__grpc_route__action__target__virtual_service list ->
  unit ->
  spec__grpc_route__action__target

type spec__grpc_route__action

val spec__grpc_route__action :
  target:spec__grpc_route__action__target list ->
  unit ->
  spec__grpc_route__action

type spec__grpc_route__match

val spec__grpc_route__match :
  ?port:float prop ->
  service_name:string prop ->
  unit ->
  spec__grpc_route__match

type spec__grpc_route

val spec__grpc_route :
  action:spec__grpc_route__action list ->
  match_:spec__grpc_route__match list ->
  unit ->
  spec__grpc_route

type spec__http2_route__action__rewrite__hostname

val spec__http2_route__action__rewrite__hostname :
  default_target_hostname:string prop ->
  unit ->
  spec__http2_route__action__rewrite__hostname

type spec__http2_route__action__rewrite__path

val spec__http2_route__action__rewrite__path :
  exact:string prop ->
  unit ->
  spec__http2_route__action__rewrite__path

type spec__http2_route__action__rewrite__prefix

val spec__http2_route__action__rewrite__prefix :
  ?default_prefix:string prop ->
  ?value:string prop ->
  unit ->
  spec__http2_route__action__rewrite__prefix

type spec__http2_route__action__rewrite

val spec__http2_route__action__rewrite :
  hostname:spec__http2_route__action__rewrite__hostname list ->
  path:spec__http2_route__action__rewrite__path list ->
  prefix:spec__http2_route__action__rewrite__prefix list ->
  unit ->
  spec__http2_route__action__rewrite

type spec__http2_route__action__target__virtual_service

val spec__http2_route__action__target__virtual_service :
  virtual_service_name:string prop ->
  unit ->
  spec__http2_route__action__target__virtual_service

type spec__http2_route__action__target

val spec__http2_route__action__target :
  ?port:float prop ->
  virtual_service:
    spec__http2_route__action__target__virtual_service list ->
  unit ->
  spec__http2_route__action__target

type spec__http2_route__action

val spec__http2_route__action :
  rewrite:spec__http2_route__action__rewrite list ->
  target:spec__http2_route__action__target list ->
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
  range:spec__http2_route__match__header__match__range list ->
  unit ->
  spec__http2_route__match__header__match

type spec__http2_route__match__header

val spec__http2_route__match__header :
  ?invert:bool prop ->
  name:string prop ->
  match_:spec__http2_route__match__header__match list ->
  unit ->
  spec__http2_route__match__header

type spec__http2_route__match__hostname

val spec__http2_route__match__hostname :
  ?exact:string prop ->
  ?suffix:string prop ->
  unit ->
  spec__http2_route__match__hostname

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
  name:string prop ->
  match_:spec__http2_route__match__query_parameter__match list ->
  unit ->
  spec__http2_route__match__query_parameter

type spec__http2_route__match

val spec__http2_route__match :
  ?port:float prop ->
  ?prefix:string prop ->
  header:spec__http2_route__match__header list ->
  hostname:spec__http2_route__match__hostname list ->
  path:spec__http2_route__match__path list ->
  query_parameter:spec__http2_route__match__query_parameter list ->
  unit ->
  spec__http2_route__match

type spec__http2_route

val spec__http2_route :
  action:spec__http2_route__action list ->
  match_:spec__http2_route__match list ->
  unit ->
  spec__http2_route

type spec__http_route__action__rewrite__hostname

val spec__http_route__action__rewrite__hostname :
  default_target_hostname:string prop ->
  unit ->
  spec__http_route__action__rewrite__hostname

type spec__http_route__action__rewrite__path

val spec__http_route__action__rewrite__path :
  exact:string prop ->
  unit ->
  spec__http_route__action__rewrite__path

type spec__http_route__action__rewrite__prefix

val spec__http_route__action__rewrite__prefix :
  ?default_prefix:string prop ->
  ?value:string prop ->
  unit ->
  spec__http_route__action__rewrite__prefix

type spec__http_route__action__rewrite

val spec__http_route__action__rewrite :
  hostname:spec__http_route__action__rewrite__hostname list ->
  path:spec__http_route__action__rewrite__path list ->
  prefix:spec__http_route__action__rewrite__prefix list ->
  unit ->
  spec__http_route__action__rewrite

type spec__http_route__action__target__virtual_service

val spec__http_route__action__target__virtual_service :
  virtual_service_name:string prop ->
  unit ->
  spec__http_route__action__target__virtual_service

type spec__http_route__action__target

val spec__http_route__action__target :
  ?port:float prop ->
  virtual_service:
    spec__http_route__action__target__virtual_service list ->
  unit ->
  spec__http_route__action__target

type spec__http_route__action

val spec__http_route__action :
  rewrite:spec__http_route__action__rewrite list ->
  target:spec__http_route__action__target list ->
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
  range:spec__http_route__match__header__match__range list ->
  unit ->
  spec__http_route__match__header__match

type spec__http_route__match__header

val spec__http_route__match__header :
  ?invert:bool prop ->
  name:string prop ->
  match_:spec__http_route__match__header__match list ->
  unit ->
  spec__http_route__match__header

type spec__http_route__match__hostname

val spec__http_route__match__hostname :
  ?exact:string prop ->
  ?suffix:string prop ->
  unit ->
  spec__http_route__match__hostname

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
  name:string prop ->
  match_:spec__http_route__match__query_parameter__match list ->
  unit ->
  spec__http_route__match__query_parameter

type spec__http_route__match

val spec__http_route__match :
  ?port:float prop ->
  ?prefix:string prop ->
  header:spec__http_route__match__header list ->
  hostname:spec__http_route__match__hostname list ->
  path:spec__http_route__match__path list ->
  query_parameter:spec__http_route__match__query_parameter list ->
  unit ->
  spec__http_route__match

type spec__http_route

val spec__http_route :
  action:spec__http_route__action list ->
  match_:spec__http_route__match list ->
  unit ->
  spec__http_route

type spec

val spec :
  ?priority:float prop ->
  grpc_route:spec__grpc_route list ->
  http2_route:spec__http2_route list ->
  http_route:spec__http_route list ->
  unit ->
  spec

type aws_appmesh_gateway_route

val aws_appmesh_gateway_route :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_gateway_name:string prop ->
  spec:spec list ->
  unit ->
  aws_appmesh_gateway_route

val yojson_of_aws_appmesh_gateway_route :
  aws_appmesh_gateway_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  virtual_gateway_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_gateway_name:string prop ->
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
  virtual_gateway_name:string prop ->
  spec:spec list ->
  string ->
  t Tf_core.resource
