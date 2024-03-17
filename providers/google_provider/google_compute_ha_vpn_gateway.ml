(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_ha_vpn_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_ha_vpn_gateway__timeouts *)

type google_compute_ha_vpn_gateway__vpn_interfaces = {
  id : float prop option; [@option]
      (** The numeric ID of this VPN gateway interface. *)
  interconnect_attachment : string prop option; [@option]
      (** URL of the interconnect attachment resource. When the value
of this field is present, the VPN Gateway will be used for
IPsec-encrypted Cloud Interconnect; all Egress or Ingress
traffic for this VPN Gateway interface will go through the
specified interconnect attachment resource.

Not currently available publicly. *)
  ip_address : string prop;
      (** The external IP address for this VPN gateway interface. *)
}
[@@deriving yojson_of]
(** A list of interfaces on this VPN gateway. *)

type google_compute_ha_vpn_gateway = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string prop;
      (** The network this VPN gateway is accepting traffic for. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region this gateway should sit in. *)
  stack_type : string prop option; [@option]
      (** The stack type for this VPN gateway to identify the IP protocols that are enabled.
If not specified, IPV4_ONLY will be used. Default value: IPV4_ONLY Possible values: [IPV4_ONLY, IPV4_IPV6] *)
  timeouts : google_compute_ha_vpn_gateway__timeouts option;
  vpn_interfaces : google_compute_ha_vpn_gateway__vpn_interfaces list;
}
[@@deriving yojson_of]
(** google_compute_ha_vpn_gateway *)

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  stack_type : string prop;
}

let google_compute_ha_vpn_gateway ?description ?id ?project ?region
    ?stack_type ?timeouts ~name ~network ~vpn_interfaces
    __resource_id =
  let __resource_type = "google_compute_ha_vpn_gateway" in
  let __resource =
    ({
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
      : google_compute_ha_vpn_gateway)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_ha_vpn_gateway __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       stack_type =
         Prop.computed __resource_type __resource_id "stack_type";
     }
      : t)
  in
  __resource_attributes
