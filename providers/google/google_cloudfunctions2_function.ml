(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type build_config__source__repo_source = {
  branch_name : string prop option; [@option]
      (** Regex matching branches to build. *)
  commit_sha : string prop option; [@option]
      (** Regex matching tags to build. *)
  dir : string prop option; [@option]
      (** Directory, relative to the source root, in which to run the build. *)
  invert_regex : bool prop option; [@option]
      (** Only trigger a build if the revision regex does
NOT match the revision regex. *)
  project_id : string prop option; [@option]
      (** ID of the project that owns the Cloud Source Repository. If omitted, the
project ID requesting the build is assumed. *)
  repo_name : string prop option; [@option]
      (** Name of the Cloud Source Repository. *)
  tag_name : string prop option; [@option]
      (** Regex matching tags to build. *)
}
[@@deriving yojson_of]
(** If provided, get the source from this location in a Cloud Source Repository. *)

type build_config__source__storage_source = {
  bucket : string prop option; [@option]
      (** Google Cloud Storage bucket containing the source *)
  generation : float prop option; [@option]
      (** Google Cloud Storage generation for the object. If the generation
is omitted, the latest generation will be used. *)
  object_ : string prop option; [@option] [@key "object"]
      (** Google Cloud Storage object containing the source. *)
}
[@@deriving yojson_of]
(** If provided, get the source from this location in Google Cloud Storage. *)

type build_config__source = {
  repo_source : build_config__source__repo_source list;
  storage_source : build_config__source__storage_source list;
}
[@@deriving yojson_of]
(** The location of the function source code. *)

type build_config = {
  docker_repository : string prop option; [@option]
      (** User managed repository created in Artifact Registry optionally with a customer managed encryption key. *)
  entry_point : string prop option; [@option]
      (** The name of the function (as defined in source code) that will be executed.
Defaults to the resource name suffix, if not specified. For backward
compatibility, if function with given name is not found, then the system
will try to use function named function. For Node.js this is name of a
function exported by the module specified in source_location. *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** User-provided build-time environment variables for the function. *)
  runtime : string prop option; [@option]
      (** The runtime in which to run the function. Required when deploying a new
function, optional when updating an existing function. *)
  worker_pool : string prop option; [@option]
      (** Name of the Cloud Build Custom Worker Pool that should be used to build the function. *)
  source : build_config__source list;
}
[@@deriving yojson_of]
(** Describes the Build step of the function that builds a container
from the given source. *)

type event_trigger__event_filters = {
  attribute : string prop;
      (** 'Required. The name of a CloudEvents attribute.
Currently, only a subset of attributes are supported for filtering. Use the 'gcloud eventarc providers describe' command to learn more about events and their attributes.
Do not filter for the 'type' attribute here, as this is already achieved by the resource's 'event_type' attribute. *)
  operator : string prop option; [@option]
      (** Optional. The operator used for matching the events with the value of
the filter. If not specified, only events that have an exact key-value
pair specified in the filter are matched.
The only allowed value is 'match-path-pattern'.
[See documentation on path patterns here](https://cloud.google.com/eventarc/docs/path-patterns)' *)
  value : string prop;
      (** Required. The value for the attribute.
If the operator field is set as 'match-path-pattern', this value can be a path pattern instead of an exact value. *)
}
[@@deriving yojson_of]
(** Criteria used to filter events. *)

type event_trigger = {
  event_type : string prop option; [@option]
      (** Required. The type of event to observe. *)
  pubsub_topic : string prop option; [@option]
      (** The name of a Pub/Sub topic in the same project that will be used
as the transport topic for the event delivery. *)
  retry_policy : string prop option; [@option]
      (** Describes the retry policy in case of function's execution failure.
Retried execution is charged as any other execution. Possible values: [RETRY_POLICY_UNSPECIFIED, RETRY_POLICY_DO_NOT_RETRY, RETRY_POLICY_RETRY] *)
  service_account_email : string prop option; [@option]
      (** Optional. The email of the trigger's service account. The service account
must have permission to invoke Cloud Run services. If empty, defaults to the
Compute Engine default service account: {project_number}-compute@developer.gserviceaccount.com. *)
  trigger_region : string prop option; [@option]
      (** The region that the trigger will be in. The trigger will only receive
events originating in this region. It can be the same
region as the function, a different region or multi-region, or the global
region. If not provided, defaults to the same region as the function. *)
  event_filters : event_trigger__event_filters list;
}
[@@deriving yojson_of]
(** An Eventarc trigger managed by Google Cloud Functions that fires events in
response to a condition in another service. *)

type service_config__secret_environment_variables = {
  key : string prop;  (** Name of the environment variable. *)
  project_id : string prop;
      (** Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function. *)
  secret : string prop;
      (** Name of the secret in secret manager (not the full resource name). *)
  version : string prop;
      (** Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start. *)
}
[@@deriving yojson_of]
(** Secret environment variables configuration. *)

type service_config__secret_volumes__versions = {
  path : string prop;
      (** Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mountPath as '/etc/secrets' and path as secret_foo would mount the secret value file at /etc/secrets/secret_foo. *)
  version : string prop;
      (** Version of the secret (version number or the string 'latest'). It is preferable to use latest version with secret volumes as secret value changes are reflected immediately. *)
}
[@@deriving yojson_of]
(** List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point.' *)

type service_config__secret_volumes = {
  mount_path : string prop;
      (** The path within the container to mount the secret volume. For example, setting the mountPath as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets *)
  project_id : string prop;
      (** Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function. *)
  secret : string prop;
      (** Name of the secret in secret manager (not the full resource name). *)
  versions : service_config__secret_volumes__versions list;
}
[@@deriving yojson_of]
(** Secret volumes configuration. *)

type service_config = {
  all_traffic_on_latest_revision : bool prop option; [@option]
      (** Whether 100% of traffic is routed to the latest revision. Defaults to true. *)
  available_cpu : string prop option; [@option]
      (** The number of CPUs used in a single container instance. Default value is calculated from available memory. *)
  available_memory : string prop option; [@option]
      (** The amount of memory available for a function.
Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is
supplied the value is interpreted as bytes. *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** Environment variables that shall be available during function execution. *)
  ingress_settings : string prop option; [@option]
      (** Available ingress settings. Defaults to ALLOW_ALL if unspecified. Default value: ALLOW_ALL Possible values: [ALLOW_ALL, ALLOW_INTERNAL_ONLY, ALLOW_INTERNAL_AND_GCLB] *)
  max_instance_count : float prop option; [@option]
      (** The limit on the maximum number of function instances that may coexist at a
given time. *)
  max_instance_request_concurrency : float prop option; [@option]
      (** Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1. *)
  min_instance_count : float prop option; [@option]
      (** The limit on the minimum number of function instances that may coexist at a
given time. *)
  service : string prop option; [@option]
      (** Name of the service associated with a Function. *)
  service_account_email : string prop option; [@option]
      (** The email of the service account for this function. *)
  timeout_seconds : float prop option; [@option]
      (** The function execution timeout. Execution is considered failed and
can be terminated if the function is not completed at the end of the
timeout period. Defaults to 60 seconds. *)
  vpc_connector : string prop option; [@option]
      (** The Serverless VPC Access connector that this cloud function can connect to. *)
  vpc_connector_egress_settings : string prop option; [@option]
      (** Available egress settings. Possible values: [VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED, PRIVATE_RANGES_ONLY, ALL_TRAFFIC] *)
  secret_environment_variables :
    service_config__secret_environment_variables list;
  secret_volumes : service_config__secret_volumes list;
}
[@@deriving yojson_of]
(** Describes the Service being deployed. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_cloudfunctions2_function = {
  description : string prop option; [@option]
      (** User-provided description of a function. *)
  id : string prop option; [@option]  (** id *)
  kms_key_name : string prop option; [@option]
      (** Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
It must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}. *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs associated with this Cloud Function.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The location of this cloud function. *)
  name : string prop;
      (** A user-defined name of the function. Function names must
be unique globally and match pattern 'projects/*/locations/*/functions/*'. *)
  project : string prop option; [@option]  (** project *)
  build_config : build_config list;
  event_trigger : event_trigger list;
  service_config : service_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_cloudfunctions2_function *)

let build_config__source__repo_source ?branch_name ?commit_sha ?dir
    ?invert_regex ?project_id ?repo_name ?tag_name () :
    build_config__source__repo_source =
  {
    branch_name;
    commit_sha;
    dir;
    invert_regex;
    project_id;
    repo_name;
    tag_name;
  }

let build_config__source__storage_source ?bucket ?generation ?object_
    () : build_config__source__storage_source =
  { bucket; generation; object_ }

let build_config__source ~repo_source ~storage_source () :
    build_config__source =
  { repo_source; storage_source }

let build_config ?docker_repository ?entry_point
    ?environment_variables ?runtime ?worker_pool ~source () :
    build_config =
  {
    docker_repository;
    entry_point;
    environment_variables;
    runtime;
    worker_pool;
    source;
  }

let event_trigger__event_filters ?operator ~attribute ~value () :
    event_trigger__event_filters =
  { attribute; operator; value }

let event_trigger ?event_type ?pubsub_topic ?retry_policy
    ?service_account_email ?trigger_region ~event_filters () :
    event_trigger =
  {
    event_type;
    pubsub_topic;
    retry_policy;
    service_account_email;
    trigger_region;
    event_filters;
  }

let service_config__secret_environment_variables ~key ~project_id
    ~secret ~version () :
    service_config__secret_environment_variables =
  { key; project_id; secret; version }

let service_config__secret_volumes__versions ~path ~version () :
    service_config__secret_volumes__versions =
  { path; version }

let service_config__secret_volumes ~mount_path ~project_id ~secret
    ~versions () : service_config__secret_volumes =
  { mount_path; project_id; secret; versions }

let service_config ?all_traffic_on_latest_revision ?available_cpu
    ?available_memory ?environment_variables ?ingress_settings
    ?max_instance_count ?max_instance_request_concurrency
    ?min_instance_count ?service ?service_account_email
    ?timeout_seconds ?vpc_connector ?vpc_connector_egress_settings
    ~secret_environment_variables ~secret_volumes () : service_config
    =
  {
    all_traffic_on_latest_revision;
    available_cpu;
    available_memory;
    environment_variables;
    ingress_settings;
    max_instance_count;
    max_instance_request_concurrency;
    min_instance_count;
    service;
    service_account_email;
    timeout_seconds;
    vpc_connector;
    vpc_connector_egress_settings;
    secret_environment_variables;
    secret_volumes;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloudfunctions2_function ?description ?id ?kms_key_name
    ?labels ?project ?timeouts ~location ~name ~build_config
    ~event_trigger ~service_config () :
    google_cloudfunctions2_function =
  {
    description;
    id;
    kms_key_name;
    labels;
    location;
    name;
    project;
    build_config;
    event_trigger;
    service_config;
    timeouts;
  }

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  environment : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  url : string prop;
}

let register ?tf_module ?description ?id ?kms_key_name ?labels
    ?project ?timeouts ~location ~name ~build_config ~event_trigger
    ~service_config __resource_id =
  let __resource_type = "google_cloudfunctions2_function" in
  let __resource =
    google_cloudfunctions2_function ?description ?id ?kms_key_name
      ?labels ?project ?timeouts ~location ~name ~build_config
      ~event_trigger ~service_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudfunctions2_function __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       environment =
         Prop.computed __resource_type __resource_id "environment";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_name =
         Prop.computed __resource_type __resource_id "kms_key_name";
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
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
