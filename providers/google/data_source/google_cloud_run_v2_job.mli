(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type binary_authorization = {
  breakglass_justification : string prop;
      (** breakglass_justification *)
  use_default : bool prop;  (** use_default *)
}

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

type template__template__vpc_access__network_interfaces = {
  network : string prop;  (** network *)
  subnetwork : string prop;  (** subnetwork *)
  tags : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** tags *)
}

type template__template__vpc_access = {
  connector : string prop;  (** connector *)
  egress : string prop;  (** egress *)
  network_interfaces :
    template__template__vpc_access__network_interfaces list;
      [@default []] [@yojson_drop_default ( = )]
      (** network_interfaces *)
}

type template__template__volumes__secret__items = {
  mode : float prop;  (** mode *)
  path : string prop;  (** path *)
  version : string prop;  (** version *)
}

type template__template__volumes__secret = {
  default_mode : float prop;  (** default_mode *)
  items : template__template__volumes__secret__items list;
      [@default []] [@yojson_drop_default ( = )]
      (** items *)
  secret : string prop;  (** secret *)
}

type template__template__volumes__cloud_sql_instance = {
  instances : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** instances *)
}

type template__template__volumes = {
  cloud_sql_instance :
    template__template__volumes__cloud_sql_instance list;
      [@default []] [@yojson_drop_default ( = )]
      (** cloud_sql_instance *)
  name : string prop;  (** name *)
  secret : template__template__volumes__secret list;
      [@default []] [@yojson_drop_default ( = )]
      (** secret *)
}

type template__template__containers__volume_mounts = {
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
}

type template__template__containers__resources = {
  limits : (string * string prop) list;  (** limits *)
}

type template__template__containers__ports = {
  container_port : float prop;  (** container_port *)
  name : string prop;  (** name *)
}

type template__template__containers__env__value_source__secret_key_ref = {
  secret : string prop;  (** secret *)
  version : string prop;  (** version *)
}

type template__template__containers__env__value_source = {
  secret_key_ref :
    template__template__containers__env__value_source__secret_key_ref
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** secret_key_ref *)
}

type template__template__containers__env = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
  value_source :
    template__template__containers__env__value_source list;
      [@default []] [@yojson_drop_default ( = )]
      (** value_source *)
}

type template__template__containers = {
  args : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** args *)
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** command *)
  env : template__template__containers__env list;
      [@default []] [@yojson_drop_default ( = )]
      (** env *)
  image : string prop;  (** image *)
  name : string prop;  (** name *)
  ports : template__template__containers__ports list;
      [@default []] [@yojson_drop_default ( = )]
      (** ports *)
  resources : template__template__containers__resources list;
      [@default []] [@yojson_drop_default ( = )]
      (** resources *)
  volume_mounts : template__template__containers__volume_mounts list;
      [@default []] [@yojson_drop_default ( = )]
      (** volume_mounts *)
  working_dir : string prop;  (** working_dir *)
}

type template__template = {
  containers : template__template__containers list;
      [@default []] [@yojson_drop_default ( = )]
      (** containers *)
  encryption_key : string prop;  (** encryption_key *)
  execution_environment : string prop;  (** execution_environment *)
  max_retries : float prop;  (** max_retries *)
  service_account : string prop;  (** service_account *)
  timeout : string prop;  (** timeout *)
  volumes : template__template__volumes list;
      [@default []] [@yojson_drop_default ( = )]
      (** volumes *)
  vpc_access : template__template__vpc_access list;
      [@default []] [@yojson_drop_default ( = )]
      (** vpc_access *)
}

type template = {
  annotations : (string * string prop) list;  (** annotations *)
  labels : (string * string prop) list;  (** labels *)
  parallelism : float prop;  (** parallelism *)
  task_count : float prop;  (** task_count *)
  template : template__template list;
      [@default []] [@yojson_drop_default ( = )]
      (** template *)
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

type google_cloud_run_v2_job

val google_cloud_run_v2_job :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_cloud_run_v2_job

val yojson_of_google_cloud_run_v2_job :
  google_cloud_run_v2_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : (string * string) list prop;
  binary_authorization : binary_authorization list prop;
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
  template : template list prop;
  terminal_condition : terminal_condition list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
