(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_route__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_route__timeouts *)

type google_compute_route = {
  description : string option; [@option]
      (** An optional description of this resource. Provide this property
when you create the resource. *)
  dest_range : string;
      (** The destination range of outgoing packets that this route applies to.
Only IPv4 is supported. *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  network : string;  (** The network that this route applies to. *)
  next_hop_gateway : string option; [@option]
      (** URL to a gateway that should handle matching packets.
Currently, you can only specify the internet gateway, using a full or
partial valid URL:
* 'https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway'
* 'projects/project/global/gateways/default-internet-gateway'
* 'global/gateways/default-internet-gateway'
* The string 'default-internet-gateway'. *)
  next_hop_ilb : string option; [@option]
      (** The IP address or URL to a forwarding rule of type
loadBalancingScheme=INTERNAL that should handle matching
packets.

With the GA provider you can only specify the forwarding
rule as a partial or full URL. For example, the following
are all valid values:
* 10.128.0.56
* https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
* regions/region/forwardingRules/forwardingRule

When the beta provider, you can also specify the IP address
of a forwarding rule from the same VPC or any peered VPC.

Note that this can only be used when the destinationRange is
a public (non-RFC 1918) IP CIDR range. *)
  next_hop_instance : string option; [@option]
      (** URL to an instance that should handle matching packets.
You can specify this as a full or partial URL. For example:
* 'https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance'
* 'projects/project/zones/zone/instances/instance'
* 'zones/zone/instances/instance'
* Just the instance name, with the zone in 'next_hop_instance_zone'. *)
  next_hop_vpn_tunnel : string option; [@option]
      (** URL to a VpnTunnel that should handle matching packets. *)
  priority : float option; [@option]
      (** The priority of this route. Priority is used to break ties in cases
where there is more than one matching route of equal prefix length.

In the case of two routes with equal prefix length, the one with the
lowest-numbered priority value wins.

Default value is 1000. Valid range is 0 through 65535. *)
  tags : string list option; [@option]
      (** A list of instance tags to which this route applies. *)
  timeouts : google_compute_route__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_route *)

let google_compute_route ?description ?next_hop_gateway ?next_hop_ilb
    ?next_hop_instance ?next_hop_vpn_tunnel ?priority ?tags ?timeouts
    ~dest_range ~name ~network __resource_id =
  let __resource_type = "google_compute_route" in
  let __resource =
    {
      description;
      dest_range;
      name;
      network;
      next_hop_gateway;
      next_hop_ilb;
      next_hop_instance;
      next_hop_vpn_tunnel;
      priority;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_route __resource);
  ()
