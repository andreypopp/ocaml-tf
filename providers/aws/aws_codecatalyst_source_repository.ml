(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_codecatalyst_source_repository = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project_name : string prop;  (** project_name *)
  space_name : string prop;  (** space_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_codecatalyst_source_repository *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_codecatalyst_source_repository ?description ?id ?timeouts
    ~name ~project_name ~space_name () :
    aws_codecatalyst_source_repository =
  { description; id; name; project_name; space_name; timeouts }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  project_name : string prop;
  space_name : string prop;
}

let make ?description ?id ?timeouts ~name ~project_name ~space_name
    __id =
  let __type = "aws_codecatalyst_source_repository" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project_name = Prop.computed __type __id "project_name";
       space_name = Prop.computed __type __id "space_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecatalyst_source_repository
        (aws_codecatalyst_source_repository ?description ?id
           ?timeouts ~name ~project_name ~space_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~project_name ~space_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~project_name ~space_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
