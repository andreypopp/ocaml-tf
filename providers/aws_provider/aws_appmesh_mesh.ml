(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appmesh_mesh__spec__egress_filter = {
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_appmesh_mesh__spec__egress_filter *)

type aws_appmesh_mesh__spec = {
  egress_filter : aws_appmesh_mesh__spec__egress_filter list;
}
[@@deriving yojson_of]
(** aws_appmesh_mesh__spec *)

type aws_appmesh_mesh = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  spec : aws_appmesh_mesh__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_mesh *)

let aws_appmesh_mesh ?id ?tags ?tags_all ~name ~spec __resource_id =
  let __resource_type = "aws_appmesh_mesh" in
  let __resource = { id; name; tags; tags_all; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_mesh __resource);
  ()
