(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_shared_vpc_host_project = {
  id : string prop option; [@option]  (** id *)
  project : string prop;
      (** The ID of the project that will serve as a Shared VPC host project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_shared_vpc_host_project *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_shared_vpc_host_project ?id ?timeouts ~project ()
    : google_compute_shared_vpc_host_project =
  { id; project; timeouts }

type t = { id : string prop; project : string prop }

let make ?id ?timeouts ~project __id =
  let __type = "google_compute_shared_vpc_host_project" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_shared_vpc_host_project
        (google_compute_shared_vpc_host_project ?id ?timeouts
           ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~project __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~project __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
