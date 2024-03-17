(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudfunctions_function__event_trigger__failure_policy = {
  retry : bool prop;
      (** Whether the function should be retried on failure. Defaults to false. *)
}
[@@deriving yojson_of]
(** Specifies policy for failed executions *)

type google_cloudfunctions_function__event_trigger = {
  event_type : string prop;
      (** The type of event to observe. For example: google.storage.object.finalize. See the documentation on calling Cloud Functions for a full reference of accepted triggers. *)
  resource : string prop;
      (** The name or partial URI of the resource from which to observe events. For example, myBucket or projects/my-project/topics/my-topic *)
  failure_policy :
    google_cloudfunctions_function__event_trigger__failure_policy
    list;
}
[@@deriving yojson_of]
(** A source that fires events in response to a condition in another service. Cannot be used with trigger_http. *)

type google_cloudfunctions_function__secret_environment_variables = {
  key : string prop;  (** Name of the environment variable. *)
  project_id : string prop option; [@option]
      (** Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function. *)
  secret : string prop;
      (** ID of the secret in secret manager (not the full resource name). *)
  version : string prop;
      (** Version of the secret (version number or the string latest). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new clones start. *)
}
[@@deriving yojson_of]
(** Secret environment variables configuration *)

type google_cloudfunctions_function__secret_volumes__versions = {
  path : string prop;
      (** Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as /etc/secrets and path as /secret_foo would mount the secret value file at /etc/secrets/secret_foo. *)
  version : string prop;
      (** Version of the secret (version number or the string latest). It is preferable to use latest version with secret volumes as secret value changes are reflected immediately. *)
}
[@@deriving yojson_of]
(** List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point. *)

type google_cloudfunctions_function__secret_volumes = {
  mount_path : string prop;
      (** The path within the container to mount the secret volume. For example, setting the mount_path as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log. *)
  project_id : string prop option; [@option]
      (** Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function. *)
  secret : string prop;
      (** ID of the secret in secret manager (not the full resource name). *)
  versions :
    google_cloudfunctions_function__secret_volumes__versions list;
}
[@@deriving yojson_of]
(** Secret volumes configuration. *)

type google_cloudfunctions_function__source_repository = {
  deployed_url : string prop;
      (** The URL pointing to the hosted repository where the function was defined at the time of deployment. *)
  url : string prop;
      (** The URL pointing to the hosted repository where the function is defined. *)
}
[@@deriving yojson_of]
(** Represents parameters related to source repository where a function is hosted. Cannot be set alongside source_archive_bucket or source_archive_object. *)

type google_cloudfunctions_function__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloudfunctions_function__timeouts *)

type google_cloudfunctions_function = {
  available_memory_mb : float prop option; [@option]
      (** Memory (in MB), available to the function. Default value is 256. Possible values include 128, 256, 512, 1024, etc. *)
  build_environment_variables : (string * string prop) list option;
      [@option]
      (**  A set of key/value environment variable pairs available during build time. *)
  build_worker_pool : string prop option; [@option]
      (** Name of the Cloud Build Custom Worker Pool that should be used to build the function. *)
  description : string prop option; [@option]
      (** Description of the function. *)
  docker_registry : string prop option; [@option]
      (** Docker Registry to use for storing the function's Docker images. Allowed values are ARTIFACT_REGISTRY (default) and CONTAINER_REGISTRY. *)
  docker_repository : string prop option; [@option]
      (** User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry for storing images built with Cloud Build. *)
  entry_point : string prop option; [@option]
      (** Name of the function that will be executed when the Google Cloud Function is triggered. *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** A set of key/value environment variable pairs to assign to the function. *)
  https_trigger_security_level : string prop option; [@option]
      (** The security level for the function. Defaults to SECURE_OPTIONAL. Valid only if trigger_http is used. *)
  https_trigger_url : string prop option; [@option]
      (** URL which triggers function execution. Returned only if trigger_http is used. *)
  id : string prop option; [@option]  (** id *)
  ingress_settings : string prop option; [@option]
      (** String value that controls what traffic can reach the function. Allowed values are ALLOW_ALL and ALLOW_INTERNAL_ONLY. Changes to this field will recreate the cloud function. *)
  kms_key_name : string prop option; [@option]
      (** Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  max_instances : float prop option; [@option]
      (** The limit on the maximum number of function instances that may coexist at a given time. *)
  min_instances : float prop option; [@option]
      (** The limit on the minimum number of function instances that may coexist at a given time. *)
  name : string prop;
      (** A user-defined name of the function. Function names must be unique globally. *)
  project : string prop option; [@option]
      (** Project of the function. If it is not provided, the provider project is used. *)
  region : string prop option; [@option]
      (** Region of function. If it is not provided, the provider region is used. *)
  runtime : string prop;
      (** The runtime in which the function is going to run. Eg. nodejs12, nodejs14, python37, go111. *)
  service_account_email : string prop option; [@option]
      (**  If provided, the self-provided service account to run the function with. *)
  source_archive_bucket : string prop option; [@option]
      (** The GCS bucket containing the zip archive which contains the function. *)
  source_archive_object : string prop option; [@option]
      (** The source archive object (file) in archive bucket. *)
  timeout : float prop option; [@option]
      (** Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds. *)
  trigger_http : bool prop option; [@option]
      (** Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as https_trigger_url. Cannot be used with trigger_bucket and trigger_topic. *)
  vpc_connector : string prop option; [@option]
      (** The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is projects/*/locations/*/connectors/*. *)
  vpc_connector_egress_settings : string prop option; [@option]
      (** The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY. Defaults to PRIVATE_RANGES_ONLY. If unset, this field preserves the previously set value. *)
  event_trigger : google_cloudfunctions_function__event_trigger list;
  secret_environment_variables :
    google_cloudfunctions_function__secret_environment_variables list;
  secret_volumes :
    google_cloudfunctions_function__secret_volumes list;
  source_repository :
    google_cloudfunctions_function__source_repository list;
  timeouts : google_cloudfunctions_function__timeouts option;
}
[@@deriving yojson_of]
(** google_cloudfunctions_function *)

let google_cloudfunctions_function ?available_memory_mb
    ?build_environment_variables ?build_worker_pool ?description
    ?docker_registry ?docker_repository ?entry_point
    ?environment_variables ?https_trigger_security_level
    ?https_trigger_url ?id ?ingress_settings ?kms_key_name ?labels
    ?max_instances ?min_instances ?project ?region
    ?service_account_email ?source_archive_bucket
    ?source_archive_object ?timeout ?trigger_http ?vpc_connector
    ?vpc_connector_egress_settings ?timeouts ~name ~runtime
    ~event_trigger ~secret_environment_variables ~secret_volumes
    ~source_repository __resource_id =
  let __resource_type = "google_cloudfunctions_function" in
  let __resource =
    {
      available_memory_mb;
      build_environment_variables;
      build_worker_pool;
      description;
      docker_registry;
      docker_repository;
      entry_point;
      environment_variables;
      https_trigger_security_level;
      https_trigger_url;
      id;
      ingress_settings;
      kms_key_name;
      labels;
      max_instances;
      min_instances;
      name;
      project;
      region;
      runtime;
      service_account_email;
      source_archive_bucket;
      source_archive_object;
      timeout;
      trigger_http;
      vpc_connector;
      vpc_connector_egress_settings;
      event_trigger;
      secret_environment_variables;
      secret_volumes;
      source_repository;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudfunctions_function __resource);
  ()
