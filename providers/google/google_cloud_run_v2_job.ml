(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type binary_authorization = {
  breakglass_justification : string prop option; [@option]
      (** If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass *)
  use_default : bool prop option; [@option]
      (** If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled. *)
}
[@@deriving yojson_of]
(** Settings for the Binary Authorization feature. *)

type template__template__containers__env__value_source__secret_key_ref = {
  secret : string prop;
      (** The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project. *)
  version : string prop;
      (** The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version. *)
}
[@@deriving yojson_of]
(** Selects a secret and a specific version from Cloud Secret Manager. *)

type template__template__containers__env__value_source = {
  secret_key_ref :
    template__template__containers__env__value_source__secret_key_ref
    list;
}
[@@deriving yojson_of]
(** Source for the environment variable's value. *)

type template__template__containers__env = {
  name : string prop;
      (** Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters. *)
  value : string prop option; [@option]
      (** Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to , and the maximum length is 32768 bytes *)
  value_source :
    template__template__containers__env__value_source list;
}
[@@deriving yojson_of]
(** List of environment variables to set in the container. *)

type template__template__containers__ports = {
  container_port : float prop option; [@option]
      (** Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536. *)
  name : string prop option; [@option]
      (** If specified, used to specify which protocol to use. Allowed values are http1 and h2c. *)
}
[@@deriving yojson_of]
(** List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.

If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on *)

type template__template__containers__resources = {
  limits : (string * string prop) list option; [@option]
      (** Only memory and CPU are supported. Use key 'cpu' for CPU limit and 'memory' for memory limit. Note: The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go *)
}
[@@deriving yojson_of]
(** Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources *)

type template__template__containers__volume_mounts = {
  mount_path : string prop;
      (** Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run *)
  name : string prop;  (** This must match the Name of a Volume. *)
}
[@@deriving yojson_of]
(** Volume to mount into the container's filesystem. *)

type template__template__containers = {
  args : string prop list option; [@option]
      (** Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  command : string prop list option; [@option]
      (** Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  image : string prop;
      (** URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images *)
  name : string prop option; [@option]
      (** Name of the container specified as a DNS_LABEL. *)
  working_dir : string prop option; [@option]
      (** Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. *)
  env : template__template__containers__env list;
  ports : template__template__containers__ports list;
  resources : template__template__containers__resources list;
  volume_mounts : template__template__containers__volume_mounts list;
}
[@@deriving yojson_of]
(** Holds the single container that defines the unit of execution for this task. *)

type template__template__volumes__cloud_sql_instance = {
  instances : string prop list option; [@option]
      (** The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance} *)
}
[@@deriving yojson_of]
(** For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. *)

type template__template__volumes__secret__items = {
  mode : float prop option; [@option]
      (** Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. *)
  path : string prop;
      (** The relative path of the secret in the container. *)
  version : string prop;
      (** The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version *)
}
[@@deriving yojson_of]
(** If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version. *)

type template__template__volumes__secret = {
  default_mode : float prop option; [@option]
      (** Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. *)
  secret : string prop;
      (** The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project. *)
  items : template__template__volumes__secret__items list;
}
[@@deriving yojson_of]
(** Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret *)

type template__template__volumes = {
  name : string prop;  (** Volume's name. *)
  cloud_sql_instance :
    template__template__volumes__cloud_sql_instance list;
  secret : template__template__volumes__secret list;
}
[@@deriving yojson_of]
(** A list of Volumes to make available to containers. *)

type template__template__vpc_access__network_interfaces = {
  network : string prop option; [@option]
      (** The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be
looked up from the subnetwork. *)
  subnetwork : string prop option; [@option]
      (** The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the
subnetwork with the same name with the network will be used. *)
  tags : string prop list option; [@option]
      (** Network tags applied to this Cloud Run job. *)
}
[@@deriving yojson_of]
(** Direct VPC egress settings. Currently only single network interface is supported. *)

type template__template__vpc_access = {
  connector : string prop option; [@option]
      (** VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. *)
  egress : string prop option; [@option]
      (** Traffic VPC egress settings. Possible values: [ALL_TRAFFIC, PRIVATE_RANGES_ONLY] *)
  network_interfaces :
    template__template__vpc_access__network_interfaces list;
}
[@@deriving yojson_of]
(** VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc. *)

type template__template = {
  encryption_key : string prop option; [@option]
      (** A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek *)
  execution_environment : string prop option; [@option]
      (** The execution environment being used to host this Task. Possible values: [EXECUTION_ENVIRONMENT_GEN1, EXECUTION_ENVIRONMENT_GEN2] *)
  max_retries : float prop option; [@option]
      (** Number of retries allowed per Task, before marking this Task failed. *)
  service_account : string prop option; [@option]
      (** Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account. *)
  timeout : string prop option; [@option]
      (** Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.

A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  containers : template__template__containers list;
  volumes : template__template__volumes list;
  vpc_access : template__template__vpc_access list;
}
[@@deriving yojson_of]
(** Describes the task(s) that will be created when executing an execution *)

type template = {
  annotations : (string * string prop) list option; [@option]
      (** Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.

Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate.

This field follows Kubernetes annotations' namespacing, limits, and rules. *)
  labels : (string * string prop) list option; [@option]
      (** Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter,
or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or
https://cloud.google.com/run/docs/configuring/labels.

Cloud Run API v2 does not support labels with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system labels in v1 now have a corresponding field in v2 ExecutionTemplate. *)
  parallelism : float prop option; [@option]
      (** Specifies the maximum desired number of tasks the execution should run at given time. Must be <= taskCount. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism. *)
  task_count : float prop option; [@option]
      (** Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/ *)
  template : template__template list;
}
[@@deriving yojson_of]
(** The template used to create executions for this Job. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type conditions = {
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

type latest_created_execution = {
  completion_time : string prop;  (** completion_time *)
  create_time : string prop;  (** create_time *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type terminal_condition = {
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

type google_cloud_run_v2_job = {
  annotations : (string * string prop) list option; [@option]
      (** Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.

Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected on new resources.
All system annotations in v1 now have a corresponding field in v2 Job.

This field follows Kubernetes annotations' namespacing, limits, and rules.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  client : string prop option; [@option]
      (** Arbitrary identifier for the API client. *)
  client_version : string prop option; [@option]
      (** Arbitrary version identifier for the API client. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.

Cloud Run API v2 does not support labels with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
All system labels in v1 now have a corresponding field in v2 Job.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  launch_stage : string prop option; [@option]
      (** The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.

For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output. Possible values: [UNIMPLEMENTED, PRELAUNCH, EARLY_ACCESS, ALPHA, BETA, GA, DEPRECATED] *)
  location : string prop;  (** The location of the cloud run job *)
  name : string prop;  (** Name of the Job. *)
  project : string prop option; [@option]  (** project *)
  binary_authorization : binary_authorization list;
  template : template list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_run_v2_job *)

let binary_authorization ?breakglass_justification ?use_default () :
    binary_authorization =
  { breakglass_justification; use_default }

let template__template__containers__env__value_source__secret_key_ref
    ~secret ~version () :
    template__template__containers__env__value_source__secret_key_ref
    =
  { secret; version }

let template__template__containers__env__value_source ~secret_key_ref
    () : template__template__containers__env__value_source =
  { secret_key_ref }

let template__template__containers__env ?value ~name ~value_source ()
    : template__template__containers__env =
  { name; value; value_source }

let template__template__containers__ports ?container_port ?name () :
    template__template__containers__ports =
  { container_port; name }

let template__template__containers__resources ?limits () :
    template__template__containers__resources =
  { limits }

let template__template__containers__volume_mounts ~mount_path ~name
    () : template__template__containers__volume_mounts =
  { mount_path; name }

let template__template__containers ?args ?command ?name ?working_dir
    ~image ~env ~ports ~resources ~volume_mounts () :
    template__template__containers =
  {
    args;
    command;
    image;
    name;
    working_dir;
    env;
    ports;
    resources;
    volume_mounts;
  }

let template__template__volumes__cloud_sql_instance ?instances () :
    template__template__volumes__cloud_sql_instance =
  { instances }

let template__template__volumes__secret__items ?mode ~path ~version
    () : template__template__volumes__secret__items =
  { mode; path; version }

let template__template__volumes__secret ?default_mode ~secret ~items
    () : template__template__volumes__secret =
  { default_mode; secret; items }

let template__template__volumes ~name ~cloud_sql_instance ~secret ()
    : template__template__volumes =
  { name; cloud_sql_instance; secret }

let template__template__vpc_access__network_interfaces ?network
    ?subnetwork ?tags () :
    template__template__vpc_access__network_interfaces =
  { network; subnetwork; tags }

let template__template__vpc_access ?connector ?egress
    ~network_interfaces () : template__template__vpc_access =
  { connector; egress; network_interfaces }

let template__template ?encryption_key ?execution_environment
    ?max_retries ?service_account ?timeout ~containers ~volumes
    ~vpc_access () : template__template =
  {
    encryption_key;
    execution_environment;
    max_retries;
    service_account;
    timeout;
    containers;
    volumes;
    vpc_access;
  }

let template ?annotations ?labels ?parallelism ?task_count ~template
    () : template =
  { annotations; labels; parallelism; task_count; template }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_run_v2_job ?annotations ?client ?client_version ?id
    ?labels ?launch_stage ?project ?timeouts ~location ~name
    ~binary_authorization ~template () : google_cloud_run_v2_job =
  {
    annotations;
    client;
    client_version;
    id;
    labels;
    launch_stage;
    location;
    name;
    project;
    binary_authorization;
    template;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  client : string prop;
  client_version : string prop;
  conditions : conditions list prop;
  create_time : string prop;
  creator : string prop;
  delete_time : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  execution_count : float prop;
  expire_time : string prop;
  generation : string prop;
  id : string prop;
  labels : (string * string) list prop;
  last_modifier : string prop;
  latest_created_execution : latest_created_execution list prop;
  launch_stage : string prop;
  location : string prop;
  name : string prop;
  observed_generation : string prop;
  project : string prop;
  reconciling : bool prop;
  terminal_condition : terminal_condition list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?client ?client_version ?id ?labels
    ?launch_stage ?project ?timeouts ~location ~name
    ~binary_authorization ~template __id =
  let __type = "google_cloud_run_v2_job" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       client = Prop.computed __type __id "client";
       client_version = Prop.computed __type __id "client_version";
       conditions = Prop.computed __type __id "conditions";
       create_time = Prop.computed __type __id "create_time";
       creator = Prop.computed __type __id "creator";
       delete_time = Prop.computed __type __id "delete_time";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       execution_count = Prop.computed __type __id "execution_count";
       expire_time = Prop.computed __type __id "expire_time";
       generation = Prop.computed __type __id "generation";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       last_modifier = Prop.computed __type __id "last_modifier";
       latest_created_execution =
         Prop.computed __type __id "latest_created_execution";
       launch_stage = Prop.computed __type __id "launch_stage";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       observed_generation =
         Prop.computed __type __id "observed_generation";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       terminal_condition =
         Prop.computed __type __id "terminal_condition";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_run_v2_job
        (google_cloud_run_v2_job ?annotations ?client ?client_version
           ?id ?labels ?launch_stage ?project ?timeouts ~location
           ~name ~binary_authorization ~template ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?client ?client_version ?id
    ?labels ?launch_stage ?project ?timeouts ~location ~name
    ~binary_authorization ~template __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?client ?client_version ?id ?labels
      ?launch_stage ?project ?timeouts ~location ~name
      ~binary_authorization ~template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
