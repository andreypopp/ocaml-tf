(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_region_network_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_region_network_endpoint__timeouts *)

type google_compute_region_network_endpoint = {
  fqdn : string prop option; [@option]
      (** Fully qualified domain name of network endpoint.

This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]
      (** IPv4 address external endpoint.

This can only be specified when network_endpoint_type of the NEG is INTERNET_IP_PORT. *)
  port : float prop;  (** Port number of network endpoint. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Region where the containing network endpoint group is located. *)
  region_network_endpoint_group : string prop;
      (** The network endpoint group this endpoint is part of. *)
  timeouts : google_compute_region_network_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_network_endpoint *)

type t = {
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  port : float prop;
  project : string prop;
  region : string prop;
  region_network_endpoint_group : string prop;
}

let google_compute_region_network_endpoint ?fqdn ?id ?ip_address
    ?project ?region ?timeouts ~port ~region_network_endpoint_group
    __resource_id =
  let __resource_type = "google_compute_region_network_endpoint" in
  let __resource =
    ({
       fqdn;
       id;
       ip_address;
       port;
       project;
       region;
       region_network_endpoint_group;
       timeouts;
     }
      : google_compute_region_network_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_network_endpoint __resource);
  let __resource_attributes =
    ({
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       port = Prop.computed __resource_type __resource_id "port";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       region_network_endpoint_group =
         Prop.computed __resource_type __resource_id
           "region_network_endpoint_group";
     }
      : t)
  in
  __resource_attributes
