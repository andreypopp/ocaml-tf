(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_access_context_manager_service_perimeter_resource = {
  id : string prop option; [@option]  (** id *)
  perimeter_name : string prop;
      (** The name of the Service Perimeter to add this resource to. *)
  resource : string prop;
      (** A GCP resource that is inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number} *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_resource *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_access_context_manager_service_perimeter_resource ?id
    ?timeouts ~perimeter_name ~resource () :
    google_access_context_manager_service_perimeter_resource =
  { id; perimeter_name; resource; timeouts }

type t = {
  id : string prop;
  perimeter_name : string prop;
  resource : string prop;
}

let make ?id ?timeouts ~perimeter_name ~resource __id =
  let __type =
    "google_access_context_manager_service_perimeter_resource"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       perimeter_name = Prop.computed __type __id "perimeter_name";
       resource = Prop.computed __type __id "resource";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_service_perimeter_resource
        (google_access_context_manager_service_perimeter_resource ?id
           ?timeouts ~perimeter_name ~resource ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~perimeter_name ~resource __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~perimeter_name ~resource __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
