(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~perimeter_name ~resource
    __resource_id =
  let __resource_type =
    "google_access_context_manager_service_perimeter_resource"
  in
  let __resource =
    google_access_context_manager_service_perimeter_resource ?id
      ?timeouts ~perimeter_name ~resource ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_service_perimeter_resource
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       perimeter_name =
         Prop.computed __resource_type __resource_id "perimeter_name";
       resource =
         Prop.computed __resource_type __resource_id "resource";
     }
      : t)
  in
  __resource_attributes
