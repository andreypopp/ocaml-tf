(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type linked_interconnect_attachments = {
  site_to_site_data_transfer : bool prop;
      (** A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations. *)
  uris : string prop list;
      (** The URIs of linked interconnect attachment resources *)
}
[@@deriving yojson_of]
(** A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes. *)

type linked_router_appliance_instances__instances = {
  ip_address : string prop option; [@option]
      (** The IP address on the VM to use for peering. *)
  virtual_machine : string prop option; [@option]
      (** The URI of the virtual machine resource *)
}
[@@deriving yojson_of]
(** The list of router appliance instances *)

type linked_router_appliance_instances = {
  site_to_site_data_transfer : bool prop;
      (** A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations. *)
  instances : linked_router_appliance_instances__instances list;
}
[@@deriving yojson_of]
(** The URIs of linked Router appliance resources *)

type linked_vpc_network = {
  exclude_export_ranges : string prop list option; [@option]
      (** IP ranges encompassing the subnets to be excluded from peering. *)
  uri : string prop;  (** The URI of the VPC network resource. *)
}
[@@deriving yojson_of]
(** VPC network that is associated with the spoke. *)

type linked_vpn_tunnels = {
  site_to_site_data_transfer : bool prop;
      (** A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations. *)
  uris : string prop list;
      (** The URIs of linked VPN tunnel resources. *)
}
[@@deriving yojson_of]
(** The URIs of linked VPN tunnel resources *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_network_connectivity_spoke = {
  description : string prop option; [@option]
      (** An optional description of the spoke. *)
  hub : string prop;
      (** Immutable. The URI of the hub that this spoke is attached to. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string prop;  (** The location for the resource *)
  name : string prop;
      (** Immutable. The name of the spoke. Spoke names must be unique. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  linked_interconnect_attachments :
    linked_interconnect_attachments list;
  linked_router_appliance_instances :
    linked_router_appliance_instances list;
  linked_vpc_network : linked_vpc_network list;
  linked_vpn_tunnels : linked_vpn_tunnels list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_network_connectivity_spoke *)

let linked_interconnect_attachments ~site_to_site_data_transfer ~uris
    () : linked_interconnect_attachments =
  { site_to_site_data_transfer; uris }

let linked_router_appliance_instances__instances ?ip_address
    ?virtual_machine () :
    linked_router_appliance_instances__instances =
  { ip_address; virtual_machine }

let linked_router_appliance_instances ~site_to_site_data_transfer
    ~instances () : linked_router_appliance_instances =
  { site_to_site_data_transfer; instances }

let linked_vpc_network ?exclude_export_ranges ~uri () :
    linked_vpc_network =
  { exclude_export_ranges; uri }

let linked_vpn_tunnels ~site_to_site_data_transfer ~uris () :
    linked_vpn_tunnels =
  { site_to_site_data_transfer; uris }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_connectivity_spoke ?description ?id ?labels
    ?project ?timeouts ~hub ~location ~name
    ~linked_interconnect_attachments
    ~linked_router_appliance_instances ~linked_vpc_network
    ~linked_vpn_tunnels () : google_network_connectivity_spoke =
  {
    description;
    hub;
    id;
    labels;
    location;
    name;
    project;
    linked_interconnect_attachments;
    linked_router_appliance_instances;
    linked_vpc_network;
    linked_vpn_tunnels;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  hub : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  unique_id : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~hub ~location ~name ~linked_interconnect_attachments
    ~linked_router_appliance_instances ~linked_vpc_network
    ~linked_vpn_tunnels __resource_id =
  let __resource_type = "google_network_connectivity_spoke" in
  let __resource =
    google_network_connectivity_spoke ?description ?id ?labels
      ?project ?timeouts ~hub ~location ~name
      ~linked_interconnect_attachments
      ~linked_router_appliance_instances ~linked_vpc_network
      ~linked_vpn_tunnels ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_connectivity_spoke __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       hub = Prop.computed __resource_type __resource_id "hub";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       unique_id =
         Prop.computed __resource_type __resource_id "unique_id";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
