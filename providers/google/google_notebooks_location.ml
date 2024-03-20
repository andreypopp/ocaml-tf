(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_notebooks_location = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** Name of the Location resource. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_notebooks_location *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_notebooks_location ?id ?name ?project ?timeouts () :
    google_notebooks_location =
  { id; name; project; timeouts }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?id ?name ?project ?timeouts __id =
  let __type = "google_notebooks_location" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_notebooks_location
        (google_notebooks_location ?id ?name ?project ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
