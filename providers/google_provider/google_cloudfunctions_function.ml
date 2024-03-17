(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_cloudfunctions_function__event_trigger__failure_policy = {
  retry : bool;
      (** Whether the function should be retried on failure. Defaults to false. *)
}
[@@deriving yojson_of]
(** Specifies policy for failed executions *)

type google_cloudfunctions_function__event_trigger = {
  event_type : string;
      (** The type of event to observe. For example: google.storage.object.finalize. See the documentation on calling Cloud Functions for a full reference of accepted triggers. *)
  resource : string;
      (** The name or partial URI of the resource from which to observe events. For example, myBucket or projects/my-project/topics/my-topic *)
  failure_policy :
    google_cloudfunctions_function__event_trigger__failure_policy
    list;
}
[@@deriving yojson_of]
(** A source that fires events in response to a condition in another service. Cannot be used with trigger_http. *)

type google_cloudfunctions_function__secret_environment_variables = {
  key : string;  (** Name of the environment variable. *)
  project_id : string option; [@option]
      (** Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function. *)
  secret : string;
      (** ID of the secret in secret manager (not the full resource name). *)
  version : string;
      (** Version of the secret (version number or the string latest). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new clones start. *)
}
[@@deriving yojson_of]
(** Secret environment variables configuration *)

type google_cloudfunctions_function__secret_volumes__versions = {
  path : string;
      (** Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as /etc/secrets and path as /secret_foo would mount the secret value file at /etc/secrets/secret_foo. *)
  version : string;
      (** Version of the secret (version number or the string latest). It is preferable to use latest version with secret volumes as secret value changes are reflected immediately. *)
}
[@@deriving yojson_of]
(** List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point. *)

type google_cloudfunctions_function__secret_volumes = {
  mount_path : string;
      (** The path within the container to mount the secret volume. For example, setting the mount_path as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log. *)
  project_id : string option; [@option]
      (** Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function. *)
  secret : string;
      (** ID of the secret in secret manager (not the full resource name). *)
  versions :
    google_cloudfunctions_function__secret_volumes__versions list;
}
[@@deriving yojson_of]
(** Secret volumes configuration. *)

type google_cloudfunctions_function__source_repository = {
  deployed_url : string;
      (** The URL pointing to the hosted repository where the function was defined at the time of deployment. *)
  url : string;
      (** The URL pointing to the hosted repository where the function is defined. *)
}
[@@deriving yojson_of]
(** Represents parameters related to source repository where a function is hosted. Cannot be set alongside source_archive_bucket or source_archive_object. *)

type google_cloudfunctions_function__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloudfunctions_function__timeouts *)

type google_cloudfunctions_function = {
  available_memory_mb : float option; [@option]
      (** Memory (in MB), available to the function. Default value is 256. Possible values include 128, 256, 512, 1024, etc. *)
  build_environment_variables : (string * string) list option;
      [@option]
      (**  A set of key/value environment variable pairs available during build time. *)
  build_worker_pool : string option; [@option]
      (** Name of the Cloud Build Custom Worker Pool that should be used to build the function. *)
  description : string option; [@option]
      (** Description of the function. *)
  docker_repository : string option; [@option]
      (** User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry for storing images built with Cloud Build. *)
  entry_point : string option; [@option]
      (** Name of the function that will be executed when the Google Cloud Function is triggered. *)
  environment_variables : (string * string) list option; [@option]
      (** A set of key/value environment variable pairs to assign to the function. *)
  ingress_settings : string option; [@option]
      (** String value that controls what traffic can reach the function. Allowed values are ALLOW_ALL and ALLOW_INTERNAL_ONLY. Changes to this field will recreate the cloud function. *)
  kms_key_name : string option; [@option]
      (** Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  min_instances : float option; [@option]
      (** The limit on the minimum number of function instances that may coexist at a given time. *)
  name : string;
      (** A user-defined name of the function. Function names must be unique globally. *)
  runtime : string;
      (** The runtime in which the function is going to run. Eg. nodejs12, nodejs14, python37, go111. *)
  source_archive_bucket : string option; [@option]
      (** The GCS bucket containing the zip archive which contains the function. *)
  source_archive_object : string option; [@option]
      (** The source archive object (file) in archive bucket. *)
  timeout : float option; [@option]
      (** Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds. *)
  trigger_http : bool option; [@option]
      (** Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as https_trigger_url. Cannot be used with trigger_bucket and trigger_topic. *)
  vpc_connector : string option; [@option]
      (** The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is projects/*/locations/*/connectors/*. *)
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
    ?docker_repository ?entry_point ?environment_variables
    ?ingress_settings ?kms_key_name ?labels ?min_instances
    ?source_archive_bucket ?source_archive_object ?timeout
    ?trigger_http ?vpc_connector ?timeouts ~name ~runtime
    ~event_trigger ~secret_environment_variables ~secret_volumes
    ~source_repository __resource_id =
  let __resource_type = "google_cloudfunctions_function" in
  let __resource =
    {
      available_memory_mb;
      build_environment_variables;
      build_worker_pool;
      description;
      docker_repository;
      entry_point;
      environment_variables;
      ingress_settings;
      kms_key_name;
      labels;
      min_instances;
      name;
      runtime;
      source_archive_bucket;
      source_archive_object;
      timeout;
      trigger_http;
      vpc_connector;
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
