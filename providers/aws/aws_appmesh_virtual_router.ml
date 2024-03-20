(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name ~spec __id
    =
  let __type = "aws_appmesh_virtual_router" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       mesh_name = Prop.computed __type __id "mesh_name";
       mesh_owner = Prop.computed __type __id "mesh_owner";
       name = Prop.computed __type __id "name";
       resource_owner = Prop.computed __type __id "resource_owner";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_virtual_router
        (aws_appmesh_virtual_router ?id ?mesh_owner ?tags ?tags_all
           ~mesh_name ~name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
