(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_external_vpn_gateway__interface = {
  id : float prop option; [@option]
      (** The numeric ID for this interface. Allowed values are based on the redundancy type
of this external VPN gateway
* '0 - SINGLE_IP_INTERNALLY_REDUNDANT'
* '0, 1 - TWO_IPS_REDUNDANCY'
* '0, 1, 2, 3 - FOUR_IPS_REDUNDANCY' *)
  ip_address : string prop option; [@option]
      (** IP address of the interface in the external VPN gateway.
Only IPv4 is supported. This IP address can be either from
your on-premise gateway or another Cloud provider's VPN gateway,
it cannot be an IP address from Google Compute Engine. *)
}
[@@deriving yojson_of]
(** A list of interfaces on this external VPN gateway. *)

type google_compute_external_vpn_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_external_vpn_gateway__timeouts *)

type google_compute_external_vpn_gateway = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels for the external VPN gateway resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  redundancy_type : string prop option; [@option]
      (** Indicates the redundancy type of this external VPN gateway Possible values: [FOUR_IPS_REDUNDANCY, SINGLE_IP_INTERNALLY_REDUNDANT, TWO_IPS_REDUNDANCY] *)
  interface : google_compute_external_vpn_gateway__interface list;
  timeouts : google_compute_external_vpn_gateway__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_external_vpn_gateway *)

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  redundancy_type : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

let google_compute_external_vpn_gateway ?description ?id ?labels
    ?project ?redundancy_type ?timeouts ~name ~interface
    __resource_id =
  let __resource_type = "google_compute_external_vpn_gateway" in
  let __resource =
    ({
       description;
       id;
       labels;
       name;
       project;
       redundancy_type;
       interface;
       timeouts;
     }
      : google_compute_external_vpn_gateway)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_external_vpn_gateway __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       label_fingerprint =
         Prop.computed __resource_type __resource_id
           "label_fingerprint";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       redundancy_type =
         Prop.computed __resource_type __resource_id
           "redundancy_type";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
