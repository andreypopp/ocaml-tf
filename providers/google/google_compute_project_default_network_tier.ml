(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_project_default_network_tier = {
  id : string prop option; [@option]  (** id *)
  network_tier : string prop;
      (** The default network tier to be configured for the project. This field can take the following values: PREMIUM or STANDARD. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_project_default_network_tier *)

let timeouts ?create () : timeouts = { create }

let google_compute_project_default_network_tier ?id ?project
    ?timeouts ~network_tier () :
    google_compute_project_default_network_tier =
  { id; network_tier; project; timeouts }

type t = {
  id : string prop;
  network_tier : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~network_tier __id =
  let __type = "google_compute_project_default_network_tier" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       network_tier = Prop.computed __type __id "network_tier";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_project_default_network_tier
        (google_compute_project_default_network_tier ?id ?project
           ?timeouts ~network_tier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~network_tier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~network_tier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
