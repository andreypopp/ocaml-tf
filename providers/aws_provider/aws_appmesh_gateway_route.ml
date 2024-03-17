(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appmesh_gateway_route__spec__grpc_route__action__target__virtual_service = {
  virtual_service_name : string;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__grpc_route__action__target__virtual_service *)

type aws_appmesh_gateway_route__spec__grpc_route__action__target = {
  port : float option; [@option]  (** port *)
  virtual_service :
    aws_appmesh_gateway_route__spec__grpc_route__action__target__virtual_service
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__grpc_route__action__target *)

type aws_appmesh_gateway_route__spec__grpc_route__action = {
  target :
    aws_appmesh_gateway_route__spec__grpc_route__action__target list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__grpc_route__action *)

type aws_appmesh_gateway_route__spec__grpc_route__match = {
  port : float option; [@option]  (** port *)
  service_name : string;  (** service_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__grpc_route__match *)

type aws_appmesh_gateway_route__spec__grpc_route = {
  action : aws_appmesh_gateway_route__spec__grpc_route__action list;
  match_ : aws_appmesh_gateway_route__spec__grpc_route__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__grpc_route *)

type aws_appmesh_gateway_route__spec__http2_route__action__rewrite__hostname = {
  default_target_hostname : string;  (** default_target_hostname *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__rewrite__hostname *)

type aws_appmesh_gateway_route__spec__http2_route__action__rewrite__path = {
  exact : string;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__rewrite__path *)

type aws_appmesh_gateway_route__spec__http2_route__action__rewrite__prefix = {
  default_prefix : string option; [@option]  (** default_prefix *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__rewrite__prefix *)

type aws_appmesh_gateway_route__spec__http2_route__action__rewrite = {
  hostname :
    aws_appmesh_gateway_route__spec__http2_route__action__rewrite__hostname
    list;
  path :
    aws_appmesh_gateway_route__spec__http2_route__action__rewrite__path
    list;
  prefix :
    aws_appmesh_gateway_route__spec__http2_route__action__rewrite__prefix
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__rewrite *)

type aws_appmesh_gateway_route__spec__http2_route__action__target__virtual_service = {
  virtual_service_name : string;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__target__virtual_service *)

type aws_appmesh_gateway_route__spec__http2_route__action__target = {
  port : float option; [@option]  (** port *)
  virtual_service :
    aws_appmesh_gateway_route__spec__http2_route__action__target__virtual_service
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__target *)

type aws_appmesh_gateway_route__spec__http2_route__action = {
  rewrite :
    aws_appmesh_gateway_route__spec__http2_route__action__rewrite
    list;
  target :
    aws_appmesh_gateway_route__spec__http2_route__action__target list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action *)

type aws_appmesh_gateway_route__spec__http2_route__match__header__match__range = {
  end_ : float; [@key "end"]  (** end *)
  start : float;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__header__match__range *)

type aws_appmesh_gateway_route__spec__http2_route__match__header__match = {
  exact : string option; [@option]  (** exact *)
  prefix : string option; [@option]  (** prefix *)
  regex : string option; [@option]  (** regex *)
  suffix : string option; [@option]  (** suffix *)
  range :
    aws_appmesh_gateway_route__spec__http2_route__match__header__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__header__match *)

type aws_appmesh_gateway_route__spec__http2_route__match__header = {
  invert : bool option; [@option]  (** invert *)
  name : string;  (** name *)
  match_ :
    aws_appmesh_gateway_route__spec__http2_route__match__header__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__header *)

type aws_appmesh_gateway_route__spec__http2_route__match__hostname = {
  exact : string option; [@option]  (** exact *)
  suffix : string option; [@option]  (** suffix *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__hostname *)

type aws_appmesh_gateway_route__spec__http2_route__match__path = {
  exact : string option; [@option]  (** exact *)
  regex : string option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__path *)

type aws_appmesh_gateway_route__spec__http2_route__match__query_parameter__match = {
  exact : string option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__query_parameter__match *)

type aws_appmesh_gateway_route__spec__http2_route__match__query_parameter = {
  name : string;  (** name *)
  match_ :
    aws_appmesh_gateway_route__spec__http2_route__match__query_parameter__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__query_parameter *)

type aws_appmesh_gateway_route__spec__http2_route__match = {
  port : float option; [@option]  (** port *)
  prefix : string option; [@option]  (** prefix *)
  header :
    aws_appmesh_gateway_route__spec__http2_route__match__header list;
  hostname :
    aws_appmesh_gateway_route__spec__http2_route__match__hostname
    list;
  path :
    aws_appmesh_gateway_route__spec__http2_route__match__path list;
  query_parameter :
    aws_appmesh_gateway_route__spec__http2_route__match__query_parameter
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match *)

type aws_appmesh_gateway_route__spec__http2_route = {
  action : aws_appmesh_gateway_route__spec__http2_route__action list;
  match_ : aws_appmesh_gateway_route__spec__http2_route__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route *)

type aws_appmesh_gateway_route__spec__http_route__action__rewrite__hostname = {
  default_target_hostname : string;  (** default_target_hostname *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__rewrite__hostname *)

type aws_appmesh_gateway_route__spec__http_route__action__rewrite__path = {
  exact : string;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__rewrite__path *)

type aws_appmesh_gateway_route__spec__http_route__action__rewrite__prefix = {
  default_prefix : string option; [@option]  (** default_prefix *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__rewrite__prefix *)

type aws_appmesh_gateway_route__spec__http_route__action__rewrite = {
  hostname :
    aws_appmesh_gateway_route__spec__http_route__action__rewrite__hostname
    list;
  path :
    aws_appmesh_gateway_route__spec__http_route__action__rewrite__path
    list;
  prefix :
    aws_appmesh_gateway_route__spec__http_route__action__rewrite__prefix
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__rewrite *)

type aws_appmesh_gateway_route__spec__http_route__action__target__virtual_service = {
  virtual_service_name : string;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__target__virtual_service *)

type aws_appmesh_gateway_route__spec__http_route__action__target = {
  port : float option; [@option]  (** port *)
  virtual_service :
    aws_appmesh_gateway_route__spec__http_route__action__target__virtual_service
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__target *)

type aws_appmesh_gateway_route__spec__http_route__action = {
  rewrite :
    aws_appmesh_gateway_route__spec__http_route__action__rewrite list;
  target :
    aws_appmesh_gateway_route__spec__http_route__action__target list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action *)

type aws_appmesh_gateway_route__spec__http_route__match__header__match__range = {
  end_ : float; [@key "end"]  (** end *)
  start : float;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__header__match__range *)

type aws_appmesh_gateway_route__spec__http_route__match__header__match = {
  exact : string option; [@option]  (** exact *)
  prefix : string option; [@option]  (** prefix *)
  regex : string option; [@option]  (** regex *)
  suffix : string option; [@option]  (** suffix *)
  range :
    aws_appmesh_gateway_route__spec__http_route__match__header__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__header__match *)

type aws_appmesh_gateway_route__spec__http_route__match__header = {
  invert : bool option; [@option]  (** invert *)
  name : string;  (** name *)
  match_ :
    aws_appmesh_gateway_route__spec__http_route__match__header__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__header *)

type aws_appmesh_gateway_route__spec__http_route__match__hostname = {
  exact : string option; [@option]  (** exact *)
  suffix : string option; [@option]  (** suffix *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__hostname *)

type aws_appmesh_gateway_route__spec__http_route__match__path = {
  exact : string option; [@option]  (** exact *)
  regex : string option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__path *)

type aws_appmesh_gateway_route__spec__http_route__match__query_parameter__match = {
  exact : string option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__query_parameter__match *)

type aws_appmesh_gateway_route__spec__http_route__match__query_parameter = {
  name : string;  (** name *)
  match_ :
    aws_appmesh_gateway_route__spec__http_route__match__query_parameter__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__query_parameter *)

type aws_appmesh_gateway_route__spec__http_route__match = {
  port : float option; [@option]  (** port *)
  prefix : string option; [@option]  (** prefix *)
  header :
    aws_appmesh_gateway_route__spec__http_route__match__header list;
  hostname :
    aws_appmesh_gateway_route__spec__http_route__match__hostname list;
  path :
    aws_appmesh_gateway_route__spec__http_route__match__path list;
  query_parameter :
    aws_appmesh_gateway_route__spec__http_route__match__query_parameter
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match *)

type aws_appmesh_gateway_route__spec__http_route = {
  action : aws_appmesh_gateway_route__spec__http_route__action list;
  match_ : aws_appmesh_gateway_route__spec__http_route__match list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route *)

type aws_appmesh_gateway_route__spec = {
  priority : float option; [@option]  (** priority *)
  grpc_route : aws_appmesh_gateway_route__spec__grpc_route list;
  http2_route : aws_appmesh_gateway_route__spec__http2_route list;
  http_route : aws_appmesh_gateway_route__spec__http_route list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec *)

type aws_appmesh_gateway_route = {
  mesh_name : string;  (** mesh_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_gateway_name : string;  (** virtual_gateway_name *)
  spec : aws_appmesh_gateway_route__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route *)

let aws_appmesh_gateway_route ?tags ~mesh_name ~name
    ~virtual_gateway_name ~spec __resource_id =
  let __resource_type = "aws_appmesh_gateway_route" in
  let __resource =
    { mesh_name; name; tags; virtual_gateway_name; spec }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_gateway_route __resource);
  ()
