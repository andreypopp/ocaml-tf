(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_route = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property
when you create the resource. *)
  dest_range : string prop;
      (** The destination range of outgoing packets that this route applies to.
Only IPv4 is supported. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  network : string prop;
      (** The network that this route applies to. *)
  next_hop_gateway : string prop option; [@option]
      (** URL to a gateway that should handle matching packets.
Currently, you can only specify the internet gateway, using a full or
partial valid URL:
* 'https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway'
* 'projects/project/global/gateways/default-internet-gateway'
* 'global/gateways/default-internet-gateway'
* The string 'default-internet-gateway'. *)
  next_hop_ilb : string prop option; [@option]
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
  next_hop_instance : string prop option; [@option]
      (** URL to an instance that should handle matching packets.
You can specify this as a full or partial URL. For example:
* 'https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance'
* 'projects/project/zones/zone/instances/instance'
* 'zones/zone/instances/instance'
* Just the instance name, with the zone in 'next_hop_instance_zone'. *)
  next_hop_instance_zone : string prop option; [@option]
      (** The zone of the instance specified in next_hop_instance. Omit if next_hop_instance is specified as a URL. *)
  next_hop_ip : string prop option; [@option]
      (** Network IP address of an instance that should handle matching packets. *)
  next_hop_vpn_tunnel : string prop option; [@option]
      (** URL to a VpnTunnel that should handle matching packets. *)
  priority : float prop option; [@option]
      (** The priority of this route. Priority is used to break ties in cases
where there is more than one matching route of equal prefix length.

In the case of two routes with equal prefix length, the one with the
lowest-numbered priority value wins.

Default value is 1000. Valid range is 0 through 65535. *)
  project : string prop option; [@option]  (** project *)
  tags : string prop list option; [@option]
      (** A list of instance tags to which this route applies. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_route *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_route ?description ?id ?next_hop_gateway
    ?next_hop_ilb ?next_hop_instance ?next_hop_instance_zone
    ?next_hop_ip ?next_hop_vpn_tunnel ?priority ?project ?tags
    ?timeouts ~dest_range ~name ~network () : google_compute_route =
  {
    description;
    dest_range;
    id;
    name;
    network;
    next_hop_gateway;
    next_hop_ilb;
    next_hop_instance;
    next_hop_instance_zone;
    next_hop_ip;
    next_hop_vpn_tunnel;
    priority;
    project;
    tags;
    timeouts;
  }

type t = {
  description : string prop;
  dest_range : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  next_hop_gateway : string prop;
  next_hop_ilb : string prop;
  next_hop_instance : string prop;
  next_hop_instance_zone : string prop;
  next_hop_ip : string prop;
  next_hop_network : string prop;
  next_hop_vpn_tunnel : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  tags : string list prop;
}

let make ?description ?id ?next_hop_gateway ?next_hop_ilb
    ?next_hop_instance ?next_hop_instance_zone ?next_hop_ip
    ?next_hop_vpn_tunnel ?priority ?project ?tags ?timeouts
    ~dest_range ~name ~network __id =
  let __type = "google_compute_route" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       dest_range = Prop.computed __type __id "dest_range";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       next_hop_gateway =
         Prop.computed __type __id "next_hop_gateway";
       next_hop_ilb = Prop.computed __type __id "next_hop_ilb";
       next_hop_instance =
         Prop.computed __type __id "next_hop_instance";
       next_hop_instance_zone =
         Prop.computed __type __id "next_hop_instance_zone";
       next_hop_ip = Prop.computed __type __id "next_hop_ip";
       next_hop_network =
         Prop.computed __type __id "next_hop_network";
       next_hop_vpn_tunnel =
         Prop.computed __type __id "next_hop_vpn_tunnel";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_route
        (google_compute_route ?description ?id ?next_hop_gateway
           ?next_hop_ilb ?next_hop_instance ?next_hop_instance_zone
           ?next_hop_ip ?next_hop_vpn_tunnel ?priority ?project ?tags
           ?timeouts ~dest_range ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?next_hop_gateway
    ?next_hop_ilb ?next_hop_instance ?next_hop_instance_zone
    ?next_hop_ip ?next_hop_vpn_tunnel ?priority ?project ?tags
    ?timeouts ~dest_range ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?next_hop_gateway ?next_hop_ilb
      ?next_hop_instance ?next_hop_instance_zone ?next_hop_ip
      ?next_hop_vpn_tunnel ?priority ?project ?tags ?timeouts
      ~dest_range ~name ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
