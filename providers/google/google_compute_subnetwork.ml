(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_config = {
  aggregation_interval : string prop option; [@option]
      (** Can only be specified if VPC flow logging for this subnetwork is enabled.
Toggles the aggregation interval for collecting flow logs. Increasing the
interval time will reduce the amount of generated flow logs for long
lasting connections. Default is an interval of 5 seconds per connection. Default value: INTERVAL_5_SEC Possible values: [INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN] *)
  filter_expr : string prop option; [@option]
      (** Export filter used to define which VPC flow logs should be logged, as as CEL expression. See
https://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.
The default value is 'true', which evaluates to include everything. *)
  flow_sampling : float prop option; [@option]
      (** Can only be specified if VPC flow logging for this subnetwork is enabled.
The value of the field must be in [0, 1]. Set the sampling rate of VPC
flow logs within the subnetwork where 1.0 means all collected logs are
reported and 0.0 means no logs are reported. Default is 0.5 which means
half of all collected logs are reported. *)
  metadata : string prop option; [@option]
      (** Can only be specified if VPC flow logging for this subnetwork is enabled.
Configures whether metadata fields should be added to the reported VPC
flow logs. Default value: INCLUDE_ALL_METADATA Possible values: [EXCLUDE_ALL_METADATA, INCLUDE_ALL_METADATA, CUSTOM_METADATA] *)
  metadata_fields : string prop list option; [@option]
      (** List of metadata fields that should be added to reported logs.
Can only be specified if VPC flow logs for this subnetwork is enabled and metadata is set to CUSTOM_METADATA. *)
}
[@@deriving yojson_of]
(** This field denotes the VPC flow logging options for this subnetwork. If
logging is enabled, logs are exported to Cloud Logging. Flow logging
isn't supported if the subnet 'purpose' field is set to subnetwork is
'REGIONAL_MANAGED_PROXY' or 'GLOBAL_MANAGED_PROXY'. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type secondary_ip_range = {
  ip_cidr_range : string prop;  (** ip_cidr_range *)
  range_name : string prop;  (** range_name *)
}
[@@deriving yojson_of]

type google_compute_subnetwork = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. This field can be set only at resource
creation time. *)
  external_ipv6_prefix : string prop option; [@option]
      (** The range of external IPv6 addresses that are owned by this subnetwork. *)
  id : string prop option; [@option]  (** id *)
  ip_cidr_range : string prop;
      (** The range of internal addresses that are owned by this subnetwork.
Provide this property when you create the subnetwork. For example,
10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
non-overlapping within a network. Only IPv4 is supported. *)
  ipv6_access_type : string prop option; [@option]
      (** The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
cannot enable direct path. Possible values: [EXTERNAL, INTERNAL] *)
  name : string prop;
      (** The name of the resource, provided by the client when initially
creating the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which
means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  network : string prop;
      (** The network this subnet belongs to.
Only networks that are in the distributed mode can have subnetworks. *)
  private_ip_google_access : bool prop option; [@option]
      (** When enabled, VMs in this subnetwork without external IP addresses can
access Google APIs and services by using Private Google Access. *)
  private_ipv6_google_access : string prop option; [@option]
      (** The private IPv6 google access type for the VMs in this subnet. *)
  project : string prop option; [@option]  (** project *)
  purpose : string prop option; [@option]
      (** The purpose of the resource. This field can be either 'PRIVATE_RFC_1918', 'REGIONAL_MANAGED_PROXY', 'GLOBAL_MANAGED_PROXY', 'PRIVATE_SERVICE_CONNECT' or 'PRIVATE_NAT'([Beta](https://terraform.io/docs/providers/google/guides/provider_versions.html)).
A subnet with purpose set to 'REGIONAL_MANAGED_PROXY' is a user-created subnetwork that is reserved for regional Envoy-based load balancers.
A subnetwork in a given region with purpose set to 'GLOBAL_MANAGED_PROXY' is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
A subnetwork with purpose set to 'PRIVATE_SERVICE_CONNECT' reserves the subnet for hosting a Private Service Connect published service.
A subnetwork with purpose set to 'PRIVATE_NAT' is used as source range for Private NAT gateways.
Note that 'REGIONAL_MANAGED_PROXY' is the preferred setting for all regional Envoy load balancers.
If unspecified, the purpose defaults to 'PRIVATE_RFC_1918'. *)
  region : string prop option; [@option]
      (** The GCP region for this subnetwork. *)
  role : string prop option; [@option]
      (** The role of subnetwork.
Currently, this field is only used when 'purpose' is 'REGIONAL_MANAGED_PROXY'.
The value can be set to 'ACTIVE' or 'BACKUP'.
An 'ACTIVE' subnetwork is one that is currently being used for Envoy-based load balancers in a region.
A 'BACKUP' subnetwork is one that is ready to be promoted to 'ACTIVE' or is currently draining. Possible values: [ACTIVE, BACKUP] *)
  secondary_ip_range : secondary_ip_range list option; [@option]
      (** An array of configurations for secondary IP ranges for VM instances
contained in this subnetwork. The primary IP of such VM must belong
to the primary ipCidrRange of the subnetwork. The alias IPs may belong
to either primary or secondary ranges.

**Note**: This field uses [attr-as-block mode](https://www.terraform.io/docs/configuration/attr-as-blocks.html) to avoid
breaking users during the 0.12 upgrade. To explicitly send a list
of zero objects you must use the following syntax:
'example=[]'
For more details about this behavior, see [this section](https://www.terraform.io/docs/configuration/attr-as-blocks.html#defining-a-fixed-object-collection-value). *)
  stack_type : string prop option; [@option]
      (** The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
If not specified IPV4_ONLY will be used. Possible values: [IPV4_ONLY, IPV4_IPV6] *)
  log_config : log_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_subnetwork *)

let log_config ?aggregation_interval ?filter_expr ?flow_sampling
    ?metadata ?metadata_fields () : log_config =
  {
    aggregation_interval;
    filter_expr;
    flow_sampling;
    metadata;
    metadata_fields;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_subnetwork ?description ?external_ipv6_prefix ?id
    ?ipv6_access_type ?private_ip_google_access
    ?private_ipv6_google_access ?project ?purpose ?region ?role
    ?secondary_ip_range ?stack_type ?timeouts ~ip_cidr_range ~name
    ~network ~log_config () : google_compute_subnetwork =
  {
    description;
    external_ipv6_prefix;
    id;
    ip_cidr_range;
    ipv6_access_type;
    name;
    network;
    private_ip_google_access;
    private_ipv6_google_access;
    project;
    purpose;
    region;
    role;
    secondary_ip_range;
    stack_type;
    log_config;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  external_ipv6_prefix : string prop;
  fingerprint : string prop;
  gateway_address : string prop;
  id : string prop;
  internal_ipv6_prefix : string prop;
  ip_cidr_range : string prop;
  ipv6_access_type : string prop;
  ipv6_cidr_range : string prop;
  name : string prop;
  network : string prop;
  private_ip_google_access : bool prop;
  private_ipv6_google_access : string prop;
  project : string prop;
  purpose : string prop;
  region : string prop;
  role : string prop;
  secondary_ip_range : secondary_ip_range list prop;
  self_link : string prop;
  stack_type : string prop;
}

let make ?description ?external_ipv6_prefix ?id ?ipv6_access_type
    ?private_ip_google_access ?private_ipv6_google_access ?project
    ?purpose ?region ?role ?secondary_ip_range ?stack_type ?timeouts
    ~ip_cidr_range ~name ~network ~log_config __id =
  let __type = "google_compute_subnetwork" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       external_ipv6_prefix =
         Prop.computed __type __id "external_ipv6_prefix";
       fingerprint = Prop.computed __type __id "fingerprint";
       gateway_address = Prop.computed __type __id "gateway_address";
       id = Prop.computed __type __id "id";
       internal_ipv6_prefix =
         Prop.computed __type __id "internal_ipv6_prefix";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       ipv6_access_type =
         Prop.computed __type __id "ipv6_access_type";
       ipv6_cidr_range = Prop.computed __type __id "ipv6_cidr_range";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       private_ip_google_access =
         Prop.computed __type __id "private_ip_google_access";
       private_ipv6_google_access =
         Prop.computed __type __id "private_ipv6_google_access";
       project = Prop.computed __type __id "project";
       purpose = Prop.computed __type __id "purpose";
       region = Prop.computed __type __id "region";
       role = Prop.computed __type __id "role";
       secondary_ip_range =
         Prop.computed __type __id "secondary_ip_range";
       self_link = Prop.computed __type __id "self_link";
       stack_type = Prop.computed __type __id "stack_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_subnetwork
        (google_compute_subnetwork ?description ?external_ipv6_prefix
           ?id ?ipv6_access_type ?private_ip_google_access
           ?private_ipv6_google_access ?project ?purpose ?region
           ?role ?secondary_ip_range ?stack_type ?timeouts
           ~ip_cidr_range ~name ~network ~log_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?external_ipv6_prefix ?id
    ?ipv6_access_type ?private_ip_google_access
    ?private_ipv6_google_access ?project ?purpose ?region ?role
    ?secondary_ip_range ?stack_type ?timeouts ~ip_cidr_range ~name
    ~network ~log_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?external_ipv6_prefix ?id ?ipv6_access_type
      ?private_ip_google_access ?private_ipv6_google_access ?project
      ?purpose ?region ?role ?secondary_ip_range ?stack_type
      ?timeouts ~ip_cidr_range ~name ~network ~log_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
