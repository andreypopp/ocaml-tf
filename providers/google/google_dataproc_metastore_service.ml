(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type encryption_config = {
  kms_key : string prop;
      (** The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
Use the following format: 'projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)' *)
}
[@@deriving yojson_of]
(** Information used to configure the Dataproc Metastore service to encrypt
customer data at rest. *)

type hive_metastore_config__auxiliary_versions = {
  config_overrides : (string * string prop) list option; [@option]
      (** A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hive metastore (configured in hive-site.xml) in addition to the primary version's overrides.
If keys are present in both the auxiliary version's overrides and the primary version's overrides, the value from the auxiliary version's overrides takes precedence. *)
  key : string prop;  (** key *)
  version : string prop;
      (** The Hive metastore version of the auxiliary service. It must be less than the primary Hive metastore service's version. *)
}
[@@deriving yojson_of]
(** A mapping of Hive metastore version to the auxiliary version configuration.
When specified, a secondary Hive metastore service is created along with the primary service.
All auxiliary versions must be less than the service's primary version.
The key is the auxiliary service name and it must match the regular expression a-z?.
This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen. *)

type hive_metastore_config__kerberos_config__keytab = {
  cloud_secret : string prop;
      (** The relative resource name of a Secret Manager secret version, in the following form:

projects/{projectNumber}/secrets/{secret_id}/versions/{version_id}. *)
}
[@@deriving yojson_of]
(** A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC). *)

type hive_metastore_config__kerberos_config = {
  krb5_config_gcs_uri : string prop;
      (** A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly. *)
  principal : string prop;
      (** A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format. *)
  keytab : hive_metastore_config__kerberos_config__keytab list;
}
[@@deriving yojson_of]
(** Information used to configure the Hive metastore service as a service principal in a Kerberos realm. *)

type hive_metastore_config = {
  config_overrides : (string * string prop) list option; [@option]
      (** A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml).
The mappings override system defaults (some keys cannot be overridden) *)
  endpoint_protocol : string prop option; [@option]
      (** The protocol to use for the metastore service endpoint. If unspecified, defaults to 'THRIFT'. Default value: THRIFT Possible values: [THRIFT, GRPC] *)
  version : string prop;  (** The Hive metastore schema version. *)
  auxiliary_versions :
    hive_metastore_config__auxiliary_versions list;
  kerberos_config : hive_metastore_config__kerberos_config list;
}
[@@deriving yojson_of]
(** Configuration information specific to running Hive metastore software as the metastore service. *)

type maintenance_window = {
  day_of_week : string prop;
      (** The day of week, when the window starts. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  hour_of_day : float prop;
      (** The hour of day (0-23) when the window starts. *)
}
[@@deriving yojson_of]
(** The one hour maintenance window of the metastore service.
This specifies when the service can be restarted for maintenance purposes in UTC time.
Maintenance window is not needed for services with the 'SPANNER' database type. *)

type metadata_integration__data_catalog_config = {
  enabled : bool prop;
      (** Defines whether the metastore metadata should be synced to Data Catalog. The default value is to disable syncing metastore metadata to Data Catalog. *)
}
[@@deriving yojson_of]
(** The integration config for the Data Catalog service. *)

type metadata_integration = {
  data_catalog_config :
    metadata_integration__data_catalog_config list;
}
[@@deriving yojson_of]
(** The setting that defines how metastore metadata should be integrated with external services and systems. *)

type network_config__consumers = {
  subnetwork : string prop;
      (** The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint.
It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network.
There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:
'projects/{projectNumber}/regions/{region_id}/subnetworks/{subnetwork_id} *)
}
[@@deriving yojson_of]
(** The consumer-side network configuration for the Dataproc Metastore instance. *)

type network_config = { consumers : network_config__consumers list }
[@@deriving yojson_of]
(** The configuration specifying the network settings for the Dataproc Metastore service. *)

type scaling_config = {
  instance_size : string prop option; [@option]
      (** Metastore instance sizes. Possible values: [EXTRA_SMALL, SMALL, MEDIUM, LARGE, EXTRA_LARGE] *)
  scaling_factor : float prop option; [@option]
      (** Scaling factor, in increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0. *)
}
[@@deriving yojson_of]
(** Represents the scaling configuration of a metastore service. *)

type telemetry_config = {
  log_format : string prop option; [@option]
      (** The output format of the Dataproc Metastore service's logs. Default value: JSON Possible values: [LEGACY, JSON] *)
}
[@@deriving yojson_of]
(** The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dataproc_metastore_service = {
  database_type : string prop option; [@option]
      (** The database type that the Metastore service stores its data. Default value: MYSQL Possible values: [MYSQL, SPANNER] *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels for the metastore service.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** The location where the metastore service should reside.
The default value is 'global'. *)
  network : string prop option; [@option]
      (** The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:

projects/{projectNumber}/global/networks/{network_id}. *)
  port : float prop option; [@option]
      (** The TCP port at which the metastore service is reached. Default: 9083. *)
  project : string prop option; [@option]  (** project *)
  release_channel : string prop option; [@option]
      (** The release channel of the service. If unspecified, defaults to 'STABLE'. Default value: STABLE Possible values: [CANARY, STABLE] *)
  service_id : string prop;
      (** The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 63 characters. *)
  tier : string prop option; [@option]
      (** The tier of the service. Possible values: [DEVELOPER, ENTERPRISE] *)
  encryption_config : encryption_config list;
  hive_metastore_config : hive_metastore_config list;
  maintenance_window : maintenance_window list;
  metadata_integration : metadata_integration list;
  network_config : network_config list;
  scaling_config : scaling_config list;
  telemetry_config : telemetry_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dataproc_metastore_service *)

let encryption_config ~kms_key () : encryption_config = { kms_key }

let hive_metastore_config__auxiliary_versions ?config_overrides ~key
    ~version () : hive_metastore_config__auxiliary_versions =
  { config_overrides; key; version }

let hive_metastore_config__kerberos_config__keytab ~cloud_secret () :
    hive_metastore_config__kerberos_config__keytab =
  { cloud_secret }

let hive_metastore_config__kerberos_config ~krb5_config_gcs_uri
    ~principal ~keytab () : hive_metastore_config__kerberos_config =
  { krb5_config_gcs_uri; principal; keytab }

let hive_metastore_config ?config_overrides ?endpoint_protocol
    ~version ~auxiliary_versions ~kerberos_config () :
    hive_metastore_config =
  {
    config_overrides;
    endpoint_protocol;
    version;
    auxiliary_versions;
    kerberos_config;
  }

let maintenance_window ~day_of_week ~hour_of_day () :
    maintenance_window =
  { day_of_week; hour_of_day }

let metadata_integration__data_catalog_config ~enabled () :
    metadata_integration__data_catalog_config =
  { enabled }

let metadata_integration ~data_catalog_config () :
    metadata_integration =
  { data_catalog_config }

let network_config__consumers ~subnetwork () :
    network_config__consumers =
  { subnetwork }

let network_config ~consumers () : network_config = { consumers }

let scaling_config ?instance_size ?scaling_factor () : scaling_config
    =
  { instance_size; scaling_factor }

let telemetry_config ?log_format () : telemetry_config =
  { log_format }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataproc_metastore_service ?database_type ?id ?labels
    ?location ?network ?port ?project ?release_channel ?tier
    ?timeouts ~service_id ~encryption_config ~hive_metastore_config
    ~maintenance_window ~metadata_integration ~network_config
    ~scaling_config ~telemetry_config () :
    google_dataproc_metastore_service =
  {
    database_type;
    id;
    labels;
    location;
    network;
    port;
    project;
    release_channel;
    service_id;
    tier;
    encryption_config;
    hive_metastore_config;
    maintenance_window;
    metadata_integration;
    network_config;
    scaling_config;
    telemetry_config;
    timeouts;
  }

type t = {
  artifact_gcs_uri : string prop;
  database_type : string prop;
  effective_labels : (string * string) list prop;
  endpoint_uri : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  service_id : string prop;
  state : string prop;
  state_message : string prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  uid : string prop;
}

let register ?tf_module ?database_type ?id ?labels ?location ?network
    ?port ?project ?release_channel ?tier ?timeouts ~service_id
    ~encryption_config ~hive_metastore_config ~maintenance_window
    ~metadata_integration ~network_config ~scaling_config
    ~telemetry_config __resource_id =
  let __resource_type = "google_dataproc_metastore_service" in
  let __resource =
    google_dataproc_metastore_service ?database_type ?id ?labels
      ?location ?network ?port ?project ?release_channel ?tier
      ?timeouts ~service_id ~encryption_config ~hive_metastore_config
      ~maintenance_window ~metadata_integration ~network_config
      ~scaling_config ~telemetry_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_metastore_service __resource);
  let __resource_attributes =
    ({
       artifact_gcs_uri =
         Prop.computed __resource_type __resource_id
           "artifact_gcs_uri";
       database_type =
         Prop.computed __resource_type __resource_id "database_type";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       endpoint_uri =
         Prop.computed __resource_type __resource_id "endpoint_uri";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       port = Prop.computed __resource_type __resource_id "port";
       project =
         Prop.computed __resource_type __resource_id "project";
       release_channel =
         Prop.computed __resource_type __resource_id
           "release_channel";
       service_id =
         Prop.computed __resource_type __resource_id "service_id";
       state = Prop.computed __resource_type __resource_id "state";
       state_message =
         Prop.computed __resource_type __resource_id "state_message";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       tier = Prop.computed __resource_type __resource_id "tier";
       uid = Prop.computed __resource_type __resource_id "uid";
     }
      : t)
  in
  __resource_attributes
