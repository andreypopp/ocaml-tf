(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__data_retention_config__task_logs_retention_config = {
  storage_mode : string prop option; [@option]
      (** Whether logs in cloud logging only is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4 and newer. *)
}
[@@deriving yojson_of]
(** Optional. The configuration setting for Task Logs. *)

type config__data_retention_config = {
  task_logs_retention_config :
    config__data_retention_config__task_logs_retention_config list;
}
[@@deriving yojson_of]
(** The configuration setting for Airflow data retention mechanism. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4. or newer *)

type config__database_config = {
  machine_type : string prop option; [@option]
      (** Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used. *)
  zone : string prop option; [@option]
      (** Optional. Cloud SQL database preferred zone. *)
}
[@@deriving yojson_of]
(** The configuration of Cloud SQL instance that is used by the Apache Airflow software. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)

type config__encryption_config = {
  kms_key_name : string prop;
      (** Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated. *)
}
[@@deriving yojson_of]
(** The encryption options for the Composer environment and its dependencies. *)

type config__maintenance_window = {
  end_time : string prop;
      (** Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end-time must be in the future, relative to 'start_time'. *)
  recurrence : string prop;
      (** Maintenance window recurrence. Format is a subset of RFC-5545 (https://tools.ietf.org/html/rfc5545) 'RRULE'. The only allowed values for 'FREQ' field are 'FREQ=DAILY' and 'FREQ=WEEKLY;BYDAY=...'. Example values: 'FREQ=WEEKLY;BYDAY=TU,WE', 'FREQ=DAILY'. *)
  start_time : string prop;
      (** Start time of the first recurrence of the maintenance window. *)
}
[@@deriving yojson_of]
(** The configuration for Cloud Composer maintenance window. *)

type config__master_authorized_networks_config__cidr_blocks = {
  cidr_block : string prop;
      (** cidr_block must be specified in CIDR notation. *)
  display_name : string prop option; [@option]
      (** display_name is a field for users to identify CIDR blocks. *)
}
[@@deriving yojson_of]
(** cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS. *)

type config__master_authorized_networks_config = {
  enabled : bool prop;
      (** Whether or not master authorized networks is enabled. *)
  cidr_blocks :
    config__master_authorized_networks_config__cidr_blocks list;
}
[@@deriving yojson_of]
(** Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs. *)

type config__node_config__ip_allocation_policy = {
  cluster_ipv4_cidr_block : string prop;
      (** cluster_ipv4_cidr_block *)
  cluster_secondary_range_name : string prop;
      (** cluster_secondary_range_name *)
  services_ipv4_cidr_block : string prop;
      (** services_ipv4_cidr_block *)
  services_secondary_range_name : string prop;
      (** services_secondary_range_name *)
  use_ip_aliases : bool prop;  (** use_ip_aliases *)
}
[@@deriving yojson_of]

type config__node_config = {
  disk_size_gb : float prop option; [@option]
      (** The disk size in GB used for node VMs. Minimum size is 20GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)
  enable_ip_masq_agent : bool prop option; [@option]
      (** Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent *)
  ip_allocation_policy :
    config__node_config__ip_allocation_policy list option;
      [@option]
      (** Configuration for controlling how IPs are allocated in the GKE cluster. Cannot be updated. *)
  machine_type : string prop option; [@option]
      (** The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: projects/{project}/zones/{zone}/machineTypes/{machineType}. Must belong to the enclosing environment's project and region/zone. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)
  network : string prop option; [@option]
      (** The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: projects/{project}/zones/{zone}/machineTypes/{machineType}. Must belong to the enclosing environment's project and region/zone. The network must belong to the environment's project. If unspecified, the default network ID in the environment's project is used. If a Custom Subnet Network is provided, subnetwork must also be provided. *)
  oauth_scopes : string prop list option; [@option]
      (** The set of Google API scopes to be made available on all node VMs. Cannot be updated. If empty, defaults to [https://www.googleapis.com/auth/cloud-platform]. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)
  service_account : string prop option; [@option]
      (** The Google Cloud Platform Service Account to be used by the node VMs. If a service account is not specified, the default Compute Engine service account is used. Cannot be updated. If given, note that the service account must have roles/composer.worker for any GCP resources created under the Cloud Composer Environment. *)
  subnetwork : string prop option; [@option]
      (** The Compute Engine subnetwork to be used for machine communications, specified as a self-link, relative resource name (e.g. projects/{project}/regions/{region}/subnetworks/{subnetwork}), or by name. If subnetwork is provided, network must also be provided and the subnetwork must belong to the enclosing environment's project and region. *)
  tags : string prop list option; [@option]
      (** The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with RFC1035. Cannot be updated. *)
  zone : string prop option; [@option]
      (** The Compute Engine zone in which to deploy the VMs running the Apache Airflow software, specified as the zone name or relative resource name (e.g. projects/{project}/zones/{zone}). Must belong to the enclosing environment's project and region. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)
}
[@@deriving yojson_of]
(** The configuration used for the Kubernetes Engine cluster. *)

type config__private_environment_config = {
  cloud_composer_connection_subnetwork : string prop option;
      [@option]
      (** When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. *)
  cloud_composer_network_ipv4_cidr_block : string prop option;
      [@option]
      (** The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. *)
  cloud_sql_ipv4_cidr_block : string prop option; [@option]
      (** The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block. *)
  connection_type : string prop option; [@option]
      (** Mode of internal communication within the Composer environment. Must be one of VPC_PEERING or PRIVATE_SERVICE_CONNECT. *)
  enable_private_endpoint : bool prop option; [@option]
      (** If true, access to the public endpoint of the GKE cluster is denied. If this field is set to true, ip_allocation_policy.use_ip_aliases must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)
  enable_privately_used_public_ips : bool prop option; [@option]
      (** When enabled, IPs from public (non-RFC1918) ranges can be used for ip_allocation_policy.cluster_ipv4_cidr_block and ip_allocation_policy.service_ipv4_cidr_block. *)
  master_ipv4_cidr_block : string prop option; [@option]
      (** The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network. If left blank, the default value of '172.16.0.0/28' is used. *)
  web_server_ipv4_cidr_block : string prop option; [@option]
      (** The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)
}
[@@deriving yojson_of]
(** The configuration used for the Private IP Cloud Composer environment. *)

type config__recovery_config__scheduled_snapshots_config = {
  enabled : bool prop;
      (** When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket. *)
  snapshot_creation_schedule : string prop option; [@option]
      (** Snapshot schedule, in the unix-cron format. *)
  snapshot_location : string prop option; [@option]
      (** the URI of a bucket folder where to save the snapshot. *)
  time_zone : string prop option; [@option]
      (** A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC+12. Examples: UTC, UTC-01, UTC+03. *)
}
[@@deriving yojson_of]
(** The configuration settings for scheduled snapshots. *)

type config__recovery_config = {
  scheduled_snapshots_config :
    config__recovery_config__scheduled_snapshots_config list;
}
[@@deriving yojson_of]
(** The recovery configuration settings for the Cloud Composer environment *)

type config__software_config = {
  airflow_config_overrides : (string * string prop) list option;
      [@option]
      (** Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example core-dags_are_paused_at_creation. Section names must not contain hyphens (-), opening square brackets ([), or closing square brackets (]). The property name must not be empty and cannot contain = or ;. Section and property names cannot contain characters: . Apache Airflow configuration property names must be written in snake_case. Property values can contain any character, and can be written in any lower/upper case format. Certain Apache Airflow configuration property values are blacklisted, and cannot be overridden. *)
  env_variables : (string * string prop) list option; [@option]
      (** Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression [a-zA-Z_][a-zA-Z0-9_]*. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+), and they cannot match any of the following reserved names: AIRFLOW_HOME C_FORCE_ROOT CONTAINER_NAME DAGS_FOLDER GCP_PROJECT GCS_BUCKET GKE_CLUSTER_NAME SQL_DATABASE SQL_INSTANCE SQL_PASSWORD SQL_PROJECT SQL_REGION SQL_USER. *)
  image_version : string prop option; [@option]
      (** The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression composer-([0-9]+(\.[0-9]+\.[0-9]+(-preview\.[0-9]+)?)?|latest)-airflow-([0-9]+(\.[0-9]+(\.[0-9]+)?)?). The Cloud Composer portion of the image version is a full semantic version, or an alias in the form of major version number or 'latest'. The Apache Airflow portion of the image version is a full semantic version that points to one of the supported Apache Airflow versions, or an alias in the form of only major or major.minor versions specified. See documentation for more details and version list. *)
  pypi_packages : (string * string prop) list option; [@option]
      (** Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name (e.g. numpy). Values are the lowercase extras and version specifier (e.g. ==1.12.0, [devel,gcp_api], [devel]>=1.8.2, <1.9.2). To specify a package without pinning it to a version specifier, use the empty string as the value. *)
  python_version : string prop option; [@option]
      (** The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes. Can be set to '2' or '3'. If not specified, the default is '2'. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use Python major version 3. *)
  scheduler_count : float prop option; [@option]
      (** The number of schedulers for Airflow. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-2.*.*. *)
}
[@@deriving yojson_of]
(** The configuration settings for software inside the environment. *)

type config__web_server_config = {
  machine_type : string prop;
      (** Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values. *)
}
[@@deriving yojson_of]
(** The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)

type config__web_server_network_access_control__allowed_ip_range = {
  description : string prop option; [@option]
      (** A description of this ip range. *)
  value : string prop;
      (** IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. IP range prefixes should be properly truncated. For example, 1.2.3.4/24 should be truncated to 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 should be truncated to 2001:db8::/32. *)
}
[@@deriving yojson_of]
(** A collection of allowed IP ranges with descriptions. *)

type config__web_server_network_access_control = {
  allowed_ip_range :
    config__web_server_network_access_control__allowed_ip_range list;
}
[@@deriving yojson_of]
(** Network-level access control policy for the Airflow web server. *)

type config__workloads_config__scheduler = {
  count : float prop option; [@option]
      (** The number of schedulers. *)
  cpu : float prop option; [@option]
      (** CPU request and limit for a single Airflow scheduler replica *)
  memory_gb : float prop option; [@option]
      (** Memory (GB) request and limit for a single Airflow scheduler replica. *)
  storage_gb : float prop option; [@option]
      (** Storage (GB) request and limit for a single Airflow scheduler replica. *)
}
[@@deriving yojson_of]
(** Configuration for resources used by Airflow schedulers. *)

type config__workloads_config__triggerer = {
  count : float prop;  (** The number of triggerers. *)
  cpu : float prop;
      (** CPU request and limit for a single Airflow triggerer replica. *)
  memory_gb : float prop;
      (** Memory (GB) request and limit for a single Airflow triggerer replica. *)
}
[@@deriving yojson_of]
(** Configuration for resources used by Airflow triggerers. *)

type config__workloads_config__web_server = {
  cpu : float prop option; [@option]
      (** CPU request and limit for Airflow web server. *)
  memory_gb : float prop option; [@option]
      (** Memory (GB) request and limit for Airflow web server. *)
  storage_gb : float prop option; [@option]
      (** Storage (GB) request and limit for Airflow web server. *)
}
[@@deriving yojson_of]
(** Configuration for resources used by Airflow web server. *)

type config__workloads_config__worker = {
  cpu : float prop option; [@option]
      (** CPU request and limit for a single Airflow worker replica. *)
  max_count : float prop option; [@option]
      (** Maximum number of workers for autoscaling. *)
  memory_gb : float prop option; [@option]
      (** Memory (GB) request and limit for a single Airflow worker replica. *)
  min_count : float prop option; [@option]
      (** Minimum number of workers for autoscaling. *)
  storage_gb : float prop option; [@option]
      (** Storage (GB) request and limit for a single Airflow worker replica. *)
}
[@@deriving yojson_of]
(** Configuration for resources used by Airflow workers. *)

type config__workloads_config = {
  scheduler : config__workloads_config__scheduler list;
  triggerer : config__workloads_config__triggerer list;
  web_server : config__workloads_config__web_server list;
  worker : config__workloads_config__worker list;
}
[@@deriving yojson_of]
(** The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. *)

type config = {
  environment_size : string prop option; [@option]
      (** The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer. *)
  node_count : float prop option; [@option]
      (** The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. *)
  resilience_mode : string prop option; [@option]
      (** Whether high resilience is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.1.15-airflow-*.*.* and newer. *)
  data_retention_config : config__data_retention_config list;
  database_config : config__database_config list;
  encryption_config : config__encryption_config list;
  maintenance_window : config__maintenance_window list;
  master_authorized_networks_config :
    config__master_authorized_networks_config list;
  node_config : config__node_config list;
  private_environment_config :
    config__private_environment_config list;
  recovery_config : config__recovery_config list;
  software_config : config__software_config list;
  web_server_config : config__web_server_config list;
  web_server_network_access_control :
    config__web_server_network_access_control list;
  workloads_config : config__workloads_config list;
}
[@@deriving yojson_of]
(** Configuration parameters for this environment. *)

type storage_config = {
  bucket : string prop;
      (** Optional. Name of an existing Cloud Storage bucket to be used by the environment. *)
}
[@@deriving yojson_of]
(** Configuration options for storage used by Composer environment. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_composer_environment = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]*[a-z0-9])?. Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]*[a-z0-9])?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be <= 128 bytes in size.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** Name of the environment. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  region : string prop option; [@option]
      (** The location or Compute Engine region for the environment. *)
  config : config list;
  storage_config : storage_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_composer_environment *)

let config__data_retention_config__task_logs_retention_config
    ?storage_mode () :
    config__data_retention_config__task_logs_retention_config =
  { storage_mode }

let config__data_retention_config ~task_logs_retention_config () :
    config__data_retention_config =
  { task_logs_retention_config }

let config__database_config ?machine_type ?zone () :
    config__database_config =
  { machine_type; zone }

let config__encryption_config ~kms_key_name () :
    config__encryption_config =
  { kms_key_name }

let config__maintenance_window ~end_time ~recurrence ~start_time () :
    config__maintenance_window =
  { end_time; recurrence; start_time }

let config__master_authorized_networks_config__cidr_blocks
    ?display_name ~cidr_block () :
    config__master_authorized_networks_config__cidr_blocks =
  { cidr_block; display_name }

let config__master_authorized_networks_config ~enabled ~cidr_blocks
    () : config__master_authorized_networks_config =
  { enabled; cidr_blocks }

let config__node_config ?disk_size_gb ?enable_ip_masq_agent
    ?ip_allocation_policy ?machine_type ?network ?oauth_scopes
    ?service_account ?subnetwork ?tags ?zone () : config__node_config
    =
  {
    disk_size_gb;
    enable_ip_masq_agent;
    ip_allocation_policy;
    machine_type;
    network;
    oauth_scopes;
    service_account;
    subnetwork;
    tags;
    zone;
  }

let config__private_environment_config
    ?cloud_composer_connection_subnetwork
    ?cloud_composer_network_ipv4_cidr_block
    ?cloud_sql_ipv4_cidr_block ?connection_type
    ?enable_private_endpoint ?enable_privately_used_public_ips
    ?master_ipv4_cidr_block ?web_server_ipv4_cidr_block () :
    config__private_environment_config =
  {
    cloud_composer_connection_subnetwork;
    cloud_composer_network_ipv4_cidr_block;
    cloud_sql_ipv4_cidr_block;
    connection_type;
    enable_private_endpoint;
    enable_privately_used_public_ips;
    master_ipv4_cidr_block;
    web_server_ipv4_cidr_block;
  }

let config__recovery_config__scheduled_snapshots_config
    ?snapshot_creation_schedule ?snapshot_location ?time_zone
    ~enabled () : config__recovery_config__scheduled_snapshots_config
    =
  {
    enabled;
    snapshot_creation_schedule;
    snapshot_location;
    time_zone;
  }

let config__recovery_config ~scheduled_snapshots_config () :
    config__recovery_config =
  { scheduled_snapshots_config }

let config__software_config ?airflow_config_overrides ?env_variables
    ?image_version ?pypi_packages ?python_version ?scheduler_count ()
    : config__software_config =
  {
    airflow_config_overrides;
    env_variables;
    image_version;
    pypi_packages;
    python_version;
    scheduler_count;
  }

let config__web_server_config ~machine_type () :
    config__web_server_config =
  { machine_type }

let config__web_server_network_access_control__allowed_ip_range
    ?description ~value () :
    config__web_server_network_access_control__allowed_ip_range =
  { description; value }

let config__web_server_network_access_control ~allowed_ip_range () :
    config__web_server_network_access_control =
  { allowed_ip_range }

let config__workloads_config__scheduler ?count ?cpu ?memory_gb
    ?storage_gb () : config__workloads_config__scheduler =
  { count; cpu; memory_gb; storage_gb }

let config__workloads_config__triggerer ~count ~cpu ~memory_gb () :
    config__workloads_config__triggerer =
  { count; cpu; memory_gb }

let config__workloads_config__web_server ?cpu ?memory_gb ?storage_gb
    () : config__workloads_config__web_server =
  { cpu; memory_gb; storage_gb }

let config__workloads_config__worker ?cpu ?max_count ?memory_gb
    ?min_count ?storage_gb () : config__workloads_config__worker =
  { cpu; max_count; memory_gb; min_count; storage_gb }

let config__workloads_config ~scheduler ~triggerer ~web_server
    ~worker () : config__workloads_config =
  { scheduler; triggerer; web_server; worker }

let config ?environment_size ?node_count ?resilience_mode
    ~data_retention_config ~database_config ~encryption_config
    ~maintenance_window ~master_authorized_networks_config
    ~node_config ~private_environment_config ~recovery_config
    ~software_config ~web_server_config
    ~web_server_network_access_control ~workloads_config () : config
    =
  {
    environment_size;
    node_count;
    resilience_mode;
    data_retention_config;
    database_config;
    encryption_config;
    maintenance_window;
    master_authorized_networks_config;
    node_config;
    private_environment_config;
    recovery_config;
    software_config;
    web_server_config;
    web_server_network_access_control;
    workloads_config;
  }

let storage_config ~bucket () : storage_config = { bucket }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_composer_environment ?id ?labels ?project ?region
    ?timeouts ~name ~config ~storage_config () :
    google_composer_environment =
  {
    id;
    labels;
    name;
    project;
    region;
    config;
    storage_config;
    timeouts;
  }

type t = {
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?project ?region ?timeouts ~name ~config
    ~storage_config __id =
  let __type = "google_composer_environment" in
  let __attrs =
    ({
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_composer_environment
        (google_composer_environment ?id ?labels ?project ?region
           ?timeouts ~name ~config ~storage_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?region ?timeouts ~name
    ~config ~storage_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ?region ?timeouts ~name ~config
      ~storage_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
