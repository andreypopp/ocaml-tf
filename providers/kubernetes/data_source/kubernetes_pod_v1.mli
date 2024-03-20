(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__volume__vsphere_volume = {
  fs_type : string prop;  (** fs_type *)
  volume_path : string prop;  (** volume_path *)
}

type spec__volume__secret__items = {
  key : string prop;  (** key *)
  mode : string prop;  (** mode *)
  path : string prop;  (** path *)
}

type spec__volume__secret = {
  default_mode : string prop;  (** default_mode *)
  items : spec__volume__secret__items list;  (** items *)
  optional : bool prop;  (** optional *)
  secret_name : string prop;  (** secret_name *)
}

type spec__volume__rbd__secret_ref = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
}

type spec__volume__rbd = {
  ceph_monitors : string prop list;  (** ceph_monitors *)
  fs_type : string prop;  (** fs_type *)
  keyring : string prop;  (** keyring *)
  rados_user : string prop;  (** rados_user *)
  rbd_image : string prop;  (** rbd_image *)
  rbd_pool : string prop;  (** rbd_pool *)
  read_only : bool prop;  (** read_only *)
  secret_ref : spec__volume__rbd__secret_ref list;  (** secret_ref *)
}

type spec__volume__quobyte = {
  group : string prop;  (** group *)
  read_only : bool prop;  (** read_only *)
  registry : string prop;  (** registry *)
  user : string prop;  (** user *)
  volume : string prop;  (** volume *)
}

type spec__volume__projected__sources__service_account_token = {
  audience : string prop;  (** audience *)
  expiration_seconds : float prop;  (** expiration_seconds *)
  path : string prop;  (** path *)
}

type spec__volume__projected__sources__secret__items = {
  key : string prop;  (** key *)
  mode : string prop;  (** mode *)
  path : string prop;  (** path *)
}

type spec__volume__projected__sources__secret = {
  items : spec__volume__projected__sources__secret__items list;
      (** items *)
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__volume__projected__sources__downward_api__items__resource_field_ref = {
  container_name : string prop;  (** container_name *)
  divisor : string prop;  (** divisor *)
  resource : string prop;  (** resource *)
}

type spec__volume__projected__sources__downward_api__items__field_ref = {
  api_version : string prop;  (** api_version *)
  field_path : string prop;  (** field_path *)
}

type spec__volume__projected__sources__downward_api__items = {
  field_ref :
    spec__volume__projected__sources__downward_api__items__field_ref
    list;
      (** field_ref *)
  mode : string prop;  (** mode *)
  path : string prop;  (** path *)
  resource_field_ref :
    spec__volume__projected__sources__downward_api__items__resource_field_ref
    list;
      (** resource_field_ref *)
}

type spec__volume__projected__sources__downward_api = {
  items : spec__volume__projected__sources__downward_api__items list;
      (** items *)
}

type spec__volume__projected__sources__config_map__items = {
  key : string prop;  (** key *)
  mode : string prop;  (** mode *)
  path : string prop;  (** path *)
}

type spec__volume__projected__sources__config_map = {
  items : spec__volume__projected__sources__config_map__items list;
      (** items *)
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__volume__projected__sources = {
  config_map : spec__volume__projected__sources__config_map list;
      (** config_map *)
  downward_api : spec__volume__projected__sources__downward_api list;
      (** downward_api *)
  secret : spec__volume__projected__sources__secret list;
      (** secret *)
  service_account_token :
    spec__volume__projected__sources__service_account_token list;
      (** service_account_token *)
}

type spec__volume__projected = {
  default_mode : string prop;  (** default_mode *)
  sources : spec__volume__projected__sources list;  (** sources *)
}

type spec__volume__photon_persistent_disk = {
  fs_type : string prop;  (** fs_type *)
  pd_id : string prop;  (** pd_id *)
}

type spec__volume__persistent_volume_claim = {
  claim_name : string prop;  (** claim_name *)
  read_only : bool prop;  (** read_only *)
}

type spec__volume__nfs = {
  path : string prop;  (** path *)
  read_only : bool prop;  (** read_only *)
  server : string prop;  (** server *)
}

type spec__volume__local = { path : string prop  (** path *) }

type spec__volume__iscsi = {
  fs_type : string prop;  (** fs_type *)
  iqn : string prop;  (** iqn *)
  iscsi_interface : string prop;  (** iscsi_interface *)
  lun : float prop;  (** lun *)
  read_only : bool prop;  (** read_only *)
  target_portal : string prop;  (** target_portal *)
}

type spec__volume__host_path = {
  path : string prop;  (** path *)
  type_ : string prop; [@key "type"]  (** type *)
}

type spec__volume__glusterfs = {
  endpoints_name : string prop;  (** endpoints_name *)
  path : string prop;  (** path *)
  read_only : bool prop;  (** read_only *)
}

type spec__volume__git_repo = {
  directory : string prop;  (** directory *)
  repository : string prop;  (** repository *)
  revision : string prop;  (** revision *)
}

type spec__volume__gce_persistent_disk = {
  fs_type : string prop;  (** fs_type *)
  partition : float prop;  (** partition *)
  pd_name : string prop;  (** pd_name *)
  read_only : bool prop;  (** read_only *)
}

type spec__volume__flocker = {
  dataset_name : string prop;  (** dataset_name *)
  dataset_uuid : string prop;  (** dataset_uuid *)
}

type spec__volume__flex_volume__secret_ref = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
}

type spec__volume__flex_volume = {
  driver : string prop;  (** driver *)
  fs_type : string prop;  (** fs_type *)
  options : (string * string prop) list;  (** options *)
  read_only : bool prop;  (** read_only *)
  secret_ref : spec__volume__flex_volume__secret_ref list;
      (** secret_ref *)
}

type spec__volume__fc = {
  fs_type : string prop;  (** fs_type *)
  lun : float prop;  (** lun *)
  read_only : bool prop;  (** read_only *)
  target_ww_ns : string prop list;  (** target_ww_ns *)
}

type spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__volume__ephemeral__volume_claim_template__spec__selector = {
  match_expressions :
    spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
    list;
      (** match_expressions *)
  match_labels : (string * string prop) list;  (** match_labels *)
}

type spec__volume__ephemeral__volume_claim_template__spec__resources = {
  limits : (string * string prop) list;  (** limits *)
  requests : (string * string prop) list;  (** requests *)
}

type spec__volume__ephemeral__volume_claim_template__spec = {
  access_modes : string prop list;  (** access_modes *)
  resources :
    spec__volume__ephemeral__volume_claim_template__spec__resources
    list;
      (** resources *)
  selector :
    spec__volume__ephemeral__volume_claim_template__spec__selector
    list;
      (** selector *)
  storage_class_name : string prop;  (** storage_class_name *)
  volume_mode : string prop;  (** volume_mode *)
  volume_name : string prop;  (** volume_name *)
}

type spec__volume__ephemeral__volume_claim_template__metadata = {
  annotations : (string * string prop) list;  (** annotations *)
  labels : (string * string prop) list;  (** labels *)
}

type spec__volume__ephemeral__volume_claim_template = {
  metadata :
    spec__volume__ephemeral__volume_claim_template__metadata list;
      (** metadata *)
  spec : spec__volume__ephemeral__volume_claim_template__spec list;
      (** spec *)
}

type spec__volume__ephemeral = {
  volume_claim_template :
    spec__volume__ephemeral__volume_claim_template list;
      (** volume_claim_template *)
}

type spec__volume__empty_dir = {
  medium : string prop;  (** medium *)
  size_limit : string prop;  (** size_limit *)
}

type spec__volume__downward_api__items__resource_field_ref = {
  container_name : string prop;  (** container_name *)
  divisor : string prop;  (** divisor *)
  resource : string prop;  (** resource *)
}

type spec__volume__downward_api__items__field_ref = {
  api_version : string prop;  (** api_version *)
  field_path : string prop;  (** field_path *)
}

type spec__volume__downward_api__items = {
  field_ref : spec__volume__downward_api__items__field_ref list;
      (** field_ref *)
  mode : string prop;  (** mode *)
  path : string prop;  (** path *)
  resource_field_ref :
    spec__volume__downward_api__items__resource_field_ref list;
      (** resource_field_ref *)
}

type spec__volume__downward_api = {
  default_mode : string prop;  (** default_mode *)
  items : spec__volume__downward_api__items list;  (** items *)
}

type spec__volume__csi__node_publish_secret_ref = {
  name : string prop;  (** name *)
}

type spec__volume__csi = {
  driver : string prop;  (** driver *)
  fs_type : string prop;  (** fs_type *)
  node_publish_secret_ref :
    spec__volume__csi__node_publish_secret_ref list;
      (** node_publish_secret_ref *)
  read_only : bool prop;  (** read_only *)
  volume_attributes : (string * string prop) list;
      (** volume_attributes *)
}

type spec__volume__config_map__items = {
  key : string prop;  (** key *)
  mode : string prop;  (** mode *)
  path : string prop;  (** path *)
}

type spec__volume__config_map = {
  default_mode : string prop;  (** default_mode *)
  items : spec__volume__config_map__items list;  (** items *)
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__volume__cinder = {
  fs_type : string prop;  (** fs_type *)
  read_only : bool prop;  (** read_only *)
  volume_id : string prop;  (** volume_id *)
}

type spec__volume__ceph_fs__secret_ref = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
}

type spec__volume__ceph_fs = {
  monitors : string prop list;  (** monitors *)
  path : string prop;  (** path *)
  read_only : bool prop;  (** read_only *)
  secret_file : string prop;  (** secret_file *)
  secret_ref : spec__volume__ceph_fs__secret_ref list;
      (** secret_ref *)
  user : string prop;  (** user *)
}

type spec__volume__azure_file = {
  read_only : bool prop;  (** read_only *)
  secret_name : string prop;  (** secret_name *)
  secret_namespace : string prop;  (** secret_namespace *)
  share_name : string prop;  (** share_name *)
}

type spec__volume__azure_disk = {
  caching_mode : string prop;  (** caching_mode *)
  data_disk_uri : string prop;  (** data_disk_uri *)
  disk_name : string prop;  (** disk_name *)
  fs_type : string prop;  (** fs_type *)
  kind : string prop;  (** kind *)
  read_only : bool prop;  (** read_only *)
}

type spec__volume__aws_elastic_block_store = {
  fs_type : string prop;  (** fs_type *)
  partition : float prop;  (** partition *)
  read_only : bool prop;  (** read_only *)
  volume_id : string prop;  (** volume_id *)
}

type spec__volume = {
  aws_elastic_block_store :
    spec__volume__aws_elastic_block_store list;
      (** aws_elastic_block_store *)
  azure_disk : spec__volume__azure_disk list;  (** azure_disk *)
  azure_file : spec__volume__azure_file list;  (** azure_file *)
  ceph_fs : spec__volume__ceph_fs list;  (** ceph_fs *)
  cinder : spec__volume__cinder list;  (** cinder *)
  config_map : spec__volume__config_map list;  (** config_map *)
  csi : spec__volume__csi list;  (** csi *)
  downward_api : spec__volume__downward_api list;
      (** downward_api *)
  empty_dir : spec__volume__empty_dir list;  (** empty_dir *)
  ephemeral : spec__volume__ephemeral list;  (** ephemeral *)
  fc : spec__volume__fc list;  (** fc *)
  flex_volume : spec__volume__flex_volume list;  (** flex_volume *)
  flocker : spec__volume__flocker list;  (** flocker *)
  gce_persistent_disk : spec__volume__gce_persistent_disk list;
      (** gce_persistent_disk *)
  git_repo : spec__volume__git_repo list;  (** git_repo *)
  glusterfs : spec__volume__glusterfs list;  (** glusterfs *)
  host_path : spec__volume__host_path list;  (** host_path *)
  iscsi : spec__volume__iscsi list;  (** iscsi *)
  local : spec__volume__local list;  (** local *)
  name : string prop;  (** name *)
  nfs : spec__volume__nfs list;  (** nfs *)
  persistent_volume_claim :
    spec__volume__persistent_volume_claim list;
      (** persistent_volume_claim *)
  photon_persistent_disk : spec__volume__photon_persistent_disk list;
      (** photon_persistent_disk *)
  projected : spec__volume__projected list;  (** projected *)
  quobyte : spec__volume__quobyte list;  (** quobyte *)
  rbd : spec__volume__rbd list;  (** rbd *)
  secret : spec__volume__secret list;  (** secret *)
  vsphere_volume : spec__volume__vsphere_volume list;
      (** vsphere_volume *)
}

type spec__topology_spread_constraint__label_selector__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__topology_spread_constraint__label_selector = {
  match_expressions :
    spec__topology_spread_constraint__label_selector__match_expressions
    list;
      (** match_expressions *)
  match_labels : (string * string prop) list;  (** match_labels *)
}

type spec__topology_spread_constraint = {
  label_selector :
    spec__topology_spread_constraint__label_selector list;
      (** label_selector *)
  match_label_keys : string prop list;  (** match_label_keys *)
  max_skew : float prop;  (** max_skew *)
  min_domains : float prop;  (** min_domains *)
  node_affinity_policy : string prop;  (** node_affinity_policy *)
  node_taints_policy : string prop;  (** node_taints_policy *)
  topology_key : string prop;  (** topology_key *)
  when_unsatisfiable : string prop;  (** when_unsatisfiable *)
}

type spec__toleration = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  toleration_seconds : string prop;  (** toleration_seconds *)
  value : string prop;  (** value *)
}

type spec__security_context__windows_options = {
  gmsa_credential_spec : string prop;  (** gmsa_credential_spec *)
  gmsa_credential_spec_name : string prop;
      (** gmsa_credential_spec_name *)
  host_process : bool prop;  (** host_process *)
  run_as_username : string prop;  (** run_as_username *)
}

type spec__security_context__sysctl = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__security_context__seccomp_profile = {
  localhost_profile : string prop;  (** localhost_profile *)
  type_ : string prop; [@key "type"]  (** type *)
}

type spec__security_context__se_linux_options = {
  level : string prop;  (** level *)
  role : string prop;  (** role *)
  type_ : string prop; [@key "type"]  (** type *)
  user : string prop;  (** user *)
}

type spec__security_context = {
  fs_group : string prop;  (** fs_group *)
  fs_group_change_policy : string prop;
      (** fs_group_change_policy *)
  run_as_group : string prop;  (** run_as_group *)
  run_as_non_root : bool prop;  (** run_as_non_root *)
  run_as_user : string prop;  (** run_as_user *)
  se_linux_options : spec__security_context__se_linux_options list;
      (** se_linux_options *)
  seccomp_profile : spec__security_context__seccomp_profile list;
      (** seccomp_profile *)
  supplemental_groups : float prop list;  (** supplemental_groups *)
  sysctl : spec__security_context__sysctl list;  (** sysctl *)
  windows_options : spec__security_context__windows_options list;
      (** windows_options *)
}

type spec__readiness_gate = {
  condition_type : string prop;  (** condition_type *)
}

type spec__os = { name : string prop  (** name *) }

type spec__init_container__volume_mount = {
  mount_path : string prop;  (** mount_path *)
  mount_propagation : string prop;  (** mount_propagation *)
  name : string prop;  (** name *)
  read_only : bool prop;  (** read_only *)
  sub_path : string prop;  (** sub_path *)
}

type spec__init_container__startup_probe__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__init_container__startup_probe__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__init_container__startup_probe__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__init_container__startup_probe__http_get__http_header list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__init_container__startup_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type spec__init_container__startup_probe__exec = {
  command : string prop list;  (** command *)
}

type spec__init_container__startup_probe = {
  exec : spec__init_container__startup_probe__exec list;  (** exec *)
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : spec__init_container__startup_probe__grpc list;  (** grpc *)
  http_get : spec__init_container__startup_probe__http_get list;
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  success_threshold : float prop;  (** success_threshold *)
  tcp_socket : spec__init_container__startup_probe__tcp_socket list;
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type spec__init_container__security_context__seccomp_profile = {
  localhost_profile : string prop;  (** localhost_profile *)
  type_ : string prop; [@key "type"]  (** type *)
}

type spec__init_container__security_context__se_linux_options = {
  level : string prop;  (** level *)
  role : string prop;  (** role *)
  type_ : string prop; [@key "type"]  (** type *)
  user : string prop;  (** user *)
}

type spec__init_container__security_context__capabilities = {
  add : string prop list;  (** add *)
  drop : string prop list;  (** drop *)
}

type spec__init_container__security_context = {
  allow_privilege_escalation : bool prop;
      (** allow_privilege_escalation *)
  capabilities :
    spec__init_container__security_context__capabilities list;
      (** capabilities *)
  privileged : bool prop;  (** privileged *)
  read_only_root_filesystem : bool prop;
      (** read_only_root_filesystem *)
  run_as_group : string prop;  (** run_as_group *)
  run_as_non_root : bool prop;  (** run_as_non_root *)
  run_as_user : string prop;  (** run_as_user *)
  se_linux_options :
    spec__init_container__security_context__se_linux_options list;
      (** se_linux_options *)
  seccomp_profile :
    spec__init_container__security_context__seccomp_profile list;
      (** seccomp_profile *)
}

type spec__init_container__resources = {
  limits : (string * string prop) list;  (** limits *)
  requests : (string * string prop) list;  (** requests *)
}

type spec__init_container__readiness_probe__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__init_container__readiness_probe__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__init_container__readiness_probe__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__init_container__readiness_probe__http_get__http_header list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__init_container__readiness_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type spec__init_container__readiness_probe__exec = {
  command : string prop list;  (** command *)
}

type spec__init_container__readiness_probe = {
  exec : spec__init_container__readiness_probe__exec list;
      (** exec *)
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : spec__init_container__readiness_probe__grpc list;
      (** grpc *)
  http_get : spec__init_container__readiness_probe__http_get list;
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  success_threshold : float prop;  (** success_threshold *)
  tcp_socket :
    spec__init_container__readiness_probe__tcp_socket list;
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type spec__init_container__port = {
  container_port : float prop;  (** container_port *)
  host_ip : string prop;  (** host_ip *)
  host_port : float prop;  (** host_port *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
}

type spec__init_container__liveness_probe__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__init_container__liveness_probe__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__init_container__liveness_probe__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__init_container__liveness_probe__http_get__http_header list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__init_container__liveness_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type spec__init_container__liveness_probe__exec = {
  command : string prop list;  (** command *)
}

type spec__init_container__liveness_probe = {
  exec : spec__init_container__liveness_probe__exec list;
      (** exec *)
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : spec__init_container__liveness_probe__grpc list;
      (** grpc *)
  http_get : spec__init_container__liveness_probe__http_get list;
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  success_threshold : float prop;  (** success_threshold *)
  tcp_socket : spec__init_container__liveness_probe__tcp_socket list;
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type spec__init_container__lifecycle__pre_stop__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__init_container__lifecycle__pre_stop__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__init_container__lifecycle__pre_stop__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__init_container__lifecycle__pre_stop__http_get__http_header
    list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__init_container__lifecycle__pre_stop__exec = {
  command : string prop list;  (** command *)
}

type spec__init_container__lifecycle__pre_stop = {
  exec : spec__init_container__lifecycle__pre_stop__exec list;
      (** exec *)
  http_get :
    spec__init_container__lifecycle__pre_stop__http_get list;
      (** http_get *)
  tcp_socket :
    spec__init_container__lifecycle__pre_stop__tcp_socket list;
      (** tcp_socket *)
}

type spec__init_container__lifecycle__post_start__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__init_container__lifecycle__post_start__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__init_container__lifecycle__post_start__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__init_container__lifecycle__post_start__http_get__http_header
    list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__init_container__lifecycle__post_start__exec = {
  command : string prop list;  (** command *)
}

type spec__init_container__lifecycle__post_start = {
  exec : spec__init_container__lifecycle__post_start__exec list;
      (** exec *)
  http_get :
    spec__init_container__lifecycle__post_start__http_get list;
      (** http_get *)
  tcp_socket :
    spec__init_container__lifecycle__post_start__tcp_socket list;
      (** tcp_socket *)
}

type spec__init_container__lifecycle = {
  post_start : spec__init_container__lifecycle__post_start list;
      (** post_start *)
  pre_stop : spec__init_container__lifecycle__pre_stop list;
      (** pre_stop *)
}

type spec__init_container__env_from__secret_ref = {
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__init_container__env_from__config_map_ref = {
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__init_container__env_from = {
  config_map_ref :
    spec__init_container__env_from__config_map_ref list;
      (** config_map_ref *)
  prefix : string prop;  (** prefix *)
  secret_ref : spec__init_container__env_from__secret_ref list;
      (** secret_ref *)
}

type spec__init_container__env__value_from__secret_key_ref = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__init_container__env__value_from__resource_field_ref = {
  container_name : string prop;  (** container_name *)
  divisor : string prop;  (** divisor *)
  resource : string prop;  (** resource *)
}

type spec__init_container__env__value_from__field_ref = {
  api_version : string prop;  (** api_version *)
  field_path : string prop;  (** field_path *)
}

type spec__init_container__env__value_from__config_map_key_ref = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__init_container__env__value_from = {
  config_map_key_ref :
    spec__init_container__env__value_from__config_map_key_ref list;
      (** config_map_key_ref *)
  field_ref : spec__init_container__env__value_from__field_ref list;
      (** field_ref *)
  resource_field_ref :
    spec__init_container__env__value_from__resource_field_ref list;
      (** resource_field_ref *)
  secret_key_ref :
    spec__init_container__env__value_from__secret_key_ref list;
      (** secret_key_ref *)
}

type spec__init_container__env = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
  value_from : spec__init_container__env__value_from list;
      (** value_from *)
}

type spec__init_container = {
  args : string prop list;  (** args *)
  command : string prop list;  (** command *)
  env : spec__init_container__env list;  (** env *)
  env_from : spec__init_container__env_from list;  (** env_from *)
  image : string prop;  (** image *)
  image_pull_policy : string prop;  (** image_pull_policy *)
  lifecycle : spec__init_container__lifecycle list;  (** lifecycle *)
  liveness_probe : spec__init_container__liveness_probe list;
      (** liveness_probe *)
  name : string prop;  (** name *)
  port : spec__init_container__port list;  (** port *)
  readiness_probe : spec__init_container__readiness_probe list;
      (** readiness_probe *)
  resources : spec__init_container__resources list;  (** resources *)
  security_context : spec__init_container__security_context list;
      (** security_context *)
  startup_probe : spec__init_container__startup_probe list;
      (** startup_probe *)
  stdin : bool prop;  (** stdin *)
  stdin_once : bool prop;  (** stdin_once *)
  termination_message_path : string prop;
      (** termination_message_path *)
  termination_message_policy : string prop;
      (** termination_message_policy *)
  tty : bool prop;  (** tty *)
  volume_mount : spec__init_container__volume_mount list;
      (** volume_mount *)
  working_dir : string prop;  (** working_dir *)
}

type spec__image_pull_secrets = { name : string prop  (** name *) }

type spec__host_aliases = {
  hostnames : string prop list;  (** hostnames *)
  ip : string prop;  (** ip *)
}

type spec__dns_config__option = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__dns_config = {
  nameservers : string prop list;  (** nameservers *)
  option_ : spec__dns_config__option list; [@key "option"]
      (** option *)
  searches : string prop list;  (** searches *)
}

type spec__container__volume_mount = {
  mount_path : string prop;  (** mount_path *)
  mount_propagation : string prop;  (** mount_propagation *)
  name : string prop;  (** name *)
  read_only : bool prop;  (** read_only *)
  sub_path : string prop;  (** sub_path *)
}

type spec__container__startup_probe__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__container__startup_probe__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__container__startup_probe__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__container__startup_probe__http_get__http_header list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__container__startup_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type spec__container__startup_probe__exec = {
  command : string prop list;  (** command *)
}

type spec__container__startup_probe = {
  exec : spec__container__startup_probe__exec list;  (** exec *)
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : spec__container__startup_probe__grpc list;  (** grpc *)
  http_get : spec__container__startup_probe__http_get list;
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  success_threshold : float prop;  (** success_threshold *)
  tcp_socket : spec__container__startup_probe__tcp_socket list;
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type spec__container__security_context__seccomp_profile = {
  localhost_profile : string prop;  (** localhost_profile *)
  type_ : string prop; [@key "type"]  (** type *)
}

type spec__container__security_context__se_linux_options = {
  level : string prop;  (** level *)
  role : string prop;  (** role *)
  type_ : string prop; [@key "type"]  (** type *)
  user : string prop;  (** user *)
}

type spec__container__security_context__capabilities = {
  add : string prop list;  (** add *)
  drop : string prop list;  (** drop *)
}

type spec__container__security_context = {
  allow_privilege_escalation : bool prop;
      (** allow_privilege_escalation *)
  capabilities :
    spec__container__security_context__capabilities list;
      (** capabilities *)
  privileged : bool prop;  (** privileged *)
  read_only_root_filesystem : bool prop;
      (** read_only_root_filesystem *)
  run_as_group : string prop;  (** run_as_group *)
  run_as_non_root : bool prop;  (** run_as_non_root *)
  run_as_user : string prop;  (** run_as_user *)
  se_linux_options :
    spec__container__security_context__se_linux_options list;
      (** se_linux_options *)
  seccomp_profile :
    spec__container__security_context__seccomp_profile list;
      (** seccomp_profile *)
}

type spec__container__resources = {
  limits : (string * string prop) list;  (** limits *)
  requests : (string * string prop) list;  (** requests *)
}

type spec__container__readiness_probe__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__container__readiness_probe__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__container__readiness_probe__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__container__readiness_probe__http_get__http_header list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__container__readiness_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type spec__container__readiness_probe__exec = {
  command : string prop list;  (** command *)
}

type spec__container__readiness_probe = {
  exec : spec__container__readiness_probe__exec list;  (** exec *)
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : spec__container__readiness_probe__grpc list;  (** grpc *)
  http_get : spec__container__readiness_probe__http_get list;
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  success_threshold : float prop;  (** success_threshold *)
  tcp_socket : spec__container__readiness_probe__tcp_socket list;
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type spec__container__port = {
  container_port : float prop;  (** container_port *)
  host_ip : string prop;  (** host_ip *)
  host_port : float prop;  (** host_port *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
}

type spec__container__liveness_probe__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__container__liveness_probe__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__container__liveness_probe__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__container__liveness_probe__http_get__http_header list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__container__liveness_probe__grpc = {
  port : float prop;  (** port *)
  service : string prop;  (** service *)
}

type spec__container__liveness_probe__exec = {
  command : string prop list;  (** command *)
}

type spec__container__liveness_probe = {
  exec : spec__container__liveness_probe__exec list;  (** exec *)
  failure_threshold : float prop;  (** failure_threshold *)
  grpc : spec__container__liveness_probe__grpc list;  (** grpc *)
  http_get : spec__container__liveness_probe__http_get list;
      (** http_get *)
  initial_delay_seconds : float prop;  (** initial_delay_seconds *)
  period_seconds : float prop;  (** period_seconds *)
  success_threshold : float prop;  (** success_threshold *)
  tcp_socket : spec__container__liveness_probe__tcp_socket list;
      (** tcp_socket *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type spec__container__lifecycle__pre_stop__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__container__lifecycle__pre_stop__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__container__lifecycle__pre_stop__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__container__lifecycle__pre_stop__http_get__http_header list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__container__lifecycle__pre_stop__exec = {
  command : string prop list;  (** command *)
}

type spec__container__lifecycle__pre_stop = {
  exec : spec__container__lifecycle__pre_stop__exec list;
      (** exec *)
  http_get : spec__container__lifecycle__pre_stop__http_get list;
      (** http_get *)
  tcp_socket : spec__container__lifecycle__pre_stop__tcp_socket list;
      (** tcp_socket *)
}

type spec__container__lifecycle__post_start__tcp_socket = {
  port : string prop;  (** port *)
}

type spec__container__lifecycle__post_start__http_get__http_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type spec__container__lifecycle__post_start__http_get = {
  host : string prop;  (** host *)
  http_header :
    spec__container__lifecycle__post_start__http_get__http_header
    list;
      (** http_header *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  scheme : string prop;  (** scheme *)
}

type spec__container__lifecycle__post_start__exec = {
  command : string prop list;  (** command *)
}

type spec__container__lifecycle__post_start = {
  exec : spec__container__lifecycle__post_start__exec list;
      (** exec *)
  http_get : spec__container__lifecycle__post_start__http_get list;
      (** http_get *)
  tcp_socket :
    spec__container__lifecycle__post_start__tcp_socket list;
      (** tcp_socket *)
}

type spec__container__lifecycle = {
  post_start : spec__container__lifecycle__post_start list;
      (** post_start *)
  pre_stop : spec__container__lifecycle__pre_stop list;
      (** pre_stop *)
}

type spec__container__env_from__secret_ref = {
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__container__env_from__config_map_ref = {
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__container__env_from = {
  config_map_ref : spec__container__env_from__config_map_ref list;
      (** config_map_ref *)
  prefix : string prop;  (** prefix *)
  secret_ref : spec__container__env_from__secret_ref list;
      (** secret_ref *)
}

type spec__container__env__value_from__secret_key_ref = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__container__env__value_from__resource_field_ref = {
  container_name : string prop;  (** container_name *)
  divisor : string prop;  (** divisor *)
  resource : string prop;  (** resource *)
}

type spec__container__env__value_from__field_ref = {
  api_version : string prop;  (** api_version *)
  field_path : string prop;  (** field_path *)
}

type spec__container__env__value_from__config_map_key_ref = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
}

type spec__container__env__value_from = {
  config_map_key_ref :
    spec__container__env__value_from__config_map_key_ref list;
      (** config_map_key_ref *)
  field_ref : spec__container__env__value_from__field_ref list;
      (** field_ref *)
  resource_field_ref :
    spec__container__env__value_from__resource_field_ref list;
      (** resource_field_ref *)
  secret_key_ref :
    spec__container__env__value_from__secret_key_ref list;
      (** secret_key_ref *)
}

type spec__container__env = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
  value_from : spec__container__env__value_from list;
      (** value_from *)
}

type spec__container = {
  args : string prop list;  (** args *)
  command : string prop list;  (** command *)
  env : spec__container__env list;  (** env *)
  env_from : spec__container__env_from list;  (** env_from *)
  image : string prop;  (** image *)
  image_pull_policy : string prop;  (** image_pull_policy *)
  lifecycle : spec__container__lifecycle list;  (** lifecycle *)
  liveness_probe : spec__container__liveness_probe list;
      (** liveness_probe *)
  name : string prop;  (** name *)
  port : spec__container__port list;  (** port *)
  readiness_probe : spec__container__readiness_probe list;
      (** readiness_probe *)
  resources : spec__container__resources list;  (** resources *)
  security_context : spec__container__security_context list;
      (** security_context *)
  startup_probe : spec__container__startup_probe list;
      (** startup_probe *)
  stdin : bool prop;  (** stdin *)
  stdin_once : bool prop;  (** stdin_once *)
  termination_message_path : string prop;
      (** termination_message_path *)
  termination_message_policy : string prop;
      (** termination_message_policy *)
  tty : bool prop;  (** tty *)
  volume_mount : spec__container__volume_mount list;
      (** volume_mount *)
  working_dir : string prop;  (** working_dir *)
}

type spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector = {
  match_expressions :
    spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list;
      (** match_expressions *)
  match_labels : (string * string prop) list;  (** match_labels *)
}

type spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution = {
  label_selector :
    spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list;
      (** label_selector *)
  namespaces : string prop list;  (** namespaces *)
  topology_key : string prop;  (** topology_key *)
}

type spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector = {
  match_expressions :
    spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list;
      (** match_expressions *)
  match_labels : (string * string prop) list;  (** match_labels *)
}

type spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term = {
  label_selector :
    spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list;
      (** label_selector *)
  namespaces : string prop list;  (** namespaces *)
  topology_key : string prop;  (** topology_key *)
}

type spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution = {
  pod_affinity_term :
    spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list;
      (** pod_affinity_term *)
  weight : float prop;  (** weight *)
}

type spec__affinity__pod_anti_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    list;
      (** preferred_during_scheduling_ignored_during_execution *)
  required_during_scheduling_ignored_during_execution :
    spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    list;
      (** required_during_scheduling_ignored_during_execution *)
}

type spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector = {
  match_expressions :
    spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list;
      (** match_expressions *)
  match_labels : (string * string prop) list;  (** match_labels *)
}

type spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution = {
  label_selector :
    spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list;
      (** label_selector *)
  namespaces : string prop list;  (** namespaces *)
  topology_key : string prop;  (** topology_key *)
}

type spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector = {
  match_expressions :
    spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list;
      (** match_expressions *)
  match_labels : (string * string prop) list;  (** match_labels *)
}

type spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term = {
  label_selector :
    spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list;
      (** label_selector *)
  namespaces : string prop list;  (** namespaces *)
  topology_key : string prop;  (** topology_key *)
}

type spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution = {
  pod_affinity_term :
    spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list;
      (** pod_affinity_term *)
  weight : float prop;  (** weight *)
}

type spec__affinity__pod_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    list;
      (** preferred_during_scheduling_ignored_during_execution *)
  required_during_scheduling_ignored_during_execution :
    spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    list;
      (** required_during_scheduling_ignored_during_execution *)
}

type spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term = {
  match_expressions :
    spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
    list;
      (** match_expressions *)
  match_fields :
    spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
    list;
      (** match_fields *)
}

type spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution = {
  node_selector_term :
    spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    list;
      (** node_selector_term *)
}

type spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference = {
  match_expressions :
    spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
    list;
      (** match_expressions *)
  match_fields :
    spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
    list;
      (** match_fields *)
}

type spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution = {
  preference :
    spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    list;
      (** preference *)
  weight : float prop;  (** weight *)
}

type spec__affinity__node_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    list;
      (** preferred_during_scheduling_ignored_during_execution *)
  required_during_scheduling_ignored_during_execution :
    spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    list;
      (** required_during_scheduling_ignored_during_execution *)
}

type spec__affinity = {
  node_affinity : spec__affinity__node_affinity list;
      (** node_affinity *)
  pod_affinity : spec__affinity__pod_affinity list;
      (** pod_affinity *)
  pod_anti_affinity : spec__affinity__pod_anti_affinity list;
      (** pod_anti_affinity *)
}

type spec = {
  active_deadline_seconds : float prop;
      (** active_deadline_seconds *)
  affinity : spec__affinity list;  (** affinity *)
  automount_service_account_token : bool prop;
      (** automount_service_account_token *)
  container : spec__container list;  (** container *)
  dns_config : spec__dns_config list;  (** dns_config *)
  dns_policy : string prop;  (** dns_policy *)
  enable_service_links : bool prop;  (** enable_service_links *)
  host_aliases : spec__host_aliases list;  (** host_aliases *)
  host_ipc : bool prop;  (** host_ipc *)
  host_network : bool prop;  (** host_network *)
  host_pid : bool prop;  (** host_pid *)
  hostname : string prop;  (** hostname *)
  image_pull_secrets : spec__image_pull_secrets list;
      (** image_pull_secrets *)
  init_container : spec__init_container list;  (** init_container *)
  node_name : string prop;  (** node_name *)
  node_selector : (string * string prop) list;  (** node_selector *)
  os : spec__os list;  (** os *)
  priority_class_name : string prop;  (** priority_class_name *)
  readiness_gate : spec__readiness_gate list;  (** readiness_gate *)
  restart_policy : string prop;  (** restart_policy *)
  runtime_class_name : string prop;  (** runtime_class_name *)
  scheduler_name : string prop;  (** scheduler_name *)
  security_context : spec__security_context list;
      (** security_context *)
  service_account_name : string prop;  (** service_account_name *)
  share_process_namespace : bool prop;
      (** share_process_namespace *)
  subdomain : string prop;  (** subdomain *)
  termination_grace_period_seconds : float prop;
      (** termination_grace_period_seconds *)
  toleration : spec__toleration list;  (** toleration *)
  topology_spread_constraint : spec__topology_spread_constraint list;
      (** topology_spread_constraint *)
  volume : spec__volume list;  (** volume *)
}

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type kubernetes_pod_v1

val kubernetes_pod_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_pod_v1

val yojson_of_kubernetes_pod_v1 : kubernetes_pod_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  spec : spec list prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
