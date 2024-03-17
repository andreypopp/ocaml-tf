(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_cloud_run_v2_job__binary_authorization = {
  breakglass_justification : string option; [@option]
      (** If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass *)
  use_default : bool option; [@option]
      (** If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled. *)
}
[@@deriving yojson_of]
(** Settings for the Binary Authorization feature. *)

type google_cloud_run_v2_job__template__template__containers__env__value_source__secret_key_ref = {
  secret : string;
      (** The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project. *)
  version : string;
      (** The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version. *)
}
[@@deriving yojson_of]
(** Selects a secret and a specific version from Cloud Secret Manager. *)

type google_cloud_run_v2_job__template__template__containers__env__value_source = {
  secret_key_ref :
    google_cloud_run_v2_job__template__template__containers__env__value_source__secret_key_ref
    list;
}
[@@deriving yojson_of]
(** Source for the environment variable's value. *)

type google_cloud_run_v2_job__template__template__containers__env = {
  name : string;
      (** Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters. *)
  value : string option; [@option]
      (** Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to , and the maximum length is 32768 bytes *)
  value_source :
    google_cloud_run_v2_job__template__template__containers__env__value_source
    list;
}
[@@deriving yojson_of]
(** List of environment variables to set in the container. *)

type google_cloud_run_v2_job__template__template__containers__ports = {
  container_port : float option; [@option]
      (** Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536. *)
  name : string option; [@option]
      (** If specified, used to specify which protocol to use. Allowed values are http1 and h2c. *)
}
[@@deriving yojson_of]
(** List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.

If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on *)

type google_cloud_run_v2_job__template__template__containers__resources = {
  limits : (string * string) list option; [@option]
      (** Only memory and CPU are supported. Use key 'cpu' for CPU limit and 'memory' for memory limit. Note: The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go *)
}
[@@deriving yojson_of]
(** Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources *)

type google_cloud_run_v2_job__template__template__containers__volume_mounts = {
  mount_path : string;
      (** Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run *)
  name : string;  (** This must match the Name of a Volume. *)
}
[@@deriving yojson_of]
(** Volume to mount into the container's filesystem. *)

type google_cloud_run_v2_job__template__template__containers = {
  args : string list option; [@option]
      (** Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  command : string list option; [@option]
      (** Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  image : string;
      (** URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images *)
  name : string option; [@option]
      (** Name of the container specified as a DNS_LABEL. *)
  working_dir : string option; [@option]
      (** Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. *)
  env :
    google_cloud_run_v2_job__template__template__containers__env list;
  ports :
    google_cloud_run_v2_job__template__template__containers__ports
    list;
  resources :
    google_cloud_run_v2_job__template__template__containers__resources
    list;
  volume_mounts :
    google_cloud_run_v2_job__template__template__containers__volume_mounts
    list;
}
[@@deriving yojson_of]
(** Holds the single container that defines the unit of execution for this task. *)

type google_cloud_run_v2_job__template__template__volumes__cloud_sql_instance = {
  instances : string list option; [@option]
      (** The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance} *)
}
[@@deriving yojson_of]
(** For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. *)

type google_cloud_run_v2_job__template__template__volumes__secret__items = {
  mode : float option; [@option]
      (** Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. *)
  path : string;
      (** The relative path of the secret in the container. *)
  version : string;
      (** The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version *)
}
[@@deriving yojson_of]
(** If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version. *)

type google_cloud_run_v2_job__template__template__volumes__secret = {
  default_mode : float option; [@option]
      (** Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. *)
  secret : string;
      (** The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project. *)
  items :
    google_cloud_run_v2_job__template__template__volumes__secret__items
    list;
}
[@@deriving yojson_of]
(** Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret *)

type google_cloud_run_v2_job__template__template__volumes = {
  name : string;  (** Volume's name. *)
  cloud_sql_instance :
    google_cloud_run_v2_job__template__template__volumes__cloud_sql_instance
    list;
  secret :
    google_cloud_run_v2_job__template__template__volumes__secret list;
}
[@@deriving yojson_of]
(** A list of Volumes to make available to containers. *)

type google_cloud_run_v2_job__template__template__vpc_access__network_interfaces = {
  network : string option; [@option]
      (** The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be
looked up from the subnetwork. *)
  subnetwork : string option; [@option]
      (** The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the
subnetwork with the same name with the network will be used. *)
  tags : string list option; [@option]
      (** Network tags applied to this Cloud Run job. *)
}
[@@deriving yojson_of]
(** Direct VPC egress settings. Currently only single network interface is supported. *)

type google_cloud_run_v2_job__template__template__vpc_access = {
  connector : string option; [@option]
      (** VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. *)
  egress : string option; [@option]
      (** Traffic VPC egress settings. Possible values: [ALL_TRAFFIC, PRIVATE_RANGES_ONLY] *)
  network_interfaces :
    google_cloud_run_v2_job__template__template__vpc_access__network_interfaces
    list;
}
[@@deriving yojson_of]
(** VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)

type google_cloud_run_v2_job__template__template = {
  encryption_key : string option; [@option]
      (** A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  execution_environment : string option; [@option]
      (** The execution environment being used to host this Task. Possible values: [EXECUTION_ENVIRONMENT_GEN1, EXECUTION_ENVIRONMENT_GEN2] *)
  max_retries : float option; [@option]
      (** Number of retries allowed per Task, before marking this Task failed. *)
  service_account : string option; [@option]
      (** Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account. *)
  timeout : string option; [@option]
      (** Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.

A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  containers :
    google_cloud_run_v2_job__template__template__containers list;
  volumes :
    google_cloud_run_v2_job__template__template__volumes list;
  vpc_access :
    google_cloud_run_v2_job__template__template__vpc_access list;
}
[@@deriving yojson_of]
(** Describes the task(s) that will be created when executing an execution *)

type google_cloud_run_v2_job__template = {
  annotations : (string * string) list option; [@option]
      (** Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.

Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate.

This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  labels : (string * string) list option; [@option]
      (** Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter,
or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or
https://cloud.google.com/run/docs/configuring/labels.

Cloud Run API v2 does not support labels with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system labels in v1 now have a corresponding field in v2 ExecutionTemplate. *)
  parallelism : float option; [@option]
      (** Specifies the maximum desired number of tasks the execution should run at given time. Must be <= taskCount. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism. *)
  task_count : float option; [@option]
      (** Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/ *)
  template : google_cloud_run_v2_job__template__template list;
}
[@@deriving yojson_of]
(** The template used to create executions for this Job. *)

type google_cloud_run_v2_job__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloud_run_v2_job__timeouts *)

type google_cloud_run_v2_job__conditions = {
  execution_reason : string;  (** execution_reason *)
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  revision_reason : string;  (** revision_reason *)
  severity : string;  (** severity *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_job__latest_created_execution = {
  completion_time : string;  (** completion_time *)
  create_time : string;  (** create_time *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_job__terminal_condition = {
  execution_reason : string;  (** execution_reason *)
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  revision_reason : string;  (** revision_reason *)
  severity : string;  (** severity *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_job = {
  annotations : (string * string) list option; [@option]
      (** Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.

Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected on new resources.
All system annotations in v1 now have a corresponding field in v2 Job.

This field follows Kubernetes annotations' namespacing, limits, and rules.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  client : string option; [@option]
      (** Arbitrary identifier for the API client. *)
  client_version : string option; [@option]
      (** Arbitrary version identifier for the API client. *)
  labels : (string * string) list option; [@option]
      (** Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.

Cloud Run API v2 does not support labels with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system labels in v1 now have a corresponding field in v2 Job.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location of the cloud run job *)
  name : string;  (** Name of the Job. *)
  binary_authorization :
    google_cloud_run_v2_job__binary_authorization list;
  template : google_cloud_run_v2_job__template list;
  timeouts : google_cloud_run_v2_job__timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_run_v2_job *)

let google_cloud_run_v2_job ?annotations ?client ?client_version
    ?labels ?timeouts ~location ~name ~binary_authorization ~template
    __resource_id =
  let __resource_type = "google_cloud_run_v2_job" in
  let __resource =
    {
      annotations;
      client;
      client_version;
      labels;
      location;
      name;
      binary_authorization;
      template;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_run_v2_job __resource);
  ()
