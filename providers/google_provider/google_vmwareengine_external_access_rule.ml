(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vmwareengine_external_access_rule__destination_ip_ranges = {
  external_address : string option; [@option]
      (** The name of an 'ExternalAddress' resource. *)
  ip_address_range : string option; [@option]
      (** An IP address range in the CIDR format. *)
}
[@@deriving yojson_of]
(** If destination ranges are specified, the external access rule applies only to
traffic that has a destination IP address in these ranges. *)

type google_vmwareengine_external_access_rule__source_ip_ranges = {
  ip_address : string option; [@option]  (** A single IP address. *)
  ip_address_range : string option; [@option]
      (** An IP address range in the CIDR format. *)
}
[@@deriving yojson_of]
(** If source ranges are specified, the external access rule applies only to
traffic that has a source IP address in these ranges. *)

type google_vmwareengine_external_access_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_external_access_rule__timeouts *)

type google_vmwareengine_external_access_rule = {
  action : string;
      (** The action that the external access rule performs. Possible values: [ALLOW, DENY] *)
  description : string option; [@option]
      (** User-provided description for the external access rule. *)
  destination_ports : string list;
      (** A list of destination ports to which the external access rule applies. *)
  ip_protocol : string;
      (** The IP protocol to which the external access rule applies. *)
  name : string;  (** The ID of the external access rule. *)
  parent : string;
      (** The resource name of the network policy.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy *)
  priority : float;
      (** External access rule priority, which determines the external access rule to use when multiple rules apply. *)
  source_ports : string list;
      (** A list of source ports to which the external access rule applies. *)
  destination_ip_ranges :
    google_vmwareengine_external_access_rule__destination_ip_ranges
    list;
  source_ip_ranges :
    google_vmwareengine_external_access_rule__source_ip_ranges list;
  timeouts :
    google_vmwareengine_external_access_rule__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_external_access_rule *)

let google_vmwareengine_external_access_rule ?description ?timeouts
    ~action ~destination_ports ~ip_protocol ~name ~parent ~priority
    ~source_ports ~destination_ip_ranges ~source_ip_ranges
    __resource_id =
  let __resource_type = "google_vmwareengine_external_access_rule" in
  let __resource =
    {
      action;
      description;
      destination_ports;
      ip_protocol;
      name;
      parent;
      priority;
      source_ports;
      destination_ip_ranges;
      source_ip_ranges;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_external_access_rule __resource);
  ()