(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_cloudfunctions2_function__build_config__source__repo_source = {
  branch_name : string option; [@option]
      (** Regex matching branches to build. *)
  commit_sha : string option; [@option]
      (** Regex matching tags to build. *)
  dir : string option; [@option]
      (** Directory, relative to the source root, in which to run the build. *)
  invert_regex : bool option; [@option]
      (** Only trigger a build if the revision regex does
NOT match the revision regex. *)
  project_id : string option; [@option]
      (** ID of the project that owns the Cloud Source Repository. If omitted, the
project ID requesting the build is assumed. *)
  repo_name : string option; [@option]
      (** Name of the Cloud Source Repository. *)
  tag_name : string option; [@option]
      (** Regex matching tags to build. *)
}
[@@deriving yojson_of]
(** If provided, get the source from this location in a Cloud Source Repository. *)

type google_cloudfunctions2_function__build_config__source__storage_source = {
  bucket : string option; [@option]
      (** Google Cloud Storage bucket containing the source *)
  generation : float option; [@option]
      (** Google Cloud Storage generation for the object. If the generation
is omitted, the latest generation will be used. *)
  object_ : string option; [@option] [@key "object"]
      (** Google Cloud Storage object containing the source. *)
}
[@@deriving yojson_of]
(** If provided, get the source from this location in Google Cloud Storage. *)

type google_cloudfunctions2_function__build_config__source = {
  repo_source :
    google_cloudfunctions2_function__build_config__source__repo_source
    list;
  storage_source :
    google_cloudfunctions2_function__build_config__source__storage_source
    list;
}
[@@deriving yojson_of]
(** The location of the function source code. *)

type google_cloudfunctions2_function__build_config = {
  build : string;
      (** The Cloud Build name of the latest successful
deployment of the function. *)
  docker_repository : string option; [@option]
      (** User managed repository created in Artifact Registry optionally with a customer managed encryption key. *)
  entry_point : string option; [@option]
      (** The name of the function (as defined in source code) that will be executed.
Defaults to the resource name suffix, if not specified. For backward
compatibility, if function with given name is not found, then the system
will try to use function named function. For Node.js this is name of a
function exported by the module specified in source_location. *)
  environment_variables : (string * string) list option; [@option]
      (** User-provided build-time environment variables for the function. *)
  runtime : string option; [@option]
      (** The runtime in which to run the function. Required when deploying a new
function, optional when updating an existing function. *)
  worker_pool : string option; [@option]
      (** Name of the Cloud Build Custom Worker Pool that should be used to build the function. *)
  source : google_cloudfunctions2_function__build_config__source list;
}
[@@deriving yojson_of]
(** Describes the Build step of the function that builds a container
from the given source. *)

type google_cloudfunctions2_function__event_trigger__event_filters = {
  attribute : string;
      (** 'Required. The name of a CloudEvents attribute.
Currently, only a subset of attributes are supported for filtering. Use the 'gcloud eventarc providers describe' command to learn more about events and their attributes.
Do not filter for the 'type' attribute here, as this is already achieved by the resource's 'event_type' attribute. *)
  operator : string option; [@option]
      (** Optional. The operator used for matching the events with the value of
the filter. If not specified, only events that have an exact key-value
pair specified in the filter are matched.
The only allowed value is 'match-path-pattern'.
[See documentation on path patterns here](https://cloud.google.com/eventarc/docs/path-patterns)' *)
  value : string;
      (** Required. The value for the attribute.
If the operator field is set as 'match-path-pattern', this value can be a path pattern instead of an exact value. *)
}
[@@deriving yojson_of]
(** Criteria used to filter events. *)

type google_cloudfunctions2_function__event_trigger = {
  event_type : string option; [@option]
      (** Required. The type of event to observe. *)
  pubsub_topic : string option; [@option]
      (** The name of a Pub/Sub topic in the same project that will be used
as the transport topic for the event delivery. *)
  retry_policy : string option; [@option]
      (** Describes the retry policy in case of function's execution failure.
Retried execution is charged as any other execution. Possible values: [RETRY_POLICY_UNSPECIFIED, RETRY_POLICY_DO_NOT_RETRY, RETRY_POLICY_RETRY] *)
  service_account_email : string option; [@option]
      (** Optional. The email of the trigger's service account. The service account
must have permission to invoke Cloud Run services. If empty, defaults to the
Compute Engine default service account: {project_number}-compute@developer.gserviceaccount.com. *)
  trigger : string;
      (** Output only. The resource name of the Eventarc trigger. *)
  trigger_region : string option; [@option]
      (** The region that the trigger will be in. The trigger will only receive
events originating in this region. It can be the same
region as the function, a different region or multi-region, or the global
region. If not provided, defaults to the same region as the function. *)
  event_filters :
    google_cloudfunctions2_function__event_trigger__event_filters
    list;
}
[@@deriving yojson_of]
(** An Eventarc trigger managed by Google Cloud Functions that fires events in
response to a condition in another service. *)

type google_cloudfunctions2_function__service_config__secret_environment_variables = {
  key : string;  (** Name of the environment variable. *)
  project_id : string;
      (** Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function. *)
  secret : string;
      (** Name of the secret in secret manager (not the full resource name). *)
  version : string;
      (** Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start. *)
}
[@@deriving yojson_of]
(** Secret environment variables configuration. *)

type google_cloudfunctions2_function__service_config__secret_volumes__versions = {
  path : string;
      (** Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mountPath as '/etc/secrets' and path as secret_foo would mount the secret value file at /etc/secrets/secret_foo. *)
  version : string;
      (** Version of the secret (version number or the string 'latest'). It is preferable to use latest version with secret volumes as secret value changes are reflected immediately. *)
}
[@@deriving yojson_of]
(** List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point.' *)

type google_cloudfunctions2_function__service_config__secret_volumes = {
  mount_path : string;
      (** The path within the container to mount the secret volume. For example, setting the mountPath as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets *)
  project_id : string;
      (** Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function. *)
  secret : string;
      (** Name of the secret in secret manager (not the full resource name). *)
  versions :
    google_cloudfunctions2_function__service_config__secret_volumes__versions
    list;
}
[@@deriving yojson_of]
(** Secret volumes configuration. *)

type google_cloudfunctions2_function__service_config = {
  all_traffic_on_latest_revision : bool option; [@option]
      (** Whether 100% of traffic is routed to the latest revision. Defaults to true. *)
  available_cpu : string option; [@option]
      (** The number of CPUs used in a single container instance. Default value is calculated from available memory. *)
  available_memory : string option; [@option]
      (** The amount of memory available for a function.
Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is
supplied the value is interpreted as bytes. *)
  environment_variables : (string * string) list option; [@option]
      (** Environment variables that shall be available during function execution. *)
  gcf_uri : string;  (** URIs of the Service deployed *)
  ingress_settings : string option; [@option]
      (** Available ingress settings. Defaults to ALLOW_ALL if unspecified. Default value: ALLOW_ALL Possible values: [ALLOW_ALL, ALLOW_INTERNAL_ONLY, ALLOW_INTERNAL_AND_GCLB] *)
  max_instance_count : float option; [@option]
      (** The limit on the maximum number of function instances that may coexist at a
given time. *)
  max_instance_request_concurrency : float option; [@option]
      (** Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1. *)
  min_instance_count : float option; [@option]
      (** The limit on the minimum number of function instances that may coexist at a
given time. *)
  service : string option; [@option]
      (** Name of the service associated with a Function. *)
  service_account_email : string option; [@option]
      (** The email of the service account for this function. *)
  timeout_seconds : float option; [@option]
      (** The function execution timeout. Execution is considered failed and
can be terminated if the function is not completed at the end of the
timeout period. Defaults to 60 seconds. *)
  uri : string;  (** URI of the Service deployed. *)
  vpc_connector : string option; [@option]
      (** The Serverless VPC Access connector that this cloud function can connect to. *)
  vpc_connector_egress_settings : string option; [@option]
      (** Available egress settings. Possible values: [VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED, PRIVATE_RANGES_ONLY, ALL_TRAFFIC] *)
  secret_environment_variables :
    google_cloudfunctions2_function__service_config__secret_environment_variables
    list;
  secret_volumes :
    google_cloudfunctions2_function__service_config__secret_volumes
    list;
}
[@@deriving yojson_of]
(** Describes the Service being deployed. *)

type google_cloudfunctions2_function__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloudfunctions2_function__timeouts *)

type google_cloudfunctions2_function = {
  description : string option; [@option]
      (** User-provided description of a function. *)
  kms_key_name : string option; [@option]
      (** Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
It must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs associated with this Cloud Function.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location of this cloud function. *)
  name : string;
      (** A user-defined name of the function. Function names must
be unique globally and match pattern 'projects/*/locations/*/functions/*'. *)
  build_config : google_cloudfunctions2_function__build_config list;
  event_trigger :
    google_cloudfunctions2_function__event_trigger list;
  service_config :
    google_cloudfunctions2_function__service_config list;
  timeouts : google_cloudfunctions2_function__timeouts option;
}
[@@deriving yojson_of]
(** google_cloudfunctions2_function *)

let google_cloudfunctions2_function ?description ?kms_key_name
    ?labels ?timeouts ~location ~name ~build_config ~event_trigger
    ~service_config __resource_id =
  let __resource_type = "google_cloudfunctions2_function" in
  let __resource =
    {
      description;
      kms_key_name;
      labels;
      location;
      name;
      build_config;
      event_trigger;
      service_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudfunctions2_function __resource);
  ()
