(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type spec__listener__port_mapping = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** spec__listener__port_mapping *)

type spec__listener = {
  port_mapping : spec__listener__port_mapping list;
}
[@@deriving yojson_of]
(** spec__listener *)

type spec = { listener : spec__listener list } [@@deriving yojson_of]
(** spec *)

type aws_appmesh_virtual_router = {
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  spec : spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_router *)

let spec__listener__port_mapping ~port ~protocol () :
    spec__listener__port_mapping =
  { port; protocol }

let spec__listener ~port_mapping () : spec__listener =
  { port_mapping }

let spec ~listener () : spec = { listener }

let aws_appmesh_virtual_router ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec () : aws_appmesh_virtual_router =
  { id; mesh_name; mesh_owner; name; tags; tags_all; spec }

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

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~spec __resource_id =
  let __resource_type = "aws_appmesh_virtual_router" in
  let __resource =
    aws_appmesh_virtual_router ?id ?mesh_owner ?tags ?tags_all
      ~mesh_name ~name ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_virtual_router __resource);
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
