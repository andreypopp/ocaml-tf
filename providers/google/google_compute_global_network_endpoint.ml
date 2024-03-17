(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_global_network_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_global_network_endpoint__timeouts *)

type google_compute_global_network_endpoint = {
  fqdn : string prop option; [@option]
      (** Fully qualified domain name of network endpoint.
This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. *)
  global_network_endpoint_group : string prop;
      (** The global network endpoint group this endpoint is part of. *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]
      (** IPv4 address external endpoint. *)
  port : float prop;  (** Port number of the external endpoint. *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_compute_global_network_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_global_network_endpoint *)

type t = {
  fqdn : string prop;
  global_network_endpoint_group : string prop;
  id : string prop;
  ip_address : string prop;
  port : float prop;
  project : string prop;
}

let google_compute_global_network_endpoint ?fqdn ?id ?ip_address
    ?project ?timeouts ~global_network_endpoint_group ~port
    __resource_id =
  let __resource_type = "google_compute_global_network_endpoint" in
  let __resource =
    ({
       fqdn;
       global_network_endpoint_group;
       id;
       ip_address;
       port;
       project;
       timeouts;
     }
      : google_compute_global_network_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_global_network_endpoint __resource);
  let __resource_attributes =
    ({
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       global_network_endpoint_group =
         Prop.computed __resource_type __resource_id
           "global_network_endpoint_group";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       port = Prop.computed __resource_type __resource_id "port";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
