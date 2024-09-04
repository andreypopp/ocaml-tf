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
  ?hostname:spec__http2_route__action__rewrite__hostname list ->
  ?path:spec__http2_route__action__rewrite__path list ->
  ?prefix:spec__http2_route__action__rewrite__prefix list ->
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
  ?rewrite:spec__http2_route__action__rewrite list ->
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
  ?match_:spec__http2_route__match__query_parameter__match list ->
  name:string prop ->
  unit ->
  spec__http2_route__match__query_parameter

type spec__http2_route__match

val spec__http2_route__match :
  ?port:float prop ->
  ?prefix:string prop ->
  ?hostname:spec__http2_route__match__hostname list ->
  ?path:spec__http2_route__match__path list ->
  header:spec__http2_route__match__header list ->
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
  ?hostname:spec__http_route__action__rewrite__hostname list ->
  ?path:spec__http_route__action__rewrite__path list ->
  ?prefix:spec__http_route__action__rewrite__prefix list ->
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
  ?rewrite:spec__http_route__action__rewrite list ->
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
  ?match_:spec__http_route__match__query_parameter__match list ->
  name:string prop ->
  unit ->
  spec__http_route__match__query_parameter

type spec__http_route__match

val spec__http_route__match :
  ?port:float prop ->
  ?prefix:string prop ->
  ?hostname:spec__http_route__match__hostname list ->
  ?path:spec__http_route__match__path list ->
  header:spec__http_route__match__header list ->
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
  ?grpc_route:spec__grpc_route list ->
  ?http2_route:spec__http2_route list ->
  ?http_route:spec__http_route list ->
  unit ->
  spec

type aws_appmesh_gateway_route

val aws_appmesh_gateway_route :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  virtual_gateway_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_gateway_name:string prop ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_gateway_name:string prop ->
  spec:spec list ->
  string ->
  t Tf_core.resource
