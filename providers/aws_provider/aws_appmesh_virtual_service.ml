(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appmesh_virtual_service__spec__provider__virtual_node = {
  virtual_node_name : string;  (** virtual_node_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_service__spec__provider__virtual_node *)

type aws_appmesh_virtual_service__spec__provider__virtual_router = {
  virtual_router_name : string;  (** virtual_router_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_service__spec__provider__virtual_router *)

type aws_appmesh_virtual_service__spec__provider = {
  virtual_node :
    aws_appmesh_virtual_service__spec__provider__virtual_node list;
  virtual_router :
    aws_appmesh_virtual_service__spec__provider__virtual_router list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_service__spec__provider *)

type aws_appmesh_virtual_service__spec = {
  provider : aws_appmesh_virtual_service__spec__provider list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_service__spec *)

type aws_appmesh_virtual_service = {
  mesh_name : string;  (** mesh_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  spec : aws_appmesh_virtual_service__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_service *)

let aws_appmesh_virtual_service ?tags ~mesh_name ~name ~spec
    __resource_id =
  let __resource_type = "aws_appmesh_virtual_service" in
  let __resource = { mesh_name; name; tags; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_virtual_service __resource);
  ()
