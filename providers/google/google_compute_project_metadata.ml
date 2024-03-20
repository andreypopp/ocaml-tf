(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_project_metadata = {
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list;
      (** A series of key value pairs. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_project_metadata *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_project_metadata ?id ?project ?timeouts ~metadata
    () : google_compute_project_metadata =
  { id; metadata; project; timeouts }

type t = {
  id : string prop;
  metadata : (string * string) list prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~metadata __id =
  let __type = "google_compute_project_metadata" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_project_metadata
        (google_compute_project_metadata ?id ?project ?timeouts
           ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
