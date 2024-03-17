(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_shared_vpc_service_project__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_shared_vpc_service_project__timeouts *)

type google_compute_shared_vpc_service_project = {
  deletion_policy : string option; [@option]
      (** The deletion policy for the shared VPC service. Setting ABANDON allows the resource
				to be abandoned rather than deleted. Possible values are: ABANDON. *)
  host_project : string;
      (** The ID of a host project to associate. *)
  service_project : string;
      (** The ID of the project that will serve as a Shared VPC service project. *)
  timeouts :
    google_compute_shared_vpc_service_project__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_shared_vpc_service_project *)

let google_compute_shared_vpc_service_project ?deletion_policy
    ?timeouts ~host_project ~service_project __resource_id =
  let __resource_type =
    "google_compute_shared_vpc_service_project"
  in
  let __resource =
    { deletion_policy; host_project; service_project; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_shared_vpc_service_project __resource);
  ()
