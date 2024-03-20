(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpn_interfaces = {
  id : float prop option; [@option]
      (** The numeric ID of this VPN gateway interface. *)
  interconnect_attachment : string prop option; [@option]
      (** URL of the interconnect attachment resource. When the value
of this field is present, the VPN Gateway will be used for
IPsec-encrypted Cloud Interconnect; all Egress or Ingress
traffic for this VPN Gateway interface will go through the
specified interconnect attachment resource.

Not currently available publicly. *)
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
  timeouts : timeouts option;
  vpn_interfaces : vpn_interfaces list;
}
[@@deriving yojson_of]
(** google_compute_ha_vpn_gateway *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let vpn_interfaces ?id ?interconnect_attachment () : vpn_interfaces =
  { id; interconnect_attachment }

let google_compute_ha_vpn_gateway ?description ?id ?project ?region
    ?stack_type ?timeouts ~name ~network ~vpn_interfaces () :
    google_compute_ha_vpn_gateway =
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

let make ?description ?id ?project ?region ?stack_type ?timeouts
    ~name ~network ~vpn_interfaces __id =
  let __type = "google_compute_ha_vpn_gateway" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       stack_type = Prop.computed __type __id "stack_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_ha_vpn_gateway
        (google_compute_ha_vpn_gateway ?description ?id ?project
           ?region ?stack_type ?timeouts ~name ~network
           ~vpn_interfaces ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?region ?stack_type
    ?timeouts ~name ~network ~vpn_interfaces __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?region ?stack_type ?timeouts
      ~name ~network ~vpn_interfaces __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
