(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__http_route__match__query_parameter__match = {
  exact : string prop;  (** exact *)
}

type spec__http_route__match__query_parameter = {
  match_ : spec__http_route__match__query_parameter__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
  name : string prop;  (** name *)
}

type spec__http_route__match__path = {
  exact : string prop;  (** exact *)
  regex : string prop;  (** regex *)
}

type spec__http_route__match__hostname = {
  exact : string prop;  (** exact *)
  suffix : string prop;  (** suffix *)
}

type spec__http_route__match__header__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}

type spec__http_route__match__header__match = {
  exact : string prop;  (** exact *)
  prefix : string prop;  (** prefix *)
  range : spec__http_route__match__header__match__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** range *)
  regex : string prop;  (** regex *)
  suffix : string prop;  (** suffix *)
}

type spec__http_route__match__header = {
  invert : bool prop;  (** invert *)
  match_ : spec__http_route__match__header__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
  name : string prop;  (** name *)
}

type spec__http_route__match = {
  header : spec__http_route__match__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** header *)
  hostname : spec__http_route__match__hostname list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hostname *)
  path : spec__http_route__match__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** path *)
  port : float prop;  (** port *)
  prefix : string prop;  (** prefix *)
  query_parameter : spec__http_route__match__query_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** query_parameter *)
}

type spec__http_route__action__target__virtual_service = {
  virtual_service_name : string prop;  (** virtual_service_name *)
}

type spec__http_route__action__target = {
  port : float prop;  (** port *)
  virtual_service :
    spec__http_route__action__target__virtual_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_service *)
}

type spec__http_route__action__rewrite__prefix = {
  default_prefix : string prop;  (** default_prefix *)
  value : string prop;  (** value *)
}

type spec__http_route__action__rewrite__path = {
  exact : string prop;  (** exact *)
}

type spec__http_route__action__rewrite__hostname = {
  default_target_hostname : string prop;
      (** default_target_hostname *)
}

type spec__http_route__action__rewrite = {
  hostname : spec__http_route__action__rewrite__hostname list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hostname *)
  path : spec__http_route__action__rewrite__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** path *)
  prefix : spec__http_route__action__rewrite__prefix list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** prefix *)
}

type spec__http_route__action = {
  rewrite : spec__http_route__action__rewrite list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** rewrite *)
  target : spec__http_route__action__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target *)
}

type spec__http_route = {
  action : spec__http_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** action *)
  match_ : spec__http_route__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
}

type spec__http2_route__match__query_parameter__match = {
  exact : string prop;  (** exact *)
}

type spec__http2_route__match__query_parameter = {
  match_ : spec__http2_route__match__query_parameter__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
  name : string prop;  (** name *)
}

type spec__http2_route__match__path = {
  exact : string prop;  (** exact *)
  regex : string prop;  (** regex *)
}

type spec__http2_route__match__hostname = {
  exact : string prop;  (** exact *)
  suffix : string prop;  (** suffix *)
}

type spec__http2_route__match__header__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}

type spec__http2_route__match__header__match = {
  exact : string prop;  (** exact *)
  prefix : string prop;  (** prefix *)
  range : spec__http2_route__match__header__match__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** range *)
  regex : string prop;  (** regex *)
  suffix : string prop;  (** suffix *)
}

type spec__http2_route__match__header = {
  invert : bool prop;  (** invert *)
  match_ : spec__http2_route__match__header__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
  name : string prop;  (** name *)
}

type spec__http2_route__match = {
  header : spec__http2_route__match__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** header *)
  hostname : spec__http2_route__match__hostname list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hostname *)
  path : spec__http2_route__match__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** path *)
  port : float prop;  (** port *)
  prefix : string prop;  (** prefix *)
  query_parameter : spec__http2_route__match__query_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** query_parameter *)
}

type spec__http2_route__action__target__virtual_service = {
  virtual_service_name : string prop;  (** virtual_service_name *)
}

type spec__http2_route__action__target = {
  port : float prop;  (** port *)
  virtual_service :
    spec__http2_route__action__target__virtual_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_service *)
}

type spec__http2_route__action__rewrite__prefix = {
  default_prefix : string prop;  (** default_prefix *)
  value : string prop;  (** value *)
}

type spec__http2_route__action__rewrite__path = {
  exact : string prop;  (** exact *)
}

type spec__http2_route__action__rewrite__hostname = {
  default_target_hostname : string prop;
      (** default_target_hostname *)
}

type spec__http2_route__action__rewrite = {
  hostname : spec__http2_route__action__rewrite__hostname list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hostname *)
  path : spec__http2_route__action__rewrite__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** path *)
  prefix : spec__http2_route__action__rewrite__prefix list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** prefix *)
}

type spec__http2_route__action = {
  rewrite : spec__http2_route__action__rewrite list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** rewrite *)
  target : spec__http2_route__action__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target *)
}

type spec__http2_route = {
  action : spec__http2_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** action *)
  match_ : spec__http2_route__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
}

type spec__grpc_route__match = {
  port : float prop;  (** port *)
  service_name : string prop;  (** service_name *)
}

type spec__grpc_route__action__target__virtual_service = {
  virtual_service_name : string prop;  (** virtual_service_name *)
}

type spec__grpc_route__action__target = {
  port : float prop;  (** port *)
  virtual_service :
    spec__grpc_route__action__target__virtual_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_service *)
}

type spec__grpc_route__action = {
  target : spec__grpc_route__action__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target *)
}

type spec__grpc_route = {
  action : spec__grpc_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** action *)
  match_ : spec__grpc_route__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
}

type spec = {
  grpc_route : spec__grpc_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** grpc_route *)
  http2_route : spec__http2_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http2_route *)
  http_route : spec__http_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_route *)
  priority : float prop;  (** priority *)
}

type aws_appmesh_gateway_route

val aws_appmesh_gateway_route :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_gateway_name:string prop ->
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
  spec : spec list prop;
  tags : string Tf_core.assoc prop;
  virtual_gateway_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_gateway_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:string prop Tf_core.assoc ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_gateway_name:string prop ->
  string ->
  t Tf_core.resource
