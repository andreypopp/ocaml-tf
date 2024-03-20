(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_shared_vpc_service_project = {
  deletion_policy : string prop option; [@option]
      (** The deletion policy for the shared VPC service. Setting ABANDON allows the resource
				to be abandoned rather than deleted. Possible values are: ABANDON. *)
  host_project : string prop;
      (** The ID of a host project to associate. *)
  id : string prop option; [@option]  (** id *)
  service_project : string prop;
      (** The ID of the project that will serve as a Shared VPC service project. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_shared_vpc_service_project *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_shared_vpc_service_project ?deletion_policy ?id
    ?timeouts ~host_project ~service_project () :
    google_compute_shared_vpc_service_project =
  { deletion_policy; host_project; id; service_project; timeouts }

type t = {
  deletion_policy : string prop;
  host_project : string prop;
  id : string prop;
  service_project : string prop;
}

let make ?deletion_policy ?id ?timeouts ~host_project
    ~service_project __id =
  let __type = "google_compute_shared_vpc_service_project" in
  let __attrs =
    ({
       deletion_policy = Prop.computed __type __id "deletion_policy";
       host_project = Prop.computed __type __id "host_project";
       id = Prop.computed __type __id "id";
       service_project = Prop.computed __type __id "service_project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_shared_vpc_service_project
        (google_compute_shared_vpc_service_project ?deletion_policy
           ?id ?timeouts ~host_project ~service_project ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?id ?timeouts ~host_project
    ~service_project __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?id ?timeouts ~host_project
      ~service_project __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
