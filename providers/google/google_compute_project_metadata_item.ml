(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_project_metadata_item = {
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** The metadata key to set. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  value : string prop;
      (** The value to set for the given metadata key. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_project_metadata_item *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_project_metadata_item ?id ?project ?timeouts ~key
    ~value () : google_compute_project_metadata_item =
  { id; key; project; value; timeouts }

type t = {
  id : string prop;
  key : string prop;
  project : string prop;
  value : string prop;
}

let make ?id ?project ?timeouts ~key ~value __id =
  let __type = "google_compute_project_metadata_item" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       project = Prop.computed __type __id "project";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_project_metadata_item
        (google_compute_project_metadata_item ?id ?project ?timeouts
           ~key ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~key ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~key ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
