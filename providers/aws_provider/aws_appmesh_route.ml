(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appmesh_route__spec__grpc_route__action__weighted_target = {
  port : float option; [@option]  (** port *)
  virtual_node : string;  (** virtual_node *)
  weight : float;  (** weight *)
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
  end_ : float; [@key "end"]  (** end *)
  start : float;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__match__metadata__match__range *)

type aws_appmesh_route__spec__grpc_route__match__metadata__match = {
  exact : string option; [@option]  (** exact *)
  prefix : string option; [@option]  (** prefix *)
  regex : string option; [@option]  (** regex *)
  suffix : string option; [@option]  (** suffix *)
  range :
    aws_appmesh_route__spec__grpc_route__match__metadata__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__match__metadata__match *)

type aws_appmesh_route__spec__grpc_route__match__metadata = {
  invert : bool option; [@option]  (** invert *)
  name : string;  (** name *)
  match_ :
    aws_appmesh_route__spec__grpc_route__match__metadata__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__match__metadata *)

type aws_appmesh_route__spec__grpc_route__match = {
  method_name : string option; [@option]  (** method_name *)
  port : float option; [@option]  (** port *)
  prefix : string option; [@option]  (** prefix *)
  service_name : string option; [@option]  (** service_name *)
  metadata :
    aws_appmesh_route__spec__grpc_route__match__metadata list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__match *)

type aws_appmesh_route__spec__grpc_route__retry_policy__per_retry_timeout = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__retry_policy__per_retry_timeout *)

type aws_appmesh_route__spec__grpc_route__retry_policy = {
  grpc_retry_events : string list option; [@option]
      (** grpc_retry_events *)
  http_retry_events : string list option; [@option]
      (** http_retry_events *)
  max_retries : float;  (** max_retries *)
  tcp_retry_events : string list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    aws_appmesh_route__spec__grpc_route__retry_policy__per_retry_timeout
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__retry_policy *)

type aws_appmesh_route__spec__grpc_route__timeout__idle = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__grpc_route__timeout__idle *)

type aws_appmesh_route__spec__grpc_route__timeout__per_request = {
  unit : string;  (** unit *)
  value : float;  (** value *)
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
  port : float option; [@option]  (** port *)
  virtual_node : string;  (** virtual_node *)
  weight : float;  (** weight *)
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
  end_ : float; [@key "end"]  (** end *)
  start : float;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__header__match__range *)

type aws_appmesh_route__spec__http2_route__match__header__match = {
  exact : string option; [@option]  (** exact *)
  prefix : string option; [@option]  (** prefix *)
  regex : string option; [@option]  (** regex *)
  suffix : string option; [@option]  (** suffix *)
  range :
    aws_appmesh_route__spec__http2_route__match__header__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__header__match *)

type aws_appmesh_route__spec__http2_route__match__header = {
  invert : bool option; [@option]  (** invert *)
  name : string;  (** name *)
  match_ :
    aws_appmesh_route__spec__http2_route__match__header__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__header *)

type aws_appmesh_route__spec__http2_route__match__path = {
  exact : string option; [@option]  (** exact *)
  regex : string option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__path *)

type aws_appmesh_route__spec__http2_route__match__query_parameter__match = {
  exact : string option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__query_parameter__match *)

type aws_appmesh_route__spec__http2_route__match__query_parameter = {
  name : string;  (** name *)
  match_ :
    aws_appmesh_route__spec__http2_route__match__query_parameter__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match__query_parameter *)

type aws_appmesh_route__spec__http2_route__match = {
  method_ : string option; [@option] [@key "method"]  (** method *)
  port : float option; [@option]  (** port *)
  prefix : string option; [@option]  (** prefix *)
  scheme : string option; [@option]  (** scheme *)
  header : aws_appmesh_route__spec__http2_route__match__header list;
  path : aws_appmesh_route__spec__http2_route__match__path list;
  query_parameter :
    aws_appmesh_route__spec__http2_route__match__query_parameter list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__match *)

type aws_appmesh_route__spec__http2_route__retry_policy__per_retry_timeout = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__retry_policy__per_retry_timeout *)

type aws_appmesh_route__spec__http2_route__retry_policy = {
  http_retry_events : string list option; [@option]
      (** http_retry_events *)
  max_retries : float;  (** max_retries *)
  tcp_retry_events : string list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    aws_appmesh_route__spec__http2_route__retry_policy__per_retry_timeout
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__retry_policy *)

type aws_appmesh_route__spec__http2_route__timeout__idle = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http2_route__timeout__idle *)

type aws_appmesh_route__spec__http2_route__timeout__per_request = {
  unit : string;  (** unit *)
  value : float;  (** value *)
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
  port : float option; [@option]  (** port *)
  virtual_node : string;  (** virtual_node *)
  weight : float;  (** weight *)
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
  end_ : float; [@key "end"]  (** end *)
  start : float;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__header__match__range *)

type aws_appmesh_route__spec__http_route__match__header__match = {
  exact : string option; [@option]  (** exact *)
  prefix : string option; [@option]  (** prefix *)
  regex : string option; [@option]  (** regex *)
  suffix : string option; [@option]  (** suffix *)
  range :
    aws_appmesh_route__spec__http_route__match__header__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__header__match *)

type aws_appmesh_route__spec__http_route__match__header = {
  invert : bool option; [@option]  (** invert *)
  name : string;  (** name *)
  match_ :
    aws_appmesh_route__spec__http_route__match__header__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__header *)

type aws_appmesh_route__spec__http_route__match__path = {
  exact : string option; [@option]  (** exact *)
  regex : string option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__path *)

type aws_appmesh_route__spec__http_route__match__query_parameter__match = {
  exact : string option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__query_parameter__match *)

type aws_appmesh_route__spec__http_route__match__query_parameter = {
  name : string;  (** name *)
  match_ :
    aws_appmesh_route__spec__http_route__match__query_parameter__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match__query_parameter *)

type aws_appmesh_route__spec__http_route__match = {
  method_ : string option; [@option] [@key "method"]  (** method *)
  port : float option; [@option]  (** port *)
  prefix : string option; [@option]  (** prefix *)
  scheme : string option; [@option]  (** scheme *)
  header : aws_appmesh_route__spec__http_route__match__header list;
  path : aws_appmesh_route__spec__http_route__match__path list;
  query_parameter :
    aws_appmesh_route__spec__http_route__match__query_parameter list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__match *)

type aws_appmesh_route__spec__http_route__retry_policy__per_retry_timeout = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__retry_policy__per_retry_timeout *)

type aws_appmesh_route__spec__http_route__retry_policy = {
  http_retry_events : string list option; [@option]
      (** http_retry_events *)
  max_retries : float;  (** max_retries *)
  tcp_retry_events : string list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    aws_appmesh_route__spec__http_route__retry_policy__per_retry_timeout
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__retry_policy *)

type aws_appmesh_route__spec__http_route__timeout__idle = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__http_route__timeout__idle *)

type aws_appmesh_route__spec__http_route__timeout__per_request = {
  unit : string;  (** unit *)
  value : float;  (** value *)
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
  port : float option; [@option]  (** port *)
  virtual_node : string;  (** virtual_node *)
  weight : float;  (** weight *)
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
  port : float option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec__tcp_route__match *)

type aws_appmesh_route__spec__tcp_route__timeout__idle = {
  unit : string;  (** unit *)
  value : float;  (** value *)
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
  priority : float option; [@option]  (** priority *)
  grpc_route : aws_appmesh_route__spec__grpc_route list;
  http2_route : aws_appmesh_route__spec__http2_route list;
  http_route : aws_appmesh_route__spec__http_route list;
  tcp_route : aws_appmesh_route__spec__tcp_route list;
}
[@@deriving yojson_of]
(** aws_appmesh_route__spec *)

type aws_appmesh_route = {
  mesh_name : string;  (** mesh_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_router_name : string;  (** virtual_router_name *)
  spec : aws_appmesh_route__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_route *)

let aws_appmesh_route ?tags ~mesh_name ~name ~virtual_router_name
    ~spec __resource_id =
  let __resource_type = "aws_appmesh_route" in
  let __resource =
    { mesh_name; name; tags; virtual_router_name; spec }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_route __resource);
  ()
