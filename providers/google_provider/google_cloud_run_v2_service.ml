(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloud_run_v2_service__binary_authorization = {
  breakglass_justification : string prop option; [@option]
      (** If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass *)
  use_default : bool prop option; [@option]
      (** If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled. *)
}
[@@deriving yojson_of]
(** Settings for the Binary Authorization feature. *)

type google_cloud_run_v2_service__template__containers__env__value_source__secret_key_ref = {
  secret : string prop;
      (** The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project. *)
  version : string prop option; [@option]
      (** The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version. *)
}
[@@deriving yojson_of]
(** Selects a secret and a specific version from Cloud Secret Manager. *)

type google_cloud_run_v2_service__template__containers__env__value_source = {
  secret_key_ref :
    google_cloud_run_v2_service__template__containers__env__value_source__secret_key_ref
    list;
}
[@@deriving yojson_of]
(** Source for the environment variable's value. *)

type google_cloud_run_v2_service__template__containers__env = {
  name : string prop;
      (** Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters. *)
  value : string prop option; [@option]
      (** Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to , and the maximum length is 32768 bytes *)
  value_source :
    google_cloud_run_v2_service__template__containers__env__value_source
    list;
}
[@@deriving yojson_of]
(** List of environment variables to set in the container. *)

type google_cloud_run_v2_service__template__containers__liveness_probe__grpc = {
  port : float prop option; [@option]
      (** Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. *)
  service : string prop option; [@option]
      (** The name of the service to place in the gRPC HealthCheckRequest
(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
If this is not specified, the default behavior is defined by gRPC. *)
}
[@@deriving yojson_of]
(** GRPC specifies an action involving a GRPC port. *)

type google_cloud_run_v2_service__template__containers__liveness_probe__http_get__http_headers = {
  name : string prop;  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Custom headers to set in the request. HTTP allows repeated headers. *)

type google_cloud_run_v2_service__template__containers__liveness_probe__http_get = {
  path : string prop option; [@option]
      (** Path to access on the HTTP server. Defaults to '/'. *)
  port : float prop option; [@option]
      (** Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. *)
  http_headers :
    google_cloud_run_v2_service__template__containers__liveness_probe__http_get__http_headers
    list;
}
[@@deriving yojson_of]
(** HTTPGet specifies the http request to perform. *)

type google_cloud_run_v2_service__template__containers__liveness_probe__tcp_socket = {
  port : float prop;
      (** Port number to access on the container. Must be in the range 1 to 65535.
If not specified, defaults to the exposed port of the container, which
is the value of container.ports[0].containerPort. *)
}
[@@deriving yojson_of]
(** TCPSocketAction describes an action based on opening a socket *)

type google_cloud_run_v2_service__template__containers__liveness_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes *)
  grpc :
    google_cloud_run_v2_service__template__containers__liveness_probe__grpc
    list;
  http_get :
    google_cloud_run_v2_service__template__containers__liveness_probe__http_get
    list;
  tcp_socket :
    google_cloud_run_v2_service__template__containers__liveness_probe__tcp_socket
    list;
}
[@@deriving yojson_of]
(** Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes *)

type google_cloud_run_v2_service__template__containers__ports = {
  container_port : float prop option; [@option]
      (** Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536. *)
  name : string prop option; [@option]
      (** If specified, used to specify which protocol to use. Allowed values are http1 and h2c. *)
}
[@@deriving yojson_of]
(** List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.

If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on *)

type google_cloud_run_v2_service__template__containers__resources = {
  cpu_idle : bool prop option; [@option]
      (** Determines whether CPU is only allocated during requests. True by default if the parent 'resources' field is not set. However, if
'resources' is set, this field must be explicitly set to true to preserve the default behavior. *)
  limits : (string * string prop) list option; [@option]
      (** Only memory and CPU are supported. Use key 'cpu' for CPU limit and 'memory' for memory limit. Note: The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go *)
  startup_cpu_boost : bool prop option; [@option]
      (** Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency. *)
}
[@@deriving yojson_of]
(** Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources *)

type google_cloud_run_v2_service__template__containers__startup_probe__grpc = {
  port : float prop option; [@option]
      (** Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. *)
  service : string prop option; [@option]
      (** The name of the service to place in the gRPC HealthCheckRequest
(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
If this is not specified, the default behavior is defined by gRPC. *)
}
[@@deriving yojson_of]
(** GRPC specifies an action involving a GRPC port. *)

type google_cloud_run_v2_service__template__containers__startup_probe__http_get__http_headers = {
  name : string prop;  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Custom headers to set in the request. HTTP allows repeated headers. *)

type google_cloud_run_v2_service__template__containers__startup_probe__http_get = {
  path : string prop option; [@option]
      (** Path to access on the HTTP server. Defaults to '/'. *)
  port : float prop option; [@option]
      (** Port number to access on the container. Must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. *)
  http_headers :
    google_cloud_run_v2_service__template__containers__startup_probe__http_get__http_headers
    list;
}
[@@deriving yojson_of]
(** HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified. *)

type google_cloud_run_v2_service__template__containers__startup_probe__tcp_socket = {
  port : float prop option; [@option]
      (** Port number to access on the container. Must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified. *)

type google_cloud_run_v2_service__template__containers__startup_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes *)
  grpc :
    google_cloud_run_v2_service__template__containers__startup_probe__grpc
    list;
  http_get :
    google_cloud_run_v2_service__template__containers__startup_probe__http_get
    list;
  tcp_socket :
    google_cloud_run_v2_service__template__containers__startup_probe__tcp_socket
    list;
}
[@@deriving yojson_of]
(** Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes *)

type google_cloud_run_v2_service__template__containers__volume_mounts = {
  mount_path : string prop;
      (** Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run *)
  name : string prop;  (** This must match the Name of a Volume. *)
}
[@@deriving yojson_of]
(** Volume to mount into the container's filesystem. *)

type google_cloud_run_v2_service__template__containers = {
  args : string prop list option; [@option]
      (** Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  command : string prop list option; [@option]
      (** Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  depends_on : string prop list option; [@option]
      (** Containers which should be started before this container. If specified the container will wait to start until all containers with the listed names are healthy. *)
  image : string prop;
      (** URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images *)
  name : string prop option; [@option]
      (** Name of the container specified as a DNS_LABEL. *)
  working_dir : string prop option; [@option]
      (** Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. *)
  env : google_cloud_run_v2_service__template__containers__env list;
  liveness_probe :
    google_cloud_run_v2_service__template__containers__liveness_probe
    list;
  ports :
    google_cloud_run_v2_service__template__containers__ports list;
  resources :
    google_cloud_run_v2_service__template__containers__resources list;
  startup_probe :
    google_cloud_run_v2_service__template__containers__startup_probe
    list;
  volume_mounts :
    google_cloud_run_v2_service__template__containers__volume_mounts
    list;
}
[@@deriving yojson_of]
(** Holds the containers that define the unit of execution for this Service. *)

type google_cloud_run_v2_service__template__scaling = {
  max_instance_count : float prop option; [@option]
      (** Maximum number of serving instances that this resource should have. *)
  min_instance_count : float prop option; [@option]
      (** Minimum number of serving instances that this resource should have. *)
}
[@@deriving yojson_of]
(** Scaling settings for this Revision. *)

type google_cloud_run_v2_service__template__volumes__cloud_sql_instance = {
  instances : string prop list option; [@option]
      (** The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance} *)
}
[@@deriving yojson_of]
(** For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. *)

type google_cloud_run_v2_service__template__volumes__gcs = {
  bucket : string prop;  (** GCS Bucket name *)
  read_only : bool prop option; [@option]
      (** If true, mount the GCS bucket as read-only *)
}
[@@deriving yojson_of]
(** Represents a GCS Bucket mounted as a volume. *)

type google_cloud_run_v2_service__template__volumes__nfs = {
  path : string prop;
      (** Path that is exported by the NFS server. *)
  read_only : bool prop option; [@option]
      (** If true, mount the NFS volume as read only *)
  server : string prop;
      (** Hostname or IP address of the NFS server *)
}
[@@deriving yojson_of]
(** Represents an NFS mount. *)

type google_cloud_run_v2_service__template__volumes__secret__items = {
  mode : float prop option; [@option]
      (** Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. *)
  path : string prop;
      (** The relative path of the secret in the container. *)
  version : string prop option; [@option]
      (** The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version *)
}
[@@deriving yojson_of]
(** If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version. *)

type google_cloud_run_v2_service__template__volumes__secret = {
  default_mode : float prop option; [@option]
      (** Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. *)
  secret : string prop;
      (** The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project. *)
  items :
    google_cloud_run_v2_service__template__volumes__secret__items
    list;
}
[@@deriving yojson_of]
(** Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret *)

type google_cloud_run_v2_service__template__volumes = {
  name : string prop;  (** Volume's name. *)
  cloud_sql_instance :
    google_cloud_run_v2_service__template__volumes__cloud_sql_instance
    list;
  gcs : google_cloud_run_v2_service__template__volumes__gcs list;
  nfs : google_cloud_run_v2_service__template__volumes__nfs list;
  secret :
    google_cloud_run_v2_service__template__volumes__secret list;
}
[@@deriving yojson_of]
(** A list of Volumes to make available to containers. *)

type google_cloud_run_v2_service__template__vpc_access__network_interfaces = {
  network : string prop option; [@option]
      (** The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be
looked up from the subnetwork. *)
  subnetwork : string prop option; [@option]
      (** The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the
subnetwork with the same name with the network will be used. *)
  tags : string prop list option; [@option]
      (** Network tags applied to this Cloud Run service. *)
}
[@@deriving yojson_of]
(** Direct VPC egress settings. Currently only single network interface is supported. *)

type google_cloud_run_v2_service__template__vpc_access = {
  connector : string prop option; [@option]
      (** VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. *)
  egress : string prop option; [@option]
      (** Traffic VPC egress settings. Possible values: [ALL_TRAFFIC, PRIVATE_RANGES_ONLY] *)
  network_interfaces :
    google_cloud_run_v2_service__template__vpc_access__network_interfaces
    list;
}
[@@deriving yojson_of]
(** VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)

type google_cloud_run_v2_service__template = {
  annotations : (string * string prop) list option; [@option]
      (** Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.

Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system annotations in v1 now have a corresponding field in v2 RevisionTemplate.

This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  encryption_key : string prop option; [@option]
      (** A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  execution_environment : string prop option; [@option]
      (** The sandbox environment to host this Revision. Possible values: [EXECUTION_ENVIRONMENT_GEN1, EXECUTION_ENVIRONMENT_GEN2] *)
  labels : (string * string prop) list option; [@option]
      (** Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.

Cloud Run API v2 does not support labels with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system labels in v1 now have a corresponding field in v2 RevisionTemplate. *)
  max_instance_request_concurrency : float prop option; [@option]
      (** Sets the maximum number of requests that each serving instance can receive. *)
  revision : string prop option; [@option]
      (** The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name. *)
  service_account : string prop option; [@option]
      (** Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account. *)
  session_affinity : bool prop option; [@option]
      (** Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity *)
  timeout : string prop option; [@option]
      (** Max allowed time for an instance to respond to a request.

A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  containers :
    google_cloud_run_v2_service__template__containers list;
  scaling : google_cloud_run_v2_service__template__scaling list;
  volumes : google_cloud_run_v2_service__template__volumes list;
  vpc_access : google_cloud_run_v2_service__template__vpc_access list;
}
[@@deriving yojson_of]
(** The template used to create revisions for this Service. *)

type google_cloud_run_v2_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloud_run_v2_service__timeouts *)

type google_cloud_run_v2_service__traffic = {
  percent : float prop option; [@option]
      (** Specifies percent of the traffic to this Revision. This defaults to zero if unspecified. *)
  revision : string prop option; [@option]
      (** Revision to which to send this portion of traffic, if traffic allocation is by revision. *)
  tag : string prop option; [@option]
      (** Indicates a string to be part of the URI to exclusively reference this target. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The allocation type for this traffic target. Possible values: [TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST, TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION] *)
}
[@@deriving yojson_of]
(** Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision. *)

type google_cloud_run_v2_service__conditions = {
  execution_reason : string prop;  (** execution_reason *)
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  revision_reason : string prop;  (** revision_reason *)
  severity : string prop;  (** severity *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_service__terminal_condition = {
  execution_reason : string prop;  (** execution_reason *)
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  revision_reason : string prop;  (** revision_reason *)
  severity : string prop;  (** severity *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_service__traffic_statuses = {
  percent : float prop;  (** percent *)
  revision : string prop;  (** revision *)
  tag : string prop;  (** tag *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]

type google_cloud_run_v2_service = {
  annotations : (string * string prop) list option; [@option]
      (** Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.

Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected in new resources.
All system annotations in v1 now have a corresponding field in v2 Service.

This field follows Kubernetes annotations' namespacing, limits, and rules.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  client : string prop option; [@option]
      (** Arbitrary identifier for the API client. *)
  client_version : string prop option; [@option]
      (** Arbitrary version identifier for the API client. *)
  custom_audiences : string prop list option; [@option]
      (** One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences. *)
  description : string prop option; [@option]
      (** User-provided description of the Service. This field currently has a 512-character limit. *)
  id : string prop option; [@option]  (** id *)
  ingress : string prop option; [@option]
      (** Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active. Possible values: [INGRESS_TRAFFIC_ALL, INGRESS_TRAFFIC_INTERNAL_ONLY, INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER] *)
  labels : (string * string prop) list option; [@option]
      (** Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.

Cloud Run API v2 does not support labels with  'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system labels in v1 now have a corresponding field in v2 Service.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  launch_stage : string prop option; [@option]
      (** The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.

For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output. Possible values: [UNIMPLEMENTED, PRELAUNCH, EARLY_ACCESS, ALPHA, BETA, GA, DEPRECATED] *)
  location : string prop;
      (** The location of the cloud run service *)
  name : string prop;  (** Name of the Service. *)
  project : string prop option; [@option]  (** project *)
  binary_authorization :
    google_cloud_run_v2_service__binary_authorization list;
  template : google_cloud_run_v2_service__template list;
  timeouts : google_cloud_run_v2_service__timeouts option;
  traffic : google_cloud_run_v2_service__traffic list;
}
[@@deriving yojson_of]
(** google_cloud_run_v2_service *)

type t = {
  annotations : (string * string) list prop;
  client : string prop;
  client_version : string prop;
  conditions : google_cloud_run_v2_service__conditions list prop;
  create_time : string prop;
  creator : string prop;
  custom_audiences : string list prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  expire_time : string prop;
  generation : string prop;
  id : string prop;
  ingress : string prop;
  labels : (string * string) list prop;
  last_modifier : string prop;
  latest_created_revision : string prop;
  latest_ready_revision : string prop;
  launch_stage : string prop;
  location : string prop;
  name : string prop;
  observed_generation : string prop;
  project : string prop;
  reconciling : bool prop;
  terminal_condition :
    google_cloud_run_v2_service__terminal_condition list prop;
  terraform_labels : (string * string) list prop;
  traffic_statuses :
    google_cloud_run_v2_service__traffic_statuses list prop;
  uid : string prop;
  update_time : string prop;
  uri : string prop;
}

let google_cloud_run_v2_service ?annotations ?client ?client_version
    ?custom_audiences ?description ?id ?ingress ?labels ?launch_stage
    ?project ?timeouts ~location ~name ~binary_authorization
    ~template ~traffic __resource_id =
  let __resource_type = "google_cloud_run_v2_service" in
  let __resource =
    ({
       annotations;
       client;
       client_version;
       custom_audiences;
       description;
       id;
       ingress;
       labels;
       launch_stage;
       location;
       name;
       project;
       binary_authorization;
       template;
       timeouts;
       traffic;
     }
      : google_cloud_run_v2_service)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_run_v2_service __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       client = Prop.computed __resource_type __resource_id "client";
       client_version =
         Prop.computed __resource_type __resource_id "client_version";
       conditions =
         Prop.computed __resource_type __resource_id "conditions";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       creator =
         Prop.computed __resource_type __resource_id "creator";
       custom_audiences =
         Prop.computed __resource_type __resource_id
           "custom_audiences";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       etag = Prop.computed __resource_type __resource_id "etag";
       expire_time =
         Prop.computed __resource_type __resource_id "expire_time";
       generation =
         Prop.computed __resource_type __resource_id "generation";
       id = Prop.computed __resource_type __resource_id "id";
       ingress =
         Prop.computed __resource_type __resource_id "ingress";
       labels = Prop.computed __resource_type __resource_id "labels";
       last_modifier =
         Prop.computed __resource_type __resource_id "last_modifier";
       latest_created_revision =
         Prop.computed __resource_type __resource_id
           "latest_created_revision";
       latest_ready_revision =
         Prop.computed __resource_type __resource_id
           "latest_ready_revision";
       launch_stage =
         Prop.computed __resource_type __resource_id "launch_stage";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       observed_generation =
         Prop.computed __resource_type __resource_id
           "observed_generation";
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
       terminal_condition =
         Prop.computed __resource_type __resource_id
           "terminal_condition";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       traffic_statuses =
         Prop.computed __resource_type __resource_id
           "traffic_statuses";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
