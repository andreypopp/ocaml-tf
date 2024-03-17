(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_service_networking_peered_dns_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** google_service_networking_peered_dns_domain__timeouts *)

type google_service_networking_peered_dns_domain = {
  dns_suffix : string;
      (** The DNS domain name suffix of the peered DNS domain. *)
  name : string;  (** Name of the peered DNS domain. *)
  network : string;
      (** Network in the consumer project to peer with. *)
  service : string option; [@option]
      (** The name of the service to create a peered DNS domain for, e.g. servicenetworking.googleapis.com *)
  timeouts :
    google_service_networking_peered_dns_domain__timeouts option;
}
[@@deriving yojson_of]
(** google_service_networking_peered_dns_domain *)

let google_service_networking_peered_dns_domain ?service ?timeouts
    ~dns_suffix ~name ~network __resource_id =
  let __resource_type =
    "google_service_networking_peered_dns_domain"
  in
  let __resource =
    { dns_suffix; name; network; service; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_networking_peered_dns_domain __resource);
  ()
