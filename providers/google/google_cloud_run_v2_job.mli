(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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

type latest_created_execution = {
  completion_time : string prop;  (** completion_time *)
  create_time : string prop;  (** create_time *)
  name : string prop;  (** name *)
}

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

type binary_authorization

val binary_authorization :
  ?breakglass_justification:string prop ->
  ?use_default:bool prop ->
  unit ->
  binary_authorization

type template__template__containers__env__value_source__secret_key_ref

val template__template__containers__env__value_source__secret_key_ref :
  secret:string prop ->
  version:string prop ->
  unit ->
  template__template__containers__env__value_source__secret_key_ref

type template__template__containers__env__value_source

val template__template__containers__env__value_source :
  ?secret_key_ref:
    template__template__containers__env__value_source__secret_key_ref
    list ->
  unit ->
  template__template__containers__env__value_source

type template__template__containers__env

val template__template__containers__env :
  ?value:string prop ->
  ?value_source:
    template__template__containers__env__value_source list ->
  name:string prop ->
  unit ->
  template__template__containers__env

type template__template__containers__ports

val template__template__containers__ports :
  ?container_port:float prop ->
  ?name:string prop ->
  unit ->
  template__template__containers__ports

type template__template__containers__resources

val template__template__containers__resources :
  ?limits:(string * string prop) list ->
  unit ->
  template__template__containers__resources

type template__template__containers__volume_mounts

val template__template__containers__volume_mounts :
  mount_path:string prop ->
  name:string prop ->
  unit ->
  template__template__containers__volume_mounts

type template__template__containers

val template__template__containers :
  ?args:string prop list ->
  ?command:string prop list ->
  ?name:string prop ->
  ?working_dir:string prop ->
  ?env:template__template__containers__env list ->
  ?ports:template__template__containers__ports list ->
  ?resources:template__template__containers__resources list ->
  ?volume_mounts:template__template__containers__volume_mounts list ->
  image:string prop ->
  unit ->
  template__template__containers

type template__template__volumes__cloud_sql_instance

val template__template__volumes__cloud_sql_instance :
  ?instances:string prop list ->
  unit ->
  template__template__volumes__cloud_sql_instance

type template__template__volumes__secret__items

val template__template__volumes__secret__items :
  ?mode:float prop ->
  path:string prop ->
  version:string prop ->
  unit ->
  template__template__volumes__secret__items

type template__template__volumes__secret

val template__template__volumes__secret :
  ?default_mode:float prop ->
  ?items:template__template__volumes__secret__items list ->
  secret:string prop ->
  unit ->
  template__template__volumes__secret

type template__template__volumes

val template__template__volumes :
  ?cloud_sql_instance:
    template__template__volumes__cloud_sql_instance list ->
  ?secret:template__template__volumes__secret list ->
  name:string prop ->
  unit ->
  template__template__volumes

type template__template__vpc_access__network_interfaces

val template__template__vpc_access__network_interfaces :
  ?network:string prop ->
  ?subnetwork:string prop ->
  ?tags:string prop list ->
  unit ->
  template__template__vpc_access__network_interfaces

type template__template__vpc_access

val template__template__vpc_access :
  ?connector:string prop ->
  ?egress:string prop ->
  ?network_interfaces:
    template__template__vpc_access__network_interfaces list ->
  unit ->
  template__template__vpc_access

type template__template

val template__template :
  ?encryption_key:string prop ->
  ?execution_environment:string prop ->
  ?max_retries:float prop ->
  ?service_account:string prop ->
  ?timeout:string prop ->
  ?containers:template__template__containers list ->
  ?volumes:template__template__volumes list ->
  ?vpc_access:template__template__vpc_access list ->
  unit ->
  template__template

type template

val template :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  ?parallelism:float prop ->
  ?task_count:float prop ->
  template:template__template list ->
  unit ->
  template

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloud_run_v2_job

val google_cloud_run_v2_job :
  ?annotations:(string * string prop) list ->
  ?client:string prop ->
  ?client_version:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?binary_authorization:binary_authorization list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  template:template list ->
  unit ->
  google_cloud_run_v2_job

val yojson_of_google_cloud_run_v2_job :
  google_cloud_run_v2_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?client:string prop ->
  ?client_version:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?binary_authorization:binary_authorization list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  template:template list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?client:string prop ->
  ?client_version:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?launch_stage:string prop ->
  ?project:string prop ->
  ?binary_authorization:binary_authorization list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  template:template list ->
  string ->
  t Tf_core.resource
