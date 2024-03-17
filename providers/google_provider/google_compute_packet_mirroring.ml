(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_packet_mirroring__collector_ilb = {
  url : string prop;  (** The URL of the forwarding rule. *)
}
[@@deriving yojson_of]
(** The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
that will be used as collector for mirrored traffic. The
specified forwarding rule must have is_mirroring_collector
set to true. *)

type google_compute_packet_mirroring__filter = {
  cidr_ranges : string prop list option; [@option]
      (** IP CIDR ranges that apply as a filter on the source (ingress) or
destination (egress) IP in the IP header. Only IPv4 is supported. *)
  direction : string prop option; [@option]
      (** Direction of traffic to mirror. Default value: BOTH Possible values: [INGRESS, EGRESS, BOTH] *)
  ip_protocols : string prop list option; [@option]
      (** Possible IP protocols including tcp, udp, icmp and esp *)
}
[@@deriving yojson_of]
(** A filter for mirrored traffic.  If unset, all traffic is mirrored. *)

type google_compute_packet_mirroring__mirrored_resources__instances = {
  url : string prop;
      (** The URL of the instances where this rule should be active. *)
}
[@@deriving yojson_of]
(** All the listed instances will be mirrored.  Specify at most 50. *)

type google_compute_packet_mirroring__mirrored_resources__subnetworks = {
  url : string prop;
      (** The URL of the subnetwork where this rule should be active. *)
}
[@@deriving yojson_of]
(** All instances in one of these subnetworks will be mirrored. *)

type google_compute_packet_mirroring__mirrored_resources = {
  tags : string prop list option; [@option]
      (** All instances with these tags will be mirrored. *)
  instances :
    google_compute_packet_mirroring__mirrored_resources__instances
    list;
  subnetworks :
    google_compute_packet_mirroring__mirrored_resources__subnetworks
    list;
}
[@@deriving yojson_of]
(** A means of specifying which resources to mirror. *)

type google_compute_packet_mirroring__network = {
  url : string prop;
      (** The full self_link URL of the network where this rule is active. *)
}
[@@deriving yojson_of]
(** Specifies the mirrored VPC network. Only packets in this network
will be mirrored. All mirrored VMs should have a NIC in the given
network. All mirrored subnetworks should belong to the given network. *)

type google_compute_packet_mirroring__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_packet_mirroring__timeouts *)

type google_compute_packet_mirroring = {
  description : string prop option; [@option]
      (** A human-readable description of the rule. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the packet mirroring rule *)
  priority : float prop option; [@option]
      (** Since only one rule can be active at a time, priority is
used to break ties in the case of two rules that apply to
the same instances. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The Region in which the created address should reside.
If it is not provided, the provider region is used. *)
  collector_ilb :
    google_compute_packet_mirroring__collector_ilb list;
  filter : google_compute_packet_mirroring__filter list;
  mirrored_resources :
    google_compute_packet_mirroring__mirrored_resources list;
  network : google_compute_packet_mirroring__network list;
  timeouts : google_compute_packet_mirroring__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_packet_mirroring *)

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  project : string prop;
  region : string prop;
}

let google_compute_packet_mirroring ?description ?id ?priority
    ?project ?region ?timeouts ~name ~collector_ilb ~filter
    ~mirrored_resources ~network __resource_id =
  let __resource_type = "google_compute_packet_mirroring" in
  let __resource =
    ({
       description;
       id;
       name;
       priority;
       project;
       region;
       collector_ilb;
       filter;
       mirrored_resources;
       network;
       timeouts;
     }
      : google_compute_packet_mirroring)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_packet_mirroring __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
     }
      : t)
  in
  __resource_attributes
