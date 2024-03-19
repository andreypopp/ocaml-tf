(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type destination_ip_ranges = {
  external_address : string prop option; [@option]
      (** The name of an 'ExternalAddress' resource. *)
  ip_address_range : string prop option; [@option]
      (** An IP address range in the CIDR format. *)
}
[@@deriving yojson_of]
(** If destination ranges are specified, the external access rule applies only to
traffic that has a destination IP address in these ranges. *)

type source_ip_ranges = {
  ip_address : string prop option; [@option]
      (** A single IP address. *)
  ip_address_range : string prop option; [@option]
      (** An IP address range in the CIDR format. *)
}
[@@deriving yojson_of]
(** If source ranges are specified, the external access rule applies only to
traffic that has a source IP address in these ranges. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_vmwareengine_external_access_rule = {
  action : string prop;
      (** The action that the external access rule performs. Possible values: [ALLOW, DENY] *)
  description : string prop option; [@option]
      (** User-provided description for the external access rule. *)
  destination_ports : string prop list;
      (** A list of destination ports to which the external access rule applies. *)
  id : string prop option; [@option]  (** id *)
  ip_protocol : string prop;
      (** The IP protocol to which the external access rule applies. *)
  name : string prop;  (** The ID of the external access rule. *)
  parent : string prop;
      (** The resource name of the network policy.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy *)
  priority : float prop;
      (** External access rule priority, which determines the external access rule to use when multiple rules apply. *)
  source_ports : string prop list;
      (** A list of source ports to which the external access rule applies. *)
  destination_ip_ranges : destination_ip_ranges list;
  source_ip_ranges : source_ip_ranges list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_external_access_rule *)

let destination_ip_ranges ?external_address ?ip_address_range () :
    destination_ip_ranges =
  { external_address; ip_address_range }

let source_ip_ranges ?ip_address ?ip_address_range () :
    source_ip_ranges =
  { ip_address; ip_address_range }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_external_access_rule ?description ?id
    ?timeouts ~action ~destination_ports ~ip_protocol ~name ~parent
    ~priority ~source_ports ~destination_ip_ranges ~source_ip_ranges
    () : google_vmwareengine_external_access_rule =
  {
    action;
    description;
    destination_ports;
    id;
    ip_protocol;
    name;
    parent;
    priority;
    source_ports;
    destination_ip_ranges;
    source_ip_ranges;
    timeouts;
  }

type t = {
  action : string prop;
  create_time : string prop;
  description : string prop;
  destination_ports : string list prop;
  id : string prop;
  ip_protocol : string prop;
  name : string prop;
  parent : string prop;
  priority : float prop;
  source_ports : string list prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~action
    ~destination_ports ~ip_protocol ~name ~parent ~priority
    ~source_ports ~destination_ip_ranges ~source_ip_ranges
    __resource_id =
  let __resource_type = "google_vmwareengine_external_access_rule" in
  let __resource =
    google_vmwareengine_external_access_rule ?description ?id
      ?timeouts ~action ~destination_ports ~ip_protocol ~name ~parent
      ~priority ~source_ports ~destination_ip_ranges
      ~source_ip_ranges ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_external_access_rule __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       destination_ports =
         Prop.computed __resource_type __resource_id
           "destination_ports";
       id = Prop.computed __resource_type __resource_id "id";
       ip_protocol =
         Prop.computed __resource_type __resource_id "ip_protocol";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       source_ports =
         Prop.computed __resource_type __resource_id "source_ports";
       state = Prop.computed __resource_type __resource_id "state";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
