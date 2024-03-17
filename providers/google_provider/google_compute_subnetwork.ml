(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_subnetwork__log_config = {
  aggregation_interval : string option; [@option]
      (** Can only be specified if VPC flow logging for this subnetwork is enabled.
Toggles the aggregation interval for collecting flow logs. Increasing the
interval time will reduce the amount of generated flow logs for long
lasting connections. Default is an interval of 5 seconds per connection. Default value: INTERVAL_5_SEC Possible values: [INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN] *)
  filter_expr : string option; [@option]
      (** Export filter used to define which VPC flow logs should be logged, as as CEL expression. See
https://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.
The default value is 'true', which evaluates to include everything. *)
  flow_sampling : float option; [@option]
      (** Can only be specified if VPC flow logging for this subnetwork is enabled.
The value of the field must be in [0, 1]. Set the sampling rate of VPC
flow logs within the subnetwork where 1.0 means all collected logs are
reported and 0.0 means no logs are reported. Default is 0.5 which means
half of all collected logs are reported. *)
  metadata : string option; [@option]
      (** Can only be specified if VPC flow logging for this subnetwork is enabled.
Configures whether metadata fields should be added to the reported VPC
flow logs. Default value: INCLUDE_ALL_METADATA Possible values: [EXCLUDE_ALL_METADATA, INCLUDE_ALL_METADATA, CUSTOM_METADATA] *)
  metadata_fields : string list option; [@option]
      (** List of metadata fields that should be added to reported logs.
Can only be specified if VPC flow logs for this subnetwork is enabled and metadata is set to CUSTOM_METADATA. *)
}
[@@deriving yojson_of]
(** This field denotes the VPC flow logging options for this subnetwork. If
logging is enabled, logs are exported to Cloud Logging. Flow logging
isn't supported if the subnet 'purpose' field is set to subnetwork is
'REGIONAL_MANAGED_PROXY' or 'GLOBAL_MANAGED_PROXY'. *)

type google_compute_subnetwork__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_subnetwork__timeouts *)

type google_compute_subnetwork__secondary_ip_range = {
  ip_cidr_range : string;  (** ip_cidr_range *)
  range_name : string;  (** range_name *)
}
[@@deriving yojson_of]

type google_compute_subnetwork = {
  description : string option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. This field can be set only at resource
creation time. *)
  ip_cidr_range : string;
      (** The range of internal addresses that are owned by this subnetwork.
Provide this property when you create the subnetwork. For example,
10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
non-overlapping within a network. Only IPv4 is supported. *)
  ipv6_access_type : string option; [@option]
      (** The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
cannot enable direct path. Possible values: [EXTERNAL, INTERNAL] *)
  name : string;
      (** The name of the resource, provided by the client when initially
creating the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which
means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  network : string;
      (** The network this subnet belongs to.
Only networks that are in the distributed mode can have subnetworks. *)
  role : string option; [@option]
      (** The role of subnetwork.
Currently, this field is only used when 'purpose' is 'REGIONAL_MANAGED_PROXY'.
The value can be set to 'ACTIVE' or 'BACKUP'.
An 'ACTIVE' subnetwork is one that is currently being used for Envoy-based load balancers in a region.
A 'BACKUP' subnetwork is one that is ready to be promoted to 'ACTIVE' or is currently draining. Possible values: [ACTIVE, BACKUP] *)
  log_config : google_compute_subnetwork__log_config list;
  timeouts : google_compute_subnetwork__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_subnetwork *)

let google_compute_subnetwork ?description ?ipv6_access_type ?role
    ?timeouts ~ip_cidr_range ~name ~network ~log_config __resource_id
    =
  let __resource_type = "google_compute_subnetwork" in
  let __resource =
    {
      description;
      ip_cidr_range;
      ipv6_access_type;
      name;
      network;
      role;
      log_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_subnetwork __resource);
  ()
