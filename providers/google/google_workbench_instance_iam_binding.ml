(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description: string  prop option; [@option]
  expression: string prop; 
  title: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type google_workbench_instance_iam_binding = {
  id: string  prop option; [@option]
  location: string  prop option; [@option]
  members: string  prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  name: string prop; 
  project: string  prop option; [@option]
  role: string prop; 
  condition: condition list; [@default []] [@yojson_drop_default Stdlib.( = )]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let condition ?description ~expression ~title () =
  ({
    description;
    expression;
    title;
  } : condition);;

let google_workbench_instance_iam_binding ?id ?location ?project ?(condition=[]) ~members ~name ~role () =
  ({
    id;
    location;
    members;
    name;
    project;
    role;
    condition;
  } : google_workbench_instance_iam_binding);;

type t = {
  tf_name: string;
  etag: string prop;
  id: string prop;
  location: string prop;
  members: string list prop;
  name: string prop;
  project: string prop;
  role: string prop;
}

let make ?id ?location ?project ?(condition=[]) ~members ~name ~role __id =
  let __type = "google_workbench_instance_iam_binding" in
  let __attrs = ({
    tf_name = __id;
    etag = Prop.computed __type __id "etag";
    id = Prop.computed __type __id "id";
    location = Prop.computed __type __id "location";
    members = Prop.computed __type __id "members";
    name = Prop.computed __type __id "name";
    project = Prop.computed __type __id "project";
    role = Prop.computed __type __id "role";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_google_workbench_instance_iam_binding (google_workbench_instance_iam_binding ?id ?location ?project ~condition ~members ~name ~role ());
    attrs=__attrs;
  };;

let register ?tf_module ?id ?location ?project ?(condition=[]) ~members ~name ~role __id =
  let (r : _ Tf_core.resource) = make ?id ?location ?project ~condition ~members ~name ~role __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

