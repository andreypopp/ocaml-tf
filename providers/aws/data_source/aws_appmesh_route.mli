(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__tcp_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__tcp_route__timeout = {
  idle : spec__tcp_route__timeout__idle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** idle *)
}

type spec__tcp_route__match = { port : float prop  (** port *) }

type spec__tcp_route__action__weighted_target = {
  port : float prop;  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}

type spec__tcp_route__action = {
  weighted_target : spec__tcp_route__action__weighted_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** weighted_target *)
}

type spec__tcp_route = {
  action : spec__tcp_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** action *)
  match_ : spec__tcp_route__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
  timeout : spec__tcp_route__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** timeout *)
}

type spec__http_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__http_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__http_route__timeout = {
  idle : spec__http_route__timeout__idle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** idle *)
  per_request : spec__http_route__timeout__per_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** per_request *)
}

type spec__http_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__http_route__retry_policy = {
  http_retry_events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  per_retry_timeout :
    spec__http_route__retry_policy__per_retry_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** per_retry_timeout *)
  tcp_retry_events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tcp_retry_events *)
}

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
  method_ : string prop; [@key "method"]  (** method *)
  path : spec__http_route__match__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** path *)
  port : float prop;  (** port *)
  prefix : string prop;  (** prefix *)
  query_parameter : spec__http_route__match__query_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** query_parameter *)
  scheme : string prop;  (** scheme *)
}

type spec__http_route__action__weighted_target = {
  port : float prop;  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}

type spec__http_route__action = {
  weighted_target : spec__http_route__action__weighted_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** weighted_target *)
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
  retry_policy : spec__http_route__retry_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** retry_policy *)
  timeout : spec__http_route__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** timeout *)
}

type spec__http2_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__http2_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__http2_route__timeout = {
  idle : spec__http2_route__timeout__idle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** idle *)
  per_request : spec__http2_route__timeout__per_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** per_request *)
}

type spec__http2_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__http2_route__retry_policy = {
  http_retry_events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  per_retry_timeout :
    spec__http2_route__retry_policy__per_retry_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** per_retry_timeout *)
  tcp_retry_events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tcp_retry_events *)
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
  method_ : string prop; [@key "method"]  (** method *)
  path : spec__http2_route__match__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** path *)
  port : float prop;  (** port *)
  prefix : string prop;  (** prefix *)
  query_parameter : spec__http2_route__match__query_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** query_parameter *)
  scheme : string prop;  (** scheme *)
}

type spec__http2_route__action__weighted_target = {
  port : float prop;  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}

type spec__http2_route__action = {
  weighted_target : spec__http2_route__action__weighted_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** weighted_target *)
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
  retry_policy : spec__http2_route__retry_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** retry_policy *)
  timeout : spec__http2_route__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** timeout *)
}

type spec__grpc_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__grpc_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__grpc_route__timeout = {
  idle : spec__grpc_route__timeout__idle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** idle *)
  per_request : spec__grpc_route__timeout__per_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** per_request *)
}

type spec__grpc_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__grpc_route__retry_policy = {
  grpc_retry_events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** grpc_retry_events *)
  http_retry_events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  per_retry_timeout :
    spec__grpc_route__retry_policy__per_retry_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** per_retry_timeout *)
  tcp_retry_events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tcp_retry_events *)
}

type spec__grpc_route__match__metadata__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}

type spec__grpc_route__match__metadata__match = {
  exact : string prop;  (** exact *)
  prefix : string prop;  (** prefix *)
  range : spec__grpc_route__match__metadata__match__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** range *)
  regex : string prop;  (** regex *)
  suffix : string prop;  (** suffix *)
}

type spec__grpc_route__match__metadata = {
  invert : bool prop;  (** invert *)
  match_ : spec__grpc_route__match__metadata__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
  name : string prop;  (** name *)
}

type spec__grpc_route__match = {
  metadata : spec__grpc_route__match__metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** metadata *)
  method_name : string prop;  (** method_name *)
  port : float prop;  (** port *)
  prefix : string prop;  (** prefix *)
  service_name : string prop;  (** service_name *)
}

type spec__grpc_route__action__weighted_target = {
  port : float prop;  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}

type spec__grpc_route__action = {
  weighted_target : spec__grpc_route__action__weighted_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** weighted_target *)
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
  retry_policy : spec__grpc_route__retry_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** retry_policy *)
  timeout : spec__grpc_route__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** timeout *)
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
  tcp_route : spec__tcp_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tcp_route *)
}

type aws_appmesh_route

val aws_appmesh_route :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_router_name:string prop ->
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
  spec : spec list prop;
  tags : (string * string) list prop;
  virtual_router_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_router_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  virtual_router_name:string prop ->
  string ->
  t Tf_core.resource
