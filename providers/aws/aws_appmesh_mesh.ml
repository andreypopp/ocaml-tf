(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__egress_filter = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** spec__egress_filter *)

type spec = { egress_filter : spec__egress_filter list }
[@@deriving yojson_of]
(** spec *)

type aws_appmesh_mesh = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  spec : spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_mesh *)

let spec__egress_filter ?type_ () : spec__egress_filter = { type_ }
let spec ~egress_filter () : spec = { egress_filter }

let aws_appmesh_mesh ?id ?tags ?tags_all ~name ~spec () :
    aws_appmesh_mesh =
  { id; name; tags; tags_all; spec }

type t = {
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~spec __id =
  let __type = "aws_appmesh_mesh" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
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
      yojson_of_aws_appmesh_mesh
        (aws_appmesh_mesh ?id ?tags ?tags_all ~name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
