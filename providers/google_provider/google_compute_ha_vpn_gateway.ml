(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_ha_vpn_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_ha_vpn_gateway__timeouts *)

type google_compute_ha_vpn_gateway__vpn_interfaces = {
  id : float option; [@option]
      (** The numeric ID of this VPN gateway interface. *)
  interconnect_attachment : string option; [@option]
      (** URL of the interconnect attachment resource. When the value
of this field is present, the VPN Gateway will be used for
IPsec-encrypted Cloud Interconnect; all Egress or Ingress
traffic for this VPN Gateway interface will go through the
specified interconnect attachment resource.

Not currently available publicly. *)
  ip_address : string;
      (** The external IP address for this VPN gateway interface. *)
}
[@@deriving yojson_of]
(** A list of interfaces on this VPN gateway. *)

type google_compute_ha_vpn_gateway = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  id : string option; [@option]  (** id *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string;
      (** The network this VPN gateway is accepting traffic for. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** The region this gateway should sit in. *)
  stack_type : string option; [@option]
      (** The stack type for this VPN gateway to identify the IP protocols that are enabled.
If not specified, IPV4_ONLY will be used. Default value: IPV4_ONLY Possible values: [IPV4_ONLY, IPV4_IPV6] *)
  timeouts : google_compute_ha_vpn_gateway__timeouts option;
  vpn_interfaces : google_compute_ha_vpn_gateway__vpn_interfaces list;
}
[@@deriving yojson_of]
(** google_compute_ha_vpn_gateway *)

let google_compute_ha_vpn_gateway ?description ?id ?project ?region
    ?stack_type ?timeouts ~name ~network ~vpn_interfaces
    __resource_id =
  let __resource_type = "google_compute_ha_vpn_gateway" in
  let __resource =
    {
      description;
      id;
      name;
      network;
      project;
      region;
      stack_type;
      timeouts;
      vpn_interfaces;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_ha_vpn_gateway __resource);
  ()
