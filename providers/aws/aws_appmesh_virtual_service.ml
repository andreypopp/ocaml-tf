(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appmesh_virtual_service__spec__provider__virtual_node = {
  virtual_node_name : string prop;  (** virtual_node_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_service__spec__provider__virtual_node *)

type aws_appmesh_virtual_service__spec__provider__virtual_router = {
  virtual_router_name : string prop;  (** virtual_router_name *)
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
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  spec : aws_appmesh_virtual_service__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_service *)

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
}

let aws_appmesh_virtual_service ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec __resource_id =
  let __resource_type = "aws_appmesh_virtual_service" in
  let __resource =
    ({ id; mesh_name; mesh_owner; name; tags; tags_all; spec }
      : aws_appmesh_virtual_service)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_virtual_service __resource);
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
     }
      : t)
  in
  __resource_attributes
