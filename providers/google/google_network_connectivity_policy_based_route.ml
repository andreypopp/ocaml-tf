(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  dest_range : string prop option; [@option]
      (** The destination IP range of outgoing packets that this policy-based route applies to. Default is 0.0.0.0/0 if protocol version is IPv4. *)
  ip_protocol : string prop option; [@option]
      (** The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'. *)
  protocol_version : string prop;
      (** Internet protocol versions this policy-based route applies to. Possible values: [IPV4] *)
  src_range : string prop option; [@option]
      (** The source IP range of outgoing packets that this policy-based route applies to. Default is 0.0.0.0/0 if protocol version is IPv4. *)
}
[@@deriving yojson_of]
(** The filter to match L4 traffic. *)

type interconnect_attachment = {
  region : string prop;
      (** Cloud region to install this policy-based route on for Interconnect attachments. Use 'all' to install it on all Interconnect attachments. *)
}
[@@deriving yojson_of]
(** The interconnect attachments that this policy-based route applies to. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type virtual_machine = {
  tags : string prop list;
      (** A list of VM instance tags that this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR. *)
}
[@@deriving yojson_of]
(** VM instances to which this policy-based route applies to. *)

type warnings = {
  code : string prop;  (** code *)
  data : (string * string prop) list;  (** data *)
  warning_message : string prop;  (** warning_message *)
}
[@@deriving yojson_of]

type google_network_connectivity_policy_based_route = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** The name of the policy based route. *)
  network : string prop;
      (** Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network. *)
  next_hop_ilb_ip : string prop option; [@option]
      (** The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. *)
  next_hop_other_routes : string prop option; [@option]
      (** Other routes that will be referenced to determine the next hop of the packet. Possible values: [DEFAULT_ROUTING] *)
  priority : float prop option; [@option]
      (** The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive. *)
  project : string prop option; [@option]  (** project *)
  filter : filter list;
  interconnect_attachment : interconnect_attachment list;
  timeouts : timeouts option;
  virtual_machine : virtual_machine list;
}
[@@deriving yojson_of]
(** google_network_connectivity_policy_based_route *)

let filter ?dest_range ?ip_protocol ?src_range ~protocol_version () :
    filter =
  { dest_range; ip_protocol; protocol_version; src_range }

let interconnect_attachment ~region () : interconnect_attachment =
  { region }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let virtual_machine ~tags () : virtual_machine = { tags }

let google_network_connectivity_policy_based_route ?description ?id
    ?labels ?next_hop_ilb_ip ?next_hop_other_routes ?priority
    ?project ?timeouts ~name ~network ~filter
    ~interconnect_attachment ~virtual_machine () :
    google_network_connectivity_policy_based_route =
  {
    description;
    id;
    labels;
    name;
    network;
    next_hop_ilb_ip;
    next_hop_other_routes;
    priority;
    project;
    filter;
    interconnect_attachment;
    timeouts;
    virtual_machine;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  kind : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  next_hop_ilb_ip : string prop;
  next_hop_other_routes : string prop;
  priority : float prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  warnings : warnings list prop;
}

let make ?description ?id ?labels ?next_hop_ilb_ip
    ?next_hop_other_routes ?priority ?project ?timeouts ~name
    ~network ~filter ~interconnect_attachment ~virtual_machine __id =
  let __type = "google_network_connectivity_policy_based_route" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       next_hop_ilb_ip = Prop.computed __type __id "next_hop_ilb_ip";
       next_hop_other_routes =
         Prop.computed __type __id "next_hop_other_routes";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       warnings = Prop.computed __type __id "warnings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_connectivity_policy_based_route
        (google_network_connectivity_policy_based_route ?description
           ?id ?labels ?next_hop_ilb_ip ?next_hop_other_routes
           ?priority ?project ?timeouts ~name ~network ~filter
           ~interconnect_attachment ~virtual_machine ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?next_hop_ilb_ip
    ?next_hop_other_routes ?priority ?project ?timeouts ~name
    ~network ~filter ~interconnect_attachment ~virtual_machine __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?next_hop_ilb_ip
      ?next_hop_other_routes ?priority ?project ?timeouts ~name
      ~network ~filter ~interconnect_attachment ~virtual_machine __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
