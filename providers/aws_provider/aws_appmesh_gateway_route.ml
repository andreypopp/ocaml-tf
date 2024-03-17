(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appmesh_gateway_route__spec__grpc_route__action__target__virtual_service = {
  virtual_service_name : string prop;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__grpc_route__action__target__virtual_service *)

type aws_appmesh_gateway_route__spec__grpc_route__action__target = {
  port : float prop option; [@option]  (** port *)
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
  port : float prop option; [@option]  (** port *)
  service_name : string prop;  (** service_name *)
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
  default_target_hostname : string prop;
      (** default_target_hostname *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__rewrite__hostname *)

type aws_appmesh_gateway_route__spec__http2_route__action__rewrite__path = {
  exact : string prop;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__rewrite__path *)

type aws_appmesh_gateway_route__spec__http2_route__action__rewrite__prefix = {
  default_prefix : string prop option; [@option]
      (** default_prefix *)
  value : string prop option; [@option]  (** value *)
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
  virtual_service_name : string prop;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__action__target__virtual_service *)

type aws_appmesh_gateway_route__spec__http2_route__action__target = {
  port : float prop option; [@option]  (** port *)
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
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__header__match__range *)

type aws_appmesh_gateway_route__spec__http2_route__match__header__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
  regex : string prop option; [@option]  (** regex *)
  suffix : string prop option; [@option]  (** suffix *)
  range :
    aws_appmesh_gateway_route__spec__http2_route__match__header__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__header__match *)

type aws_appmesh_gateway_route__spec__http2_route__match__header = {
  invert : bool prop option; [@option]  (** invert *)
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_gateway_route__spec__http2_route__match__header__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__header *)

type aws_appmesh_gateway_route__spec__http2_route__match__hostname = {
  exact : string prop option; [@option]  (** exact *)
  suffix : string prop option; [@option]  (** suffix *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__hostname *)

type aws_appmesh_gateway_route__spec__http2_route__match__path = {
  exact : string prop option; [@option]  (** exact *)
  regex : string prop option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__path *)

type aws_appmesh_gateway_route__spec__http2_route__match__query_parameter__match = {
  exact : string prop option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__query_parameter__match *)

type aws_appmesh_gateway_route__spec__http2_route__match__query_parameter = {
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_gateway_route__spec__http2_route__match__query_parameter__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http2_route__match__query_parameter *)

type aws_appmesh_gateway_route__spec__http2_route__match = {
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
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
  default_target_hostname : string prop;
      (** default_target_hostname *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__rewrite__hostname *)

type aws_appmesh_gateway_route__spec__http_route__action__rewrite__path = {
  exact : string prop;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__rewrite__path *)

type aws_appmesh_gateway_route__spec__http_route__action__rewrite__prefix = {
  default_prefix : string prop option; [@option]
      (** default_prefix *)
  value : string prop option; [@option]  (** value *)
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
  virtual_service_name : string prop;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__action__target__virtual_service *)

type aws_appmesh_gateway_route__spec__http_route__action__target = {
  port : float prop option; [@option]  (** port *)
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
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__header__match__range *)

type aws_appmesh_gateway_route__spec__http_route__match__header__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
  regex : string prop option; [@option]  (** regex *)
  suffix : string prop option; [@option]  (** suffix *)
  range :
    aws_appmesh_gateway_route__spec__http_route__match__header__match__range
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__header__match *)

type aws_appmesh_gateway_route__spec__http_route__match__header = {
  invert : bool prop option; [@option]  (** invert *)
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_gateway_route__spec__http_route__match__header__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__header *)

type aws_appmesh_gateway_route__spec__http_route__match__hostname = {
  exact : string prop option; [@option]  (** exact *)
  suffix : string prop option; [@option]  (** suffix *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__hostname *)

type aws_appmesh_gateway_route__spec__http_route__match__path = {
  exact : string prop option; [@option]  (** exact *)
  regex : string prop option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__path *)

type aws_appmesh_gateway_route__spec__http_route__match__query_parameter__match = {
  exact : string prop option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__query_parameter__match *)

type aws_appmesh_gateway_route__spec__http_route__match__query_parameter = {
  name : string prop;  (** name *)
  match_ :
    aws_appmesh_gateway_route__spec__http_route__match__query_parameter__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec__http_route__match__query_parameter *)

type aws_appmesh_gateway_route__spec__http_route__match = {
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
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
  priority : float prop option; [@option]  (** priority *)
  grpc_route : aws_appmesh_gateway_route__spec__grpc_route list;
  http2_route : aws_appmesh_gateway_route__spec__http2_route list;
  http_route : aws_appmesh_gateway_route__spec__http_route list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route__spec *)

type aws_appmesh_gateway_route = {
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_gateway_name : string prop;  (** virtual_gateway_name *)
  spec : aws_appmesh_gateway_route__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route *)

let aws_appmesh_gateway_route ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~virtual_gateway_name ~spec __resource_id =
  let __resource_type = "aws_appmesh_gateway_route" in
  let __resource =
    {
      id;
      mesh_name;
      mesh_owner;
      name;
      tags;
      tags_all;
      virtual_gateway_name;
      spec;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_gateway_route __resource);
  ()
