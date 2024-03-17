(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appmesh_route__spec__grpc_route__action__weighted_target = {
  port : float prop option; [@option]  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__action__weighted_target *)

type aws_appmesh_route__spec__grpc_route__action = {
  weighted_target :
    aws_appmesh_route__spec__grpc_route__action__weighted_target list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__action *)

type aws_appmesh_route__spec__grpc_route__match__metadata__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__match__metadata__match__range *)

type aws_appmesh_route__spec__grpc_route__match__metadata__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
  regex : string prop option; [@option]  (** regex *)
  suffix : string prop option; [@option]  (** suffix *)
  range :
    aws_appmesh_route__spec__grpc_route__match__metadata__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__match__metadata__match *)

type aws_appmesh_route__spec__grpc_route__match__metadata = {
  invert : bool prop option; [@option]  (** invert *)
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_route__spec__grpc_route__match__metadata__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__match__metadata *)

type aws_appmesh_route__spec__grpc_route__match = {
  method_name : string prop option; [@option]  (** method_name *)
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
  service_name : string prop option; [@option]  (** service_name *)
  metadata :
    aws_appmesh_route__spec__grpc_route__match__metadata list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__match *)

type aws_appmesh_route__spec__grpc_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__retry_policy__per_retry_timeout *)

type aws_appmesh_route__spec__grpc_route__retry_policy = {
  grpc_retry_events : string prop list option; [@option]
      (** grpc_retry_events *)
  http_retry_events : string prop list option; [@option]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  tcp_retry_events : string prop list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    aws_appmesh_route__spec__grpc_route__retry_policy__per_retry_timeout
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__retry_policy *)

type aws_appmesh_route__spec__grpc_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__timeout__idle *)

type aws_appmesh_route__spec__grpc_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__timeout__per_request *)

type aws_appmesh_route__spec__grpc_route__timeout = {
  idle : aws_appmesh_route__spec__grpc_route__timeout__idle list;
  per_request :
    aws_appmesh_route__spec__grpc_route__timeout__per_request list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__timeout *)

type aws_appmesh_route__spec__grpc_route = {
  action : aws_appmesh_route__spec__grpc_route__action list;
  match_ : aws_appmesh_route__spec__grpc_route__match list;
  retry_policy :
    aws_appmesh_route__spec__grpc_route__retry_policy list;
  timeout : aws_appmesh_route__spec__grpc_route__timeout list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route *)

type aws_appmesh_route__spec__http2_route__action__weighted_target = {
  port : float prop option; [@option]  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__action__weighted_target *)

type aws_appmesh_route__spec__http2_route__action = {
  weighted_target :
    aws_appmesh_route__spec__http2_route__action__weighted_target
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__action *)

type aws_appmesh_route__spec__http2_route__match__header__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__header__match__range *)

type aws_appmesh_route__spec__http2_route__match__header__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
  regex : string prop option; [@option]  (** regex *)
  suffix : string prop option; [@option]  (** suffix *)
  range :
    aws_appmesh_route__spec__http2_route__match__header__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__header__match *)

type aws_appmesh_route__spec__http2_route__match__header = {
  invert : bool prop option; [@option]  (** invert *)
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_route__spec__http2_route__match__header__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__header *)

type aws_appmesh_route__spec__http2_route__match__path = {
  exact : string prop option; [@option]  (** exact *)
  regex : string prop option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__path *)

type aws_appmesh_route__spec__http2_route__match__query_parameter__match = {
  exact : string prop option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__query_parameter__match *)

type aws_appmesh_route__spec__http2_route__match__query_parameter = {
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_route__spec__http2_route__match__query_parameter__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__query_parameter *)

type aws_appmesh_route__spec__http2_route__match = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
  scheme : string prop option; [@option]  (** scheme *)
  header : aws_appmesh_route__spec__http2_route__match__header list;
  path : aws_appmesh_route__spec__http2_route__match__path list;
  query_parameter :
    aws_appmesh_route__spec__http2_route__match__query_parameter list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match *)

type aws_appmesh_route__spec__http2_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__retry_policy__per_retry_timeout *)

type aws_appmesh_route__spec__http2_route__retry_policy = {
  http_retry_events : string prop list option; [@option]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  tcp_retry_events : string prop list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    aws_appmesh_route__spec__http2_route__retry_policy__per_retry_timeout
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__retry_policy *)

type aws_appmesh_route__spec__http2_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__timeout__idle *)

type aws_appmesh_route__spec__http2_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__timeout__per_request *)

type aws_appmesh_route__spec__http2_route__timeout = {
  idle : aws_appmesh_route__spec__http2_route__timeout__idle list;
  per_request :
    aws_appmesh_route__spec__http2_route__timeout__per_request list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__timeout *)

type aws_appmesh_route__spec__http2_route = {
  action : aws_appmesh_route__spec__http2_route__action list;
  match_ : aws_appmesh_route__spec__http2_route__match list;
  retry_policy :
    aws_appmesh_route__spec__http2_route__retry_policy list;
  timeout : aws_appmesh_route__spec__http2_route__timeout list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route *)

type aws_appmesh_route__spec__http_route__action__weighted_target = {
  port : float prop option; [@option]  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__action__weighted_target *)

type aws_appmesh_route__spec__http_route__action = {
  weighted_target :
    aws_appmesh_route__spec__http_route__action__weighted_target list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__action *)

type aws_appmesh_route__spec__http_route__match__header__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__header__match__range *)

type aws_appmesh_route__spec__http_route__match__header__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
  regex : string prop option; [@option]  (** regex *)
  suffix : string prop option; [@option]  (** suffix *)
  range :
    aws_appmesh_route__spec__http_route__match__header__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__header__match *)

type aws_appmesh_route__spec__http_route__match__header = {
  invert : bool prop option; [@option]  (** invert *)
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_route__spec__http_route__match__header__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__header *)

type aws_appmesh_route__spec__http_route__match__path = {
  exact : string prop option; [@option]  (** exact *)
  regex : string prop option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__path *)

type aws_appmesh_route__spec__http_route__match__query_parameter__match = {
  exact : string prop option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__query_parameter__match *)

type aws_appmesh_route__spec__http_route__match__query_parameter = {
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_route__spec__http_route__match__query_parameter__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__query_parameter *)

type aws_appmesh_route__spec__http_route__match = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
  scheme : string prop option; [@option]  (** scheme *)
  header : aws_appmesh_route__spec__http_route__match__header list;
  path : aws_appmesh_route__spec__http_route__match__path list;
  query_parameter :
    aws_appmesh_route__spec__http_route__match__query_parameter list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match *)

type aws_appmesh_route__spec__http_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__retry_policy__per_retry_timeout *)

type aws_appmesh_route__spec__http_route__retry_policy = {
  http_retry_events : string prop list option; [@option]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  tcp_retry_events : string prop list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    aws_appmesh_route__spec__http_route__retry_policy__per_retry_timeout
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__retry_policy *)

type aws_appmesh_route__spec__http_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__timeout__idle *)

type aws_appmesh_route__spec__http_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__timeout__per_request *)

type aws_appmesh_route__spec__http_route__timeout = {
  idle : aws_appmesh_route__spec__http_route__timeout__idle list;
  per_request :
    aws_appmesh_route__spec__http_route__timeout__per_request list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__timeout *)

type aws_appmesh_route__spec__http_route = {
  action : aws_appmesh_route__spec__http_route__action list;
  match_ : aws_appmesh_route__spec__http_route__match list;
  retry_policy :
    aws_appmesh_route__spec__http_route__retry_policy list;
  timeout : aws_appmesh_route__spec__http_route__timeout list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route *)

type aws_appmesh_route__spec__tcp_route__action__weighted_target = {
  port : float prop option; [@option]  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__tcp_route__action__weighted_target *)

type aws_appmesh_route__spec__tcp_route__action = {
  weighted_target :
    aws_appmesh_route__spec__tcp_route__action__weighted_target list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__tcp_route__action *)

type aws_appmesh_route__spec__tcp_route__match = {
  port : float prop option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__tcp_route__match *)

type aws_appmesh_route__spec__tcp_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__tcp_route__timeout__idle *)

type aws_appmesh_route__spec__tcp_route__timeout = {
  idle : aws_appmesh_route__spec__tcp_route__timeout__idle list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__tcp_route__timeout *)

type aws_appmesh_route__spec__tcp_route = {
  action : aws_appmesh_route__spec__tcp_route__action list;
  match_ : aws_appmesh_route__spec__tcp_route__match list;
  timeout : aws_appmesh_route__spec__tcp_route__timeout list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__tcp_route *)

type aws_appmesh_route__spec = {
  priority : float prop option; [@option]  (** priority *)
  grpc_route : aws_appmesh_route__spec__grpc_route list;
  http2_route : aws_appmesh_route__spec__http2_route list;
  http_route : aws_appmesh_route__spec__http_route list;
  tcp_route : aws_appmesh_route__spec__tcp_route list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec *)

type aws_appmesh_route = {
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_router_name : string prop;  (** virtual_router_name *)
  spec : aws_appmesh_route__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_route *)

type t = {
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

let aws_appmesh_route ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~virtual_router_name ~spec __resource_id =
  let __resource_type = "aws_appmesh_route" in
  let __resource =
    ({
       id;
       mesh_name;
       mesh_owner;
       name;
       tags;
       tags_all;
       virtual_router_name;
       spec;
     }
      : aws_appmesh_route)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_route __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_date =
         Prop.computed __resource_type __resource_id
           "last_updated_date";
       mesh_name =
         Prop.computed __resource_type __resource_id "mesh_name";
       mesh_owner =
         Prop.computed __resource_type __resource_id "mesh_owner";
       name = Prop.computed __resource_type __resource_id "name";
       resource_owner =
         Prop.computed __resource_type __resource_id "resource_owner";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       virtual_router_name =
         Prop.computed __resource_type __resource_id
           "virtual_router_name";
     }
      : t)
  in
  __resource_attributes
