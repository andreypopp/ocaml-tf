(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__provider__virtual_node = {
  virtual_node_name : string prop;  (** virtual_node_name *)
}
[@@deriving yojson_of]
(** spec__provider__virtual_node *)

type spec__provider__virtual_router = {
  virtual_router_name : string prop;  (** virtual_router_name *)
}
[@@deriving yojson_of]
(** spec__provider__virtual_router *)

type spec__provider = {
  virtual_node : spec__provider__virtual_node list;
  virtual_router : spec__provider__virtual_router list;
}
[@@deriving yojson_of]
(** spec__provider *)

type spec = { provider : spec__provider list } [@@deriving yojson_of]
(** spec *)

type aws_appmesh_virtual_service = {
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
(** aws_appmesh_virtual_service *)

let spec__provider__virtual_node ~virtual_node_name () :
    spec__provider__virtual_node =
  { virtual_node_name }

let spec__provider__virtual_router ~virtual_router_name () :
    spec__provider__virtual_router =
  { virtual_router_name }

let spec__provider ~virtual_node ~virtual_router () : spec__provider
    =
  { virtual_node; virtual_router }

let spec ~provider () : spec = { provider }

let aws_appmesh_virtual_service ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec () : aws_appmesh_virtual_service =
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
  let __type = "aws_appmesh_virtual_service" in
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
      yojson_of_aws_appmesh_virtual_service
        (aws_appmesh_virtual_service ?id ?mesh_owner ?tags ?tags_all
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
