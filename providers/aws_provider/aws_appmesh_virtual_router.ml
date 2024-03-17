(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appmesh_virtual_router__spec__listener__port_mapping = {
  port : float;  (** port *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_router__spec__listener__port_mapping *)

type aws_appmesh_virtual_router__spec__listener = {
  port_mapping :
    aws_appmesh_virtual_router__spec__listener__port_mapping list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_router__spec__listener *)

type aws_appmesh_virtual_router__spec = {
  listener : aws_appmesh_virtual_router__spec__listener list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_router__spec *)

type aws_appmesh_virtual_router = {
  mesh_name : string;  (** mesh_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  spec : aws_appmesh_virtual_router__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_router *)

let aws_appmesh_virtual_router ?tags ~mesh_name ~name ~spec
    __resource_id =
  let __resource_type = "aws_appmesh_virtual_router" in
  let __resource = { mesh_name; name; tags; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_virtual_router __resource);
  ()
