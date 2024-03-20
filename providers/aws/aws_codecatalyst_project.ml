(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_codecatalyst_project = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  space_name : string prop;  (** space_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_codecatalyst_project *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_codecatalyst_project ?description ?id ?timeouts ~display_name
    ~space_name () : aws_codecatalyst_project =
  { description; display_name; id; space_name; timeouts }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  space_name : string prop;
}

let make ?description ?id ?timeouts ~display_name ~space_name __id =
  let __type = "aws_codecatalyst_project" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       space_name = Prop.computed __type __id "space_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecatalyst_project
        (aws_codecatalyst_project ?description ?id ?timeouts
           ~display_name ~space_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~display_name
    ~space_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~display_name ~space_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
