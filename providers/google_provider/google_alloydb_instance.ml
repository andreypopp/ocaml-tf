(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_alloydb_instance__client_connection_config__ssl_config = {
  ssl_mode : string option; [@option]
      (** SSL mode. Specifies client-server SSL/TLS connection behavior. Possible values: [ENCRYPTED_ONLY, ALLOW_UNENCRYPTED_AND_ENCRYPTED] *)
}
[@@deriving yojson_of]
(** SSL config option for this instance. *)

type google_alloydb_instance__client_connection_config = {
  require_connectors : bool option; [@option]
      (** Configuration to enforce connectors only (ex: AuthProxy) connections to the database. *)
  ssl_config :
    google_alloydb_instance__client_connection_config__ssl_config
    list;
}
[@@deriving yojson_of]
(** Client connection specific configurations. *)

type google_alloydb_instance__machine_config = {
  cpu_count : float option; [@option]
      (** The number of CPU's in the VM instance. *)
}
[@@deriving yojson_of]
(** Configurations for the machines that host the underlying database engine. *)

type google_alloydb_instance__query_insights_config = {
  query_plans_per_minute : float option; [@option]
      (** Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid. *)
  query_string_length : float option; [@option]
      (** Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid. *)
  record_application_tags : bool option; [@option]
      (** Record application tags for an instance. This flag is turned on by default. *)
  record_client_address : bool option; [@option]
      (** Record client address for an instance. Client address is PII information. This flag is turned on by default. *)
}
[@@deriving yojson_of]
(** Configuration for query insights. *)

type google_alloydb_instance__read_pool_config = {
  node_count : float option; [@option]
      (** Read capacity, i.e. number of nodes in a read pool instance. *)
}
[@@deriving yojson_of]
(** Read pool specific config. If the instance type is READ_POOL, this configuration must be provided. *)

type google_alloydb_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_alloydb_instance__timeouts *)

type google_alloydb_instance = {
  annotations : (string * string) list option; [@option]
      (** Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  availability_type : string option; [@option]
      (** 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
Note that primary and read instances can have different availability types.
Only READ_POOL instance supports ZONAL type. Users can't specify the zone for READ_POOL instance.
Zone is automatically chosen from the list of zones in the region specified.
Read pool of size 1 can only have zonal availability. Read pools with node count of 2 or more
can have regional availability (nodes are present in 2 or more zones in a region).' Possible values: [AVAILABILITY_TYPE_UNSPECIFIED, ZONAL, REGIONAL] *)
  cluster : string;
      (** Identifies the alloydb cluster. Must be in the format
'projects/{project}/locations/{location}/clusters/{cluster_id}' *)
  database_flags : (string * string) list option; [@option]
      (** Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. *)
  display_name : string option; [@option]
      (** User-settable and human-readable display name for the Instance. *)
  gce_zone : string option; [@option]
      (** The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity. *)
  id : string option; [@option]  (** id *)
  instance_id : string;  (** The ID of the alloydb instance. *)
  instance_type : string;
      (** The type of the instance.
If the instance type is READ_POOL, provide the associated PRIMARY/SECONDARY instance in the 'depends_on' meta-data attribute.
If the instance type is SECONDARY, point to the cluster_type of the associated secondary cluster instead of mentioning SECONDARY.
Example: {instance_type = google_alloydb_cluster.<secondary_cluster_name>.cluster_type} instead of {instance_type = SECONDARY}
If the instance type is SECONDARY, the terraform delete instance operation does not delete the secondary instance but abandons it instead.
Use deletion_policy = FORCE in the associated secondary cluster and delete the cluster forcefully to delete the secondary cluster as well its associated secondary instance.
Users can undo the delete secondary instance action by importing the deleted secondary instance by calling terraform import. Possible values: [PRIMARY, READ_POOL, SECONDARY] *)
  labels : (string * string) list option; [@option]
      (** User-defined labels for the alloydb instance.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  client_connection_config :
    google_alloydb_instance__client_connection_config list;
  machine_config : google_alloydb_instance__machine_config list;
  query_insights_config :
    google_alloydb_instance__query_insights_config list;
  read_pool_config : google_alloydb_instance__read_pool_config list;
  timeouts : google_alloydb_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_alloydb_instance *)

let google_alloydb_instance ?annotations ?availability_type
    ?database_flags ?display_name ?gce_zone ?id ?labels ?timeouts
    ~cluster ~instance_id ~instance_type ~client_connection_config
    ~machine_config ~query_insights_config ~read_pool_config
    __resource_id =
  let __resource_type = "google_alloydb_instance" in
  let __resource =
    {
      annotations;
      availability_type;
      cluster;
      database_flags;
      display_name;
      gce_zone;
      id;
      instance_id;
      instance_type;
      labels;
      client_connection_config;
      machine_config;
      query_insights_config;
      read_pool_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_alloydb_instance __resource);
  ()
