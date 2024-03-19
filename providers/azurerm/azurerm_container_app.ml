(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type dapr = {
  app_id : string prop;  (** The Dapr Application Identifier. *)
  app_port : float prop option; [@option]
      (** The port which the application is listening on. This is the same as the `ingress` port. *)
  app_protocol : string prop option; [@option]
      (** The protocol for the app. Possible values include `http` and `grpc`. Defaults to `http`. *)
}
[@@deriving yojson_of]
(** dapr *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type ingress__custom_domain = {
  certificate_binding_type : string prop option; [@option]
      (** The Binding type. Possible values include `Disabled` and `SniEnabled`. Defaults to `Disabled` *)
  certificate_id : string prop;  (** certificate_id *)
  name : string prop;
      (** The hostname of the Certificate. Must be the CN or a named SAN in the certificate. *)
}
[@@deriving yojson_of]
(** ingress__custom_domain *)

type ingress__ip_security_restriction = {
  action : string prop;  (** The action. Allow or Deny. *)
  description : string prop option; [@option]
      (** Describe the IP restriction rule that is being sent to the container-app. *)
  ip_address_range : string prop;
      (** CIDR notation to match incoming IP address. *)
  name : string prop;  (** Name for the IP restriction rule. *)
}
[@@deriving yojson_of]
(** ingress__ip_security_restriction *)

type ingress__traffic_weight = {
  label : string prop option; [@option]
      (** The label to apply to the revision as a name prefix for routing traffic. *)
  latest_revision : bool prop option; [@option]
      (** This traffic Weight relates to the latest stable Container Revision. *)
  percentage : float prop;
      (** The percentage of traffic to send to this revision. *)
  revision_suffix : string prop option; [@option]
      (** The suffix string to append to the revision. This must be unique for the Container App's lifetime. A default hash created by the service will be used if this value is omitted. *)
}
[@@deriving yojson_of]
(** ingress__traffic_weight *)

type ingress = {
  allow_insecure_connections : bool prop option; [@option]
      (** Should this ingress allow insecure connections? *)
  exposed_port : float prop option; [@option]
      (** The exposed port on the container for the Ingress traffic. *)
  external_enabled : bool prop option; [@option]
      (** Is this an external Ingress. *)
  target_port : float prop;
      (** The target port on the container for the Ingress traffic. *)
  transport : string prop option; [@option]
      (** The transport method for the Ingress. Possible values include `auto`, `http`, and `http2`, `tcp`. Defaults to `auto` *)
  custom_domain : ingress__custom_domain list;
  ip_security_restriction : ingress__ip_security_restriction list;
  traffic_weight : ingress__traffic_weight list;
}
[@@deriving yojson_of]
(** ingress *)

type registry = {
  identity : string prop option; [@option]
      (** ID of the System or User Managed Identity used to pull images from the Container Registry *)
  password_secret_name : string prop option; [@option]
      (** The name of the Secret Reference containing the password value for this user on the Container Registry. *)
  server : string prop;
      (** The hostname for the Container Registry. *)
  username : string prop option; [@option]
      (** The username to use for this Container Registry. *)
}
[@@deriving yojson_of]
(** registry *)

type secret = {
  name : string prop;  (** The Secret name. *)
  value : string prop;  (** The value for this secret. *)
}
[@@deriving yojson_of]
(** secret *)

type template__azure_queue_scale_rule__authentication = {
  secret_name : string prop;  (** secret_name *)
  trigger_parameter : string prop;  (** trigger_parameter *)
}
[@@deriving yojson_of]
(** template__azure_queue_scale_rule__authentication *)

type template__azure_queue_scale_rule = {
  name : string prop;  (** name *)
  queue_length : float prop;  (** queue_length *)
  queue_name : string prop;  (** queue_name *)
  authentication :
    template__azure_queue_scale_rule__authentication list;
}
[@@deriving yojson_of]
(** template__azure_queue_scale_rule *)

type template__container__env = {
  name : string prop;
      (** The name of the environment variable for the container. *)
  secret_name : string prop option; [@option]
      (** The name of the secret that contains the value for this environment variable. *)
  value : string prop option; [@option]
      (** The value for this environment variable. **NOTE:** This value is ignored if `secret_name` is used *)
}
[@@deriving yojson_of]
(** template__container__env *)

type template__container__liveness_probe__header = {
  name : string prop;  (** The HTTP Header Name. *)
  value : string prop;  (** The HTTP Header value. *)
}
[@@deriving yojson_of]
(** template__container__liveness_probe__header *)

type template__container__liveness_probe = {
  failure_count_threshold : float prop option; [@option]
      (** The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `10`. Defaults to `3`. *)
  host : string prop option; [@option]
      (** The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `http` and `https` type probes. *)
  initial_delay : float prop option; [@option]
      (** The time in seconds to wait after the container has started before the probe is started. *)
  interval_seconds : float prop option; [@option]
      (** How often, in seconds, the probe should run. Possible values are between `1` and `240`. Defaults to `10` *)
  path : string prop option; [@option]
      (** The URI to use with the `host` for http type probes. Not valid for `TCP` type probes. Defaults to `/`. *)
  port : float prop;
      (** The port number on which to connect. Possible values are between `1` and `65535`. *)
  timeout : float prop option; [@option]
      (** Time in seconds after which the probe times out. Possible values are between `1` an `240`. Defaults to `1`. *)
  transport : string prop;
      (** Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`. *)
  header : template__container__liveness_probe__header list;
}
[@@deriving yojson_of]
(** template__container__liveness_probe *)

type template__container__readiness_probe__header = {
  name : string prop;  (** The HTTP Header Name. *)
  value : string prop;  (** The HTTP Header value. *)
}
[@@deriving yojson_of]
(** template__container__readiness_probe__header *)

type template__container__readiness_probe = {
  failure_count_threshold : float prop option; [@option]
      (** The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `10`. Defaults to `3`. *)
  host : string prop option; [@option]
      (** The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `http` and `https` type probes. *)
  interval_seconds : float prop option; [@option]
      (** How often, in seconds, the probe should run. Possible values are between `1` and `240`. Defaults to `10` *)
  path : string prop option; [@option]
      (** The URI to use for http type probes. Not valid for `TCP` type probes. Defaults to `/`. *)
  port : float prop;
      (** The port number on which to connect. Possible values are between `1` and `65535`. *)
  success_count_threshold : float prop option; [@option]
      (** The number of consecutive successful responses required to consider this probe as successful. Possible values are between `1` and `10`. Defaults to `3`. *)
  timeout : float prop option; [@option]
      (** Time in seconds after which the probe times out. Possible values are between `1` an `240`. Defaults to `1`. *)
  transport : string prop;
      (** Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`. *)
  header : template__container__readiness_probe__header list;
}
[@@deriving yojson_of]
(** template__container__readiness_probe *)

type template__container__startup_probe__header = {
  name : string prop;  (** The HTTP Header Name. *)
  value : string prop;  (** The HTTP Header value. *)
}
[@@deriving yojson_of]
(** template__container__startup_probe__header *)

type template__container__startup_probe = {
  failure_count_threshold : float prop option; [@option]
      (** The number of consecutive failures required to consider this probe as failed. Possible values are between `1` and `10`. Defaults to `3`. *)
  host : string prop option; [@option]
      (** The probe hostname. Defaults to the pod IP address. Setting a value for `Host` in `headers` can be used to override this for `http` and `https` type probes. *)
  interval_seconds : float prop option; [@option]
      (** How often, in seconds, the probe should run. Possible values are between `1` and `240`. Defaults to `10` *)
  path : string prop option; [@option]
      (** The URI to use with the `host` for http type probes. Not valid for `TCP` type probes. Defaults to `/`. *)
  port : float prop;
      (** The port number on which to connect. Possible values are between `1` and `65535`. *)
  timeout : float prop option; [@option]
      (** Time in seconds after which the probe times out. Possible values are between `1` an `240`. Defaults to `1`. *)
  transport : string prop;
      (** Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`. *)
  header : template__container__startup_probe__header list;
}
[@@deriving yojson_of]
(** template__container__startup_probe *)

type template__container__volume_mounts = {
  name : string prop;
      (** The name of the Volume to be mounted in the container. *)
  path : string prop;
      (** The path in the container at which to mount this volume. *)
}
[@@deriving yojson_of]
(** template__container__volume_mounts *)

type template__container = {
  args : string prop list option; [@option]
      (** A list of args to pass to the container. *)
  command : string prop list option; [@option]
      (** A command to pass to the container to override the default. This is provided as a list of command line elements without spaces. *)
  cpu : float prop;
      (** The amount of vCPU to allocate to the container. Possible values include `0.25`, `0.5`, `0.75`, `1.0`, `1.25`, `1.5`, `1.75`, and `2.0`. **NOTE:** `cpu` and `memory` must be specified in `0.25'/'0.5Gi` combination increments. e.g. `1.0` / `2.0` or `0.5` / `1.0`. When there's a workload profile specified, there's no such constraint. *)
  image : string prop;
      (** The image to use to create the container. *)
  memory : string prop;
      (** The amount of memory to allocate to the container. Possible values include `0.5Gi`, `1.0Gi`, `1.5Gi`, `2.0Gi`, `2.5Gi`, `3.0Gi`, `3.5Gi`, and `4.0Gi`. **NOTE:** `cpu` and `memory` must be specified in `0.25'/'0.5Gi` combination increments. e.g. `1.25` / `2.5Gi` or `0.75` / `1.5Gi`. When there's a workload profile specified, there's no such constraint. *)
  name : string prop;  (** The name of the container. *)
  env : template__container__env list;
  liveness_probe : template__container__liveness_probe list;
  readiness_probe : template__container__readiness_probe list;
  startup_probe : template__container__startup_probe list;
  volume_mounts : template__container__volume_mounts list;
}
[@@deriving yojson_of]
(** template__container *)

type template__custom_scale_rule__authentication = {
  secret_name : string prop;  (** secret_name *)
  trigger_parameter : string prop;  (** trigger_parameter *)
}
[@@deriving yojson_of]
(** template__custom_scale_rule__authentication *)

type template__custom_scale_rule = {
  custom_rule_type : string prop;  (** custom_rule_type *)
  metadata : (string * string prop) list;  (** metadata *)
  name : string prop;  (** name *)
  authentication : template__custom_scale_rule__authentication list;
}
[@@deriving yojson_of]
(** template__custom_scale_rule *)

type template__http_scale_rule__authentication = {
  secret_name : string prop;  (** secret_name *)
  trigger_parameter : string prop option; [@option]
      (** trigger_parameter *)
}
[@@deriving yojson_of]
(** template__http_scale_rule__authentication *)

type template__http_scale_rule = {
  concurrent_requests : string prop;  (** concurrent_requests *)
  name : string prop;  (** name *)
  authentication : template__http_scale_rule__authentication list;
}
[@@deriving yojson_of]
(** template__http_scale_rule *)

type template__init_container__env = {
  name : string prop;
      (** The name of the environment variable for the container. *)
  secret_name : string prop option; [@option]
      (** The name of the secret that contains the value for this environment variable. *)
  value : string prop option; [@option]
      (** The value for this environment variable. **NOTE:** This value is ignored if `secret_name` is used *)
}
[@@deriving yojson_of]
(** template__init_container__env *)

type template__init_container__volume_mounts = {
  name : string prop;
      (** The name of the Volume to be mounted in the container. *)
  path : string prop;
      (** The path in the container at which to mount this volume. *)
}
[@@deriving yojson_of]
(** template__init_container__volume_mounts *)

type template__init_container = {
  args : string prop list option; [@option]
      (** A list of args to pass to the container. *)
  command : string prop list option; [@option]
      (** A command to pass to the container to override the default. This is provided as a list of command line elements without spaces. *)
  cpu : float prop option; [@option]
      (** The amount of vCPU to allocate to the container. Possible values include `0.25`, `0.5`, `0.75`, `1.0`, `1.25`, `1.5`, `1.75`, and `2.0`. **NOTE:** `cpu` and `memory` must be specified in `0.25'/'0.5Gi` combination increments. e.g. `1.0` / `2.0` or `0.5` / `1.0`. When there's a workload profile specified, there's no such constraint. *)
  image : string prop;
      (** The image to use to create the container. *)
  memory : string prop option; [@option]
      (** The amount of memory to allocate to the container. Possible values include `0.5Gi`, `1.0Gi`, `1.5Gi`, `2.0Gi`, `2.5Gi`, `3.0Gi`, `3.5Gi`, and `4.0Gi`. **NOTE:** `cpu` and `memory` must be specified in `0.25'/'0.5Gi` combination increments. e.g. `1.25` / `2.5Gi` or `0.75` / `1.5Gi`. When there's a workload profile specified, there's no such constraint. *)
  name : string prop;  (** The name of the container. *)
  env : template__init_container__env list;
  volume_mounts : template__init_container__volume_mounts list;
}
[@@deriving yojson_of]
(** template__init_container *)

type template__tcp_scale_rule__authentication = {
  secret_name : string prop;  (** secret_name *)
  trigger_parameter : string prop option; [@option]
      (** trigger_parameter *)
}
[@@deriving yojson_of]
(** template__tcp_scale_rule__authentication *)

type template__tcp_scale_rule = {
  concurrent_requests : string prop;  (** concurrent_requests *)
  name : string prop;  (** name *)
  authentication : template__tcp_scale_rule__authentication list;
}
[@@deriving yojson_of]
(** template__tcp_scale_rule *)

type template__volume = {
  name : string prop;  (** The name of the volume. *)
  storage_name : string prop option; [@option]
      (** The name of the `AzureFile` storage. Required when `storage_type` is `AzureFile` *)
  storage_type : string prop option; [@option]
      (** The type of storage volume. Possible values include `AzureFile` and `EmptyDir`. Defaults to `EmptyDir`. *)
}
[@@deriving yojson_of]
(** template__volume *)

type template = {
  max_replicas : float prop option; [@option]
      (** The maximum number of replicas for this container. *)
  min_replicas : float prop option; [@option]
      (** The minimum number of replicas for this container. *)
  revision_suffix : string prop option; [@option]
      (** The suffix for the revision. This value must be unique for the lifetime of the Resource. If omitted the service will use a hash function to create one. *)
  azure_queue_scale_rule : template__azure_queue_scale_rule list;
  container : template__container list;
  custom_scale_rule : template__custom_scale_rule list;
  http_scale_rule : template__http_scale_rule list;
  init_container : template__init_container list;
  tcp_scale_rule : template__tcp_scale_rule list;
  volume : template__volume list;
}
[@@deriving yojson_of]
(** template *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_container_app = {
  container_app_environment_id : string prop;
      (** The ID of the Container App Environment to host this Container App. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name for this Container App. *)
  resource_group_name : string prop;  (** resource_group_name *)
  revision_mode : string prop;  (** revision_mode *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workload_profile_name : string prop option; [@option]
      (** workload_profile_name *)
  dapr : dapr list;
  identity : identity list;
  ingress : ingress list;
  registry : registry list;
  secret : secret list;
  template : template list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app *)

let dapr ?app_port ?app_protocol ~app_id () : dapr =
  { app_id; app_port; app_protocol }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ingress__custom_domain ?certificate_binding_type ~certificate_id
    ~name () : ingress__custom_domain =
  { certificate_binding_type; certificate_id; name }

let ingress__ip_security_restriction ?description ~action
    ~ip_address_range ~name () : ingress__ip_security_restriction =
  { action; description; ip_address_range; name }

let ingress__traffic_weight ?label ?latest_revision ?revision_suffix
    ~percentage () : ingress__traffic_weight =
  { label; latest_revision; percentage; revision_suffix }

let ingress ?allow_insecure_connections ?exposed_port
    ?external_enabled ?transport ~target_port ~custom_domain
    ~ip_security_restriction ~traffic_weight () : ingress =
  {
    allow_insecure_connections;
    exposed_port;
    external_enabled;
    target_port;
    transport;
    custom_domain;
    ip_security_restriction;
    traffic_weight;
  }

let registry ?identity ?password_secret_name ?username ~server () :
    registry =
  { identity; password_secret_name; server; username }

let secret ~name ~value () : secret = { name; value }

let template__azure_queue_scale_rule__authentication ~secret_name
    ~trigger_parameter () :
    template__azure_queue_scale_rule__authentication =
  { secret_name; trigger_parameter }

let template__azure_queue_scale_rule ~name ~queue_length ~queue_name
    ~authentication () : template__azure_queue_scale_rule =
  { name; queue_length; queue_name; authentication }

let template__container__env ?secret_name ?value ~name () :
    template__container__env =
  { name; secret_name; value }

let template__container__liveness_probe__header ~name ~value () :
    template__container__liveness_probe__header =
  { name; value }

let template__container__liveness_probe ?failure_count_threshold
    ?host ?initial_delay ?interval_seconds ?path ?timeout ~port
    ~transport ~header () : template__container__liveness_probe =
  {
    failure_count_threshold;
    host;
    initial_delay;
    interval_seconds;
    path;
    port;
    timeout;
    transport;
    header;
  }

let template__container__readiness_probe__header ~name ~value () :
    template__container__readiness_probe__header =
  { name; value }

let template__container__readiness_probe ?failure_count_threshold
    ?host ?interval_seconds ?path ?success_count_threshold ?timeout
    ~port ~transport ~header () :
    template__container__readiness_probe =
  {
    failure_count_threshold;
    host;
    interval_seconds;
    path;
    port;
    success_count_threshold;
    timeout;
    transport;
    header;
  }

let template__container__startup_probe__header ~name ~value () :
    template__container__startup_probe__header =
  { name; value }

let template__container__startup_probe ?failure_count_threshold ?host
    ?interval_seconds ?path ?timeout ~port ~transport ~header () :
    template__container__startup_probe =
  {
    failure_count_threshold;
    host;
    interval_seconds;
    path;
    port;
    timeout;
    transport;
    header;
  }

let template__container__volume_mounts ~name ~path () :
    template__container__volume_mounts =
  { name; path }

let template__container ?args ?command ~cpu ~image ~memory ~name ~env
    ~liveness_probe ~readiness_probe ~startup_probe ~volume_mounts ()
    : template__container =
  {
    args;
    command;
    cpu;
    image;
    memory;
    name;
    env;
    liveness_probe;
    readiness_probe;
    startup_probe;
    volume_mounts;
  }

let template__custom_scale_rule__authentication ~secret_name
    ~trigger_parameter () :
    template__custom_scale_rule__authentication =
  { secret_name; trigger_parameter }

let template__custom_scale_rule ~custom_rule_type ~metadata ~name
    ~authentication () : template__custom_scale_rule =
  { custom_rule_type; metadata; name; authentication }

let template__http_scale_rule__authentication ?trigger_parameter
    ~secret_name () : template__http_scale_rule__authentication =
  { secret_name; trigger_parameter }

let template__http_scale_rule ~concurrent_requests ~name
    ~authentication () : template__http_scale_rule =
  { concurrent_requests; name; authentication }

let template__init_container__env ?secret_name ?value ~name () :
    template__init_container__env =
  { name; secret_name; value }

let template__init_container__volume_mounts ~name ~path () :
    template__init_container__volume_mounts =
  { name; path }

let template__init_container ?args ?command ?cpu ?memory ~image ~name
    ~env ~volume_mounts () : template__init_container =
  { args; command; cpu; image; memory; name; env; volume_mounts }

let template__tcp_scale_rule__authentication ?trigger_parameter
    ~secret_name () : template__tcp_scale_rule__authentication =
  { secret_name; trigger_parameter }

let template__tcp_scale_rule ~concurrent_requests ~name
    ~authentication () : template__tcp_scale_rule =
  { concurrent_requests; name; authentication }

let template__volume ?storage_name ?storage_type ~name () :
    template__volume =
  { name; storage_name; storage_type }

let template ?max_replicas ?min_replicas ?revision_suffix
    ~azure_queue_scale_rule ~container ~custom_scale_rule
    ~http_scale_rule ~init_container ~tcp_scale_rule ~volume () :
    template =
  {
    max_replicas;
    min_replicas;
    revision_suffix;
    azure_queue_scale_rule;
    container;
    custom_scale_rule;
    http_scale_rule;
    init_container;
    tcp_scale_rule;
    volume;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_app ?id ?tags ?workload_profile_name ?timeouts
    ~container_app_environment_id ~name ~resource_group_name
    ~revision_mode ~dapr ~identity ~ingress ~registry ~secret
    ~template () : azurerm_container_app =
  {
    container_app_environment_id;
    id;
    name;
    resource_group_name;
    revision_mode;
    tags;
    workload_profile_name;
    dapr;
    identity;
    ingress;
    registry;
    secret;
    template;
    timeouts;
  }

type t = {
  container_app_environment_id : string prop;
  custom_domain_verification_id : string prop;
  id : string prop;
  latest_revision_fqdn : string prop;
  latest_revision_name : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  resource_group_name : string prop;
  revision_mode : string prop;
  tags : (string * string) list prop;
  workload_profile_name : string prop;
}

let register ?tf_module ?id ?tags ?workload_profile_name ?timeouts
    ~container_app_environment_id ~name ~resource_group_name
    ~revision_mode ~dapr ~identity ~ingress ~registry ~secret
    ~template __resource_id =
  let __resource_type = "azurerm_container_app" in
  let __resource =
    azurerm_container_app ?id ?tags ?workload_profile_name ?timeouts
      ~container_app_environment_id ~name ~resource_group_name
      ~revision_mode ~dapr ~identity ~ingress ~registry ~secret
      ~template ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_app __resource);
  let __resource_attributes =
    ({
       container_app_environment_id =
         Prop.computed __resource_type __resource_id
           "container_app_environment_id";
       custom_domain_verification_id =
         Prop.computed __resource_type __resource_id
           "custom_domain_verification_id";
       id = Prop.computed __resource_type __resource_id "id";
       latest_revision_fqdn =
         Prop.computed __resource_type __resource_id
           "latest_revision_fqdn";
       latest_revision_name =
         Prop.computed __resource_type __resource_id
           "latest_revision_name";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "outbound_ip_addresses";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       revision_mode =
         Prop.computed __resource_type __resource_id "revision_mode";
       tags = Prop.computed __resource_type __resource_id "tags";
       workload_profile_name =
         Prop.computed __resource_type __resource_id
           "workload_profile_name";
     }
      : t)
  in
  __resource_attributes
