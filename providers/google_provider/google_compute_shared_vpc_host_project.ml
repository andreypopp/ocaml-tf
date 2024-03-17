(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_shared_vpc_host_project__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_shared_vpc_host_project__timeouts *)

type google_compute_shared_vpc_host_project = {
  project : string;
      (** The ID of the project that will serve as a Shared VPC host project *)
  timeouts : google_compute_shared_vpc_host_project__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_shared_vpc_host_project *)

let google_compute_shared_vpc_host_project ?timeouts ~project
    __resource_id =
  let __resource_type = "google_compute_shared_vpc_host_project" in
  let __resource = { project; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_shared_vpc_host_project __resource);
  ()
