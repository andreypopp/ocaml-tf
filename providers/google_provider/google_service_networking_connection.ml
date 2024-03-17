(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_service_networking_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_service_networking_connection__timeouts *)

type google_service_networking_connection = {
  deletion_policy : string option; [@option]
      (** When set to ABANDON, terraform will abandon management of the resource instead of deleting it. Prevents terraform apply failures with CloudSQL. Note: The resource will still exist. *)
  network : string;
      (** Name of VPC network connected with service producers using VPC peering. *)
  reserved_peering_ranges : string list;
      (** Named IP address range(s) of PEERING type reserved for this service provider. Note that invoking this method with a different range when connection is already established will not reallocate already provisioned service producer subnetworks. *)
  service : string;
      (** Provider peering service that is managing peering connectivity for a service provider organization. For Google services that support this functionality it is 'servicenetworking.googleapis.com'. *)
  timeouts : google_service_networking_connection__timeouts option;
}
[@@deriving yojson_of]
(** google_service_networking_connection *)

let google_service_networking_connection ?deletion_policy ?timeouts
    ~network ~reserved_peering_ranges ~service __resource_id =
  let __resource_type = "google_service_networking_connection" in
  let __resource =
    {
      deletion_policy;
      network;
      reserved_peering_ranges;
      service;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_networking_connection __resource);
  ()
