(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_network_connectivity_policy_based_route__filter = {
  dest_range : string option; [@option]
      (** The destination IP range of outgoing packets that this policy-based route applies to. Default is 0.0.0.0/0 if protocol version is IPv4. *)
  ip_protocol : string option; [@option]
      (** The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'. *)
  protocol_version : string;
      (** Internet protocol versions this policy-based route applies to. Possible values: [IPV4] *)
  src_range : string option; [@option]
      (** The source IP range of outgoing packets that this policy-based route applies to. Default is 0.0.0.0/0 if protocol version is IPv4. *)
}
[@@deriving yojson_of]
(** The filter to match L4 traffic. *)

type google_network_connectivity_policy_based_route__interconnect_attachment = {
  region : string;
      (** Cloud region to install this policy-based route on for Interconnect attachments. Use 'all' to install it on all Interconnect attachments. *)
}
[@@deriving yojson_of]
(** The interconnect attachments that this policy-based route applies to. *)

type google_network_connectivity_policy_based_route__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_connectivity_policy_based_route__timeouts *)

type google_network_connectivity_policy_based_route__virtual_machine = {
  tags : string list;
      (** A list of VM instance tags that this policy-based route applies to. VM instances that have ANY of tags specified here will install this PBR. *)
}
[@@deriving yojson_of]
(** VM instances to which this policy-based route applies to. *)

type google_network_connectivity_policy_based_route__warnings = {
  code : string;  (** code *)
  data : (string * string) list;  (** data *)
  warning_message : string;  (** warning_message *)
}
[@@deriving yojson_of]

type google_network_connectivity_policy_based_route = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  labels : (string * string) list option; [@option]
      (** User-defined labels.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** The name of the policy based route. *)
  network : string;
      (** Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network. *)
  next_hop_ilb_ip : string option; [@option]
      (** The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. *)
  next_hop_other_routes : string option; [@option]
      (** Other routes that will be referenced to determine the next hop of the packet. Possible values: [DEFAULT_ROUTING] *)
  priority : float option; [@option]
      (** The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive. *)
  filter :
    google_network_connectivity_policy_based_route__filter list;
  interconnect_attachment :
    google_network_connectivity_policy_based_route__interconnect_attachment
    list;
  timeouts :
    google_network_connectivity_policy_based_route__timeouts option;
  virtual_machine :
    google_network_connectivity_policy_based_route__virtual_machine
    list;
}
[@@deriving yojson_of]
(** google_network_connectivity_policy_based_route *)

let google_network_connectivity_policy_based_route ?description
    ?labels ?next_hop_ilb_ip ?next_hop_other_routes ?priority
    ?timeouts ~name ~network ~filter ~interconnect_attachment
    ~virtual_machine __resource_id =
  let __resource_type =
    "google_network_connectivity_policy_based_route"
  in
  let __resource =
    {
      description;
      labels;
      name;
      network;
      next_hop_ilb_ip;
      next_hop_other_routes;
      priority;
      filter;
      interconnect_attachment;
      timeouts;
      virtual_machine;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_connectivity_policy_based_route
       __resource);
  ()
