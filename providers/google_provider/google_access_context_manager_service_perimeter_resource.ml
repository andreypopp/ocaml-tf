(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_access_context_manager_service_perimeter_resource__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_resource__timeouts *)

type google_access_context_manager_service_perimeter_resource = {
  perimeter_name : string;
      (** The name of the Service Perimeter to add this resource to. *)
  resource : string;
      (** A GCP resource that is inside of the service perimeter.
Currently only projects are allowed.
Format: projects/{project_number} *)
  timeouts :
    google_access_context_manager_service_perimeter_resource__timeouts
    option;
}
[@@deriving yojson_of]
(** google_access_context_manager_service_perimeter_resource *)

let google_access_context_manager_service_perimeter_resource
    ?timeouts ~perimeter_name ~resource __resource_id =
  let __resource_type =
    "google_access_context_manager_service_perimeter_resource"
  in
  let __resource = { perimeter_name; resource; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_service_perimeter_resource
       __resource);
  ()
