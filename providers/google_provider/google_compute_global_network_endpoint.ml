(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_global_network_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_global_network_endpoint__timeouts *)

type google_compute_global_network_endpoint = {
  fqdn : string option; [@option]
      (** Fully qualified domain name of network endpoint.
This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. *)
  global_network_endpoint_group : string;
      (** The global network endpoint group this endpoint is part of. *)
  ip_address : string option; [@option]
      (** IPv4 address external endpoint. *)
  port : float;  (** Port number of the external endpoint. *)
  timeouts : google_compute_global_network_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_global_network_endpoint *)

let google_compute_global_network_endpoint ?fqdn ?ip_address
    ?timeouts ~global_network_endpoint_group ~port __resource_id =
  let __resource_type = "google_compute_global_network_endpoint" in
  let __resource =
    {
      fqdn;
      global_network_endpoint_group;
      ip_address;
      port;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_global_network_endpoint __resource);
  ()
