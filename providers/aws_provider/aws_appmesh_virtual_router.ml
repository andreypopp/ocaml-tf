(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
  id : string option; [@option]  (** id *)
  mesh_name : string;  (** mesh_name *)
  mesh_owner : string option; [@option]  (** mesh_owner *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  spec : aws_appmesh_virtual_router__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_router *)

let aws_appmesh_virtual_router ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec __resource_id =
  let __resource_type = "aws_appmesh_virtual_router" in
  let __resource =
    { id; mesh_name; mesh_owner; name; tags; tags_all; spec }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_virtual_router __resource);
  ()
