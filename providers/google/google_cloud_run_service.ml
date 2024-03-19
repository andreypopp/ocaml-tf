(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** Annotations is a key value map stored with a resource that
may be set by external tools to store and retrieve arbitrary metadata. More
info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations

**Note**: The Cloud Run API may add additional annotations that were not provided in your config.
If terraform plan shows a diff where a server-side annotation is added, you can add it to your config
or apply the lifecycle.ignore_changes rule to the metadata.0.annotations field.

Annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted. Use the following annotation
keys to configure features on a Service:

- 'run.googleapis.com/binary-authorization-breakglass' sets the [Binary Authorization breakglass](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--breakglass).
- 'run.googleapis.com/binary-authorization' sets the [Binary Authorization](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--binary-authorization).
- 'run.googleapis.com/client-name' sets the client name calling the Cloud Run API.
- 'run.googleapis.com/custom-audiences' sets the [custom audiences](https://cloud.google.com/sdk/gcloud/reference/alpha/run/deploy#--add-custom-audiences)
  that can be used in the audience field of ID token for authenticated requests.
- 'run.googleapis.com/description' sets a user defined description for the Service.
- 'run.googleapis.com/ingress' sets the [ingress settings](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--ingress)
  for the Service. For example, 'run.googleapis.com/ingress = all'.
- 'run.googleapis.com/launch-stage' sets the [launch stage](https://cloud.google.com/run/docs/troubleshooting#launch-stage-validation)
  when a preview feature is used. For example, 'run.googleapis.com/launch-stage: BETA'

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize
(scope and select) objects. May match selectors of replication controllers
and routes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  namespace : string prop option; [@option]
      (** In Cloud Run the namespace must be equal to either the
project ID or project number. *)
}
[@@deriving yojson_of]
(** Metadata associated with this Service, including name, namespace, labels,
and annotations. *)

type template__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** Annotations is a key value map stored with a resource that
may be set by external tools to store and retrieve arbitrary metadata. More
info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations

**Note**: The Cloud Run API may add additional annotations that were not provided in your config.
If terraform plan shows a diff where a server-side annotation is added, you can add it to your config
or apply the lifecycle.ignore_changes rule to the metadata.0.annotations field.

Annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted. Use the following annotation
keys to configure features on a Revision template:

- 'autoscaling.knative.dev/maxScale' sets the [maximum number of container
  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--max-instances) of the Revision to run.
- 'autoscaling.knative.dev/minScale' sets the [minimum number of container
  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--min-instances) of the Revision to run.
- 'run.googleapis.com/client-name' sets the client name calling the Cloud Run API.
- 'run.googleapis.com/cloudsql-instances' sets the [Cloud SQL
  instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--add-cloudsql-instances) the Revision connects to.
- 'run.googleapis.com/cpu-throttling' sets whether to throttle the CPU when the container is not actively serving
  requests. See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--[no-]cpu-throttling.
- 'run.googleapis.com/encryption-key-shutdown-hours' sets the number of hours to wait before an automatic shutdown
  server after CMEK key revocation is detected.
- 'run.googleapis.com/encryption-key' sets the [CMEK key](https://cloud.google.com/run/docs/securing/using-cmek)
  reference to encrypt the container with.
- 'run.googleapis.com/execution-environment' sets the [execution
  environment](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--execution-environment)
  where the application will run.
- 'run.googleapis.com/post-key-revocation-action-type' sets the
  [action type](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--post-key-revocation-action-type)
  after CMEK key revocation.
- 'run.googleapis.com/secrets' sets a list of key-value pairs to set as
  [secrets](https://cloud.google.com/run/docs/configuring/secrets#yaml).
- 'run.googleapis.com/sessionAffinity' sets whether to enable
  [session affinity](https://cloud.google.com/sdk/gcloud/reference/beta/run/deploy#--[no-]session-affinity)
  for connections to the Revision.
- 'run.googleapis.com/startup-cpu-boost' sets whether to allocate extra CPU to containers on startup.
  See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--[no-]cpu-boost.
- 'run.googleapis.com/vpc-access-connector' sets a [VPC connector](https://cloud.google.com/run/docs/configuring/connecting-vpc#terraform_1)
  for the Revision.
- 'run.googleapis.com/vpc-access-egress' sets the outbound traffic to send through the VPC connector for this resource.
  See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--vpc-egress. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize
(scope and select) objects. *)
  name : string prop option; [@option]
      (** Name must be unique within a Google Cloud project and region.
Is required when creating resources. Name is primarily intended
for creation idempotence and configuration definition. Cannot be updated. *)
  namespace : string prop option; [@option]
      (** In Cloud Run the namespace must be equal to either the
project ID or project number. It will default to the resource's project. *)
}
[@@deriving yojson_of]
(** Optional metadata for this Revision, including labels and annotations.
Name will be generated by the Configuration. To set minimum instances
for this revision, use the autoscaling.knative.dev/minScale annotation
key. To set maximum instances for this revision, use the
autoscaling.knative.dev/maxScale annotation key. To set Cloud SQL
connections for the revision, use the run.googleapis.com/cloudsql-instances
annotation key. *)

type template__spec__containers__env__value_from__secret_key_ref = {
  key : string prop;
      (** A Cloud Secret Manager secret version. Must be 'latest' for the latest
version or an integer for a specific version. *)
  name : string prop;
      (** The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project.
If the secret is in another project, you must define an alias.
An alias definition has the form: :projects/{project-id|project-number}/secrets/.
If multiple alias definitions are needed, they must be separated by commas.
The alias definitions must be set on the run.googleapis.com/secrets annotation. *)
}
[@@deriving yojson_of]
(** Selects a key (version) of a secret in Secret Manager. *)

type template__spec__containers__env__value_from = {
  secret_key_ref :
    template__spec__containers__env__value_from__secret_key_ref list;
}
[@@deriving yojson_of]
(** Source for the environment variable's value. Only supports secret_key_ref. *)

type template__spec__containers__env = {
  name : string prop option; [@option]
      (** Name of the environment variable. *)
  value : string prop option; [@option]  (** Defaults to . *)
  value_from : template__spec__containers__env__value_from list;
}
[@@deriving yojson_of]
(** List of environment variables to set in the container. *)

type template__spec__containers__env_from__config_map_ref__local_object_reference = {
  name : string prop;  (** Name of the referent. *)
}
[@@deriving yojson_of]
(** The ConfigMap to select from. *)

type template__spec__containers__env_from__config_map_ref = {
  optional : bool prop option; [@option]
      (** Specify whether the ConfigMap must be defined *)
  local_object_reference :
    template__spec__containers__env_from__config_map_ref__local_object_reference
    list;
}
[@@deriving yojson_of]
(** The ConfigMap to select from. *)

type template__spec__containers__env_from__secret_ref__local_object_reference = {
  name : string prop;  (** Name of the referent. *)
}
[@@deriving yojson_of]
(** The Secret to select from. *)

type template__spec__containers__env_from__secret_ref = {
  optional : bool prop option; [@option]
      (** Specify whether the Secret must be defined *)
  local_object_reference :
    template__spec__containers__env_from__secret_ref__local_object_reference
    list;
}
[@@deriving yojson_of]
(** The Secret to select from. *)

type template__spec__containers__env_from = {
  prefix : string prop option; [@option]
      (** An optional identifier to prepend to each key in the ConfigMap. *)
  config_map_ref :
    template__spec__containers__env_from__config_map_ref list;
  secret_ref : template__spec__containers__env_from__secret_ref list;
}
[@@deriving yojson_of]
(** List of sources to populate environment variables in the container.
All invalid keys will be reported as an event when the container is starting.
When a key exists in multiple sources, the value associated with the last source will
take precedence. Values defined by an Env with a duplicate key will take
precedence. *)

type template__spec__containers__liveness_probe__grpc = {
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

type template__spec__containers__liveness_probe__http_get__http_headers = {
  name : string prop;  (** The header field name. *)
  value : string prop option; [@option]
      (** The header field value. *)
}
[@@deriving yojson_of]
(** Custom headers to set in the request. HTTP allows repeated headers. *)

type template__spec__containers__liveness_probe__http_get = {
  path : string prop option; [@option]
      (** Path to access on the HTTP server. If set, it should not be empty string. *)
  port : float prop option; [@option]
      (** Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. *)
  http_headers :
    template__spec__containers__liveness_probe__http_get__http_headers
    list;
}
[@@deriving yojson_of]
(** HttpGet specifies the http request to perform. *)

type template__spec__containers__liveness_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after
having succeeded. Defaults to 3. Minimum value is 1. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before the probe is
initiated.
Defaults to 0 seconds. Minimum value is 0. Maximum value is 3600. *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe.
Default to 10 seconds. Minimum value is 1. Maximum value is 3600. *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out.
Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
Must be smaller than period_seconds. *)
  grpc : template__spec__containers__liveness_probe__grpc list;
  http_get :
    template__spec__containers__liveness_probe__http_get list;
}
[@@deriving yojson_of]
(** Periodic probe of container liveness. Container will be restarted if the probe fails. *)

type template__spec__containers__ports = {
  container_port : float prop option; [@option]
      (** Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to 8080. *)
  name : string prop option; [@option]
      (** If specified, used to specify which protocol to use. Allowed values are http1 (HTTP/1) and h2c (HTTP/2 end-to-end). Defaults to http1. *)
  protocol : string prop option; [@option]
      (** Protocol for port. Must be TCP. Defaults to TCP. *)
}
[@@deriving yojson_of]
(** List of open ports in the container. *)

type template__spec__containers__resources = {
  limits : (string * string prop) list option; [@option]
      (** Limits describes the maximum amount of compute resources allowed.
The values of the map is string form of the 'quantity' k8s type:
https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go *)
  requests : (string * string prop) list option; [@option]
      (** Requests describes the minimum amount of compute resources required.
If Requests is omitted for a container, it defaults to Limits if that is
explicitly specified, otherwise to an implementation-defined value.
The values of the map is string form of the 'quantity' k8s type:
https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go *)
}
[@@deriving yojson_of]
(** Compute Resources required by this container. Used to set values such as max memory *)

type template__spec__containers__startup_probe__grpc = {
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

type template__spec__containers__startup_probe__http_get__http_headers = {
  name : string prop;  (** The header field name. *)
  value : string prop option; [@option]
      (** The header field value. *)
}
[@@deriving yojson_of]
(** Custom headers to set in the request. HTTP allows repeated headers. *)

type template__spec__containers__startup_probe__http_get = {
  path : string prop option; [@option]
      (** Path to access on the HTTP server. If set, it should not be empty string. *)
  port : float prop option; [@option]
      (** Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. *)
  http_headers :
    template__spec__containers__startup_probe__http_get__http_headers
    list;
}
[@@deriving yojson_of]
(** HttpGet specifies the http request to perform. *)

type template__spec__containers__startup_probe__tcp_socket = {
  port : float prop option; [@option]
      (** Port number to access on the container. Number must be in the range 1 to 65535.
If not specified, defaults to the same value as container.ports[0].containerPort. *)
}
[@@deriving yojson_of]
(** TcpSocket specifies an action involving a TCP port. *)

type template__spec__containers__startup_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after
having succeeded. Defaults to 3. Minimum value is 1. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before the probe is
initiated.
Defaults to 0 seconds. Minimum value is 0. Maximum value is 240. *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe.
Default to 10 seconds. Minimum value is 1. Maximum value is 240. *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out.
Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
Must be smaller than periodSeconds. *)
  grpc : template__spec__containers__startup_probe__grpc list;
  http_get :
    template__spec__containers__startup_probe__http_get list;
  tcp_socket :
    template__spec__containers__startup_probe__tcp_socket list;
}
[@@deriving yojson_of]
(** Startup probe of application within the container.
All other probes are disabled if a startup probe is provided, until it
succeeds. Container will not be added to service endpoints if the probe fails. *)

type template__spec__containers__volume_mounts = {
  mount_path : string prop;
      (** Path within the container at which the volume should be mounted.  Must
not contain ':'. *)
  name : string prop;  (** This must match the Name of a Volume. *)
}
[@@deriving yojson_of]
(** Volume to mount into the container's filesystem.
Only supports SecretVolumeSources. *)

type template__spec__containers = {
  args : string prop list option; [@option]
      (** Arguments to the entrypoint.
The docker image's CMD is used if this is not provided. *)
  command : string prop list option; [@option]
      (** Entrypoint array. Not executed within a shell.
The docker image's ENTRYPOINT is used if this is not provided. *)
  image : string prop;
      (** Docker image name. This is most often a reference to a container located
in the container registry, such as gcr.io/cloudrun/hello *)
  name : string prop option; [@option]  (** Name of the container *)
  working_dir : string prop option; [@option]
      (** Container's working directory.
If not specified, the container runtime's default will be used, which
might be configured in the container image. *)
  env : template__spec__containers__env list;
  env_from : template__spec__containers__env_from list;
  liveness_probe : template__spec__containers__liveness_probe list;
  ports : template__spec__containers__ports list;
  resources : template__spec__containers__resources list;
  startup_probe : template__spec__containers__startup_probe list;
  volume_mounts : template__spec__containers__volume_mounts list;
}
[@@deriving yojson_of]
(** Containers defines the unit of execution for this Revision. *)

type template__spec__volumes__secret__items = {
  key : string prop;
      (** The Cloud Secret Manager secret version.
Can be 'latest' for the latest value or an integer for a specific version. *)
  mode : float prop option; [@option]
      (** Mode bits to use on this file, must be a value between 0000 and 0777. If
not specified, the volume defaultMode will be used. This might be in
conflict with other options that affect the file mode, like fsGroup, and
the result can be other mode bits set. *)
  path : string prop;
      (** The relative path of the file to map the key to.
May not be an absolute path.
May not contain the path element '..'.
May not start with the string '..'. *)
}
[@@deriving yojson_of]
(** If unspecified, the volume will expose a file whose name is the
secret_name.
If specified, the key will be used as the version to fetch from Cloud
Secret Manager and the path will be the name of the file exposed in the
volume. When items are defined, they must specify a key and a path. *)

type template__spec__volumes__secret = {
  default_mode : float prop option; [@option]
      (** Mode bits to use on created files by default. Must be a value between 0000
and 0777. Defaults to 0644. Directories within the path are not affected by
this setting. This might be in conflict with other options that affect the
file mode, like fsGroup, and the result can be other mode bits set. *)
  secret_name : string prop;
      (** The name of the secret in Cloud Secret Manager. By default, the secret
is assumed to be in the same project.
If the secret is in another project, you must define an alias.
An alias definition has the form:
{alias}:projects/{project-id|project-number}/secrets/{secret-name}.
If multiple alias definitions are needed, they must be separated by
commas.
The alias definitions must be set on the run.googleapis.com/secrets
annotation. *)
  items : template__spec__volumes__secret__items list;
}
[@@deriving yojson_of]
(** The secret's value will be presented as the content of a file whose
name is defined in the item path. If no items are defined, the name of
the file is the secret_name. *)

type template__spec__volumes = {
  name : string prop;  (** Volume's name. *)
  secret : template__spec__volumes__secret list;
}
[@@deriving yojson_of]
(** Volume represents a named volume in a container. *)

type template__spec = {
  container_concurrency : float prop option; [@option]
      (** ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
requests per container of the Revision. Values are:
- '0' thread-safe, the system should manage the max concurrency. This is
    the default value.
- '1' not-thread-safe. Single concurrency
- '2-N' thread-safe, max concurrency of N *)
  service_account_name : string prop option; [@option]
      (** Email address of the IAM service account associated with the revision of the
service. The service account represents the identity of the running revision,
and determines what permissions the revision has. If not provided, the revision
will use the project's default service account. *)
  timeout_seconds : float prop option; [@option]
      (** TimeoutSeconds holds the max duration the instance is allowed for responding to a request. *)
  containers : template__spec__containers list;
  volumes : template__spec__volumes list;
}
[@@deriving yojson_of]
(** RevisionSpec holds the desired state of the Revision (from the client). *)

type template = {
  metadata : template__metadata list;
  spec : template__spec list;
}
[@@deriving yojson_of]
(** template holds the latest specification for the Revision to
be stamped out. The template references the container image, and may also
include labels and annotations that should be attached to the Revision.
To correlate a Revision, and/or to force a Revision to be created when the
spec doesn't otherwise change, a nonce label may be provided in the
template metadata. For more details, see:
https://github.com/knative/serving/blob/main/docs/client-conventions.md#associate-modifications-with-revisions

Cloud Run does not currently support referencing a build that is
responsible for materializing the container image from source. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type traffic = {
  latest_revision : bool prop option; [@option]
      (** LatestRevision may be optionally provided to indicate that the latest ready
Revision of the Configuration should be used for this traffic target. When
provided LatestRevision must be true if RevisionName is empty; it must be
false when RevisionName is non-empty. *)
  percent : float prop;
      (** Percent specifies percent of the traffic to this Revision or Configuration. *)
  revision_name : string prop option; [@option]
      (** RevisionName of a specific revision to which to send this portion of traffic. *)
  tag : string prop option; [@option]
      (** Tag is optionally used to expose a dedicated url for referencing this target exclusively. *)
}
[@@deriving yojson_of]
(** Traffic specifies how to distribute traffic over a collection of Knative Revisions
and Configurations *)

type status__traffic = {
  latest_revision : bool prop;  (** latest_revision *)
  percent : float prop;  (** percent *)
  revision_name : string prop;  (** revision_name *)
  tag : string prop;  (** tag *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]

type status__conditions = {
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type status = {
  conditions : status__conditions list;  (** conditions *)
  latest_created_revision_name : string prop;
      (** latest_created_revision_name *)
  latest_ready_revision_name : string prop;
      (** latest_ready_revision_name *)
  observed_generation : float prop;  (** observed_generation *)
  traffic : status__traffic list;  (** traffic *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]

type google_cloud_run_service = {
  autogenerate_revision_name : bool prop option; [@option]
      (** If set to 'true', the revision name (template.metadata.name) will be omitted and
autogenerated by Cloud Run. This cannot be set to 'true' while 'template.metadata.name'
is also set.
(For legacy support, if 'template.metadata.name' is unset in state while
this field is set to false, the revision name will still autogenerate.) *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location of the cloud run instance. eg us-central1 *)
  name : string prop;
      (** Name must be unique within a Google Cloud project and region.
Is required when creating resources. Name is primarily intended
for creation idempotence and configuration definition. Cannot be updated.
More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  project : string prop option; [@option]  (** project *)
  metadata : metadata list;
  template : template list;
  timeouts : timeouts option;
  traffic : traffic list;
}
[@@deriving yojson_of]
(** google_cloud_run_service *)

let metadata ?annotations ?labels ?namespace () : metadata =
  { annotations; labels; namespace }

let template__metadata ?annotations ?labels ?name ?namespace () :
    template__metadata =
  { annotations; labels; name; namespace }

let template__spec__containers__env__value_from__secret_key_ref ~key
    ~name () :
    template__spec__containers__env__value_from__secret_key_ref =
  { key; name }

let template__spec__containers__env__value_from ~secret_key_ref () :
    template__spec__containers__env__value_from =
  { secret_key_ref }

let template__spec__containers__env ?name ?value ~value_from () :
    template__spec__containers__env =
  { name; value; value_from }

let template__spec__containers__env_from__config_map_ref__local_object_reference
    ~name () :
    template__spec__containers__env_from__config_map_ref__local_object_reference
    =
  { name }

let template__spec__containers__env_from__config_map_ref ?optional
    ~local_object_reference () :
    template__spec__containers__env_from__config_map_ref =
  { optional; local_object_reference }

let template__spec__containers__env_from__secret_ref__local_object_reference
    ~name () :
    template__spec__containers__env_from__secret_ref__local_object_reference
    =
  { name }

let template__spec__containers__env_from__secret_ref ?optional
    ~local_object_reference () :
    template__spec__containers__env_from__secret_ref =
  { optional; local_object_reference }

let template__spec__containers__env_from ?prefix ~config_map_ref
    ~secret_ref () : template__spec__containers__env_from =
  { prefix; config_map_ref; secret_ref }

let template__spec__containers__liveness_probe__grpc ?port ?service
    () : template__spec__containers__liveness_probe__grpc =
  { port; service }

let template__spec__containers__liveness_probe__http_get__http_headers
    ?value ~name () :
    template__spec__containers__liveness_probe__http_get__http_headers
    =
  { name; value }

let template__spec__containers__liveness_probe__http_get ?path ?port
    ~http_headers () :
    template__spec__containers__liveness_probe__http_get =
  { path; port; http_headers }

let template__spec__containers__liveness_probe ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?timeout_seconds ~grpc
    ~http_get () : template__spec__containers__liveness_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    timeout_seconds;
    grpc;
    http_get;
  }

let template__spec__containers__ports ?container_port ?name ?protocol
    () : template__spec__containers__ports =
  { container_port; name; protocol }

let template__spec__containers__resources ?limits ?requests () :
    template__spec__containers__resources =
  { limits; requests }

let template__spec__containers__startup_probe__grpc ?port ?service ()
    : template__spec__containers__startup_probe__grpc =
  { port; service }

let template__spec__containers__startup_probe__http_get__http_headers
    ?value ~name () :
    template__spec__containers__startup_probe__http_get__http_headers
    =
  { name; value }

let template__spec__containers__startup_probe__http_get ?path ?port
    ~http_headers () :
    template__spec__containers__startup_probe__http_get =
  { path; port; http_headers }

let template__spec__containers__startup_probe__tcp_socket ?port () :
    template__spec__containers__startup_probe__tcp_socket =
  { port }

let template__spec__containers__startup_probe ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?timeout_seconds ~grpc
    ~http_get ~tcp_socket () :
    template__spec__containers__startup_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    timeout_seconds;
    grpc;
    http_get;
    tcp_socket;
  }

let template__spec__containers__volume_mounts ~mount_path ~name () :
    template__spec__containers__volume_mounts =
  { mount_path; name }

let template__spec__containers ?args ?command ?name ?working_dir
    ~image ~env ~env_from ~liveness_probe ~ports ~resources
    ~startup_probe ~volume_mounts () : template__spec__containers =
  {
    args;
    command;
    image;
    name;
    working_dir;
    env;
    env_from;
    liveness_probe;
    ports;
    resources;
    startup_probe;
    volume_mounts;
  }

let template__spec__volumes__secret__items ?mode ~key ~path () :
    template__spec__volumes__secret__items =
  { key; mode; path }

let template__spec__volumes__secret ?default_mode ~secret_name ~items
    () : template__spec__volumes__secret =
  { default_mode; secret_name; items }

let template__spec__volumes ~name ~secret () :
    template__spec__volumes =
  { name; secret }

let template__spec ?container_concurrency ?service_account_name
    ?timeout_seconds ~containers ~volumes () : template__spec =
  {
    container_concurrency;
    service_account_name;
    timeout_seconds;
    containers;
    volumes;
  }

let template ~metadata ~spec () : template = { metadata; spec }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let traffic ?latest_revision ?revision_name ?tag ~percent () :
    traffic =
  { latest_revision; percent; revision_name; tag }

let google_cloud_run_service ?autogenerate_revision_name ?id ?project
    ?timeouts ~location ~name ~metadata ~template ~traffic () :
    google_cloud_run_service =
  {
    autogenerate_revision_name;
    id;
    location;
    name;
    project;
    metadata;
    template;
    timeouts;
    traffic;
  }

type t = {
  autogenerate_revision_name : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  status : status list prop;
}

let register ?tf_module ?autogenerate_revision_name ?id ?project
    ?timeouts ~location ~name ~metadata ~template ~traffic
    __resource_id =
  let __resource_type = "google_cloud_run_service" in
  let __resource =
    google_cloud_run_service ?autogenerate_revision_name ?id ?project
      ?timeouts ~location ~name ~metadata ~template ~traffic ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_run_service __resource);
  let __resource_attributes =
    ({
       autogenerate_revision_name =
         Prop.computed __resource_type __resource_id
           "autogenerate_revision_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
