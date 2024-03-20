(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__service_discovery__dns = {
  hostname : string prop;  (** hostname *)
  ip_preference : string prop;  (** ip_preference *)
  response_type : string prop;  (** response_type *)
}

type spec__service_discovery__aws_cloud_map = {
  attributes : (string * string prop) list;  (** attributes *)
  namespace_name : string prop;  (** namespace_name *)
  service_name : string prop;  (** service_name *)
}

type spec__service_discovery = {
  aws_cloud_map : spec__service_discovery__aws_cloud_map list;
      (** aws_cloud_map *)
  dns : spec__service_discovery__dns list;  (** dns *)
}

type spec__logging__access_log__file__format__json = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type spec__logging__access_log__file__format = {
  json : spec__logging__access_log__file__format__json list;
      (** json *)
  text : string prop;  (** text *)
}

type spec__logging__access_log__file = {
  format : spec__logging__access_log__file__format list;
      (** format *)
  path : string prop;  (** path *)
}

type spec__logging__access_log = {
  file : spec__logging__access_log__file list;  (** file *)
}

type spec__logging = {
  access_log : spec__logging__access_log list;  (** access_log *)
}

type spec__listener__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}

type spec__listener__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}

type spec__listener__tls__validation__trust = {
  file : spec__listener__tls__validation__trust__file list;
      (** file *)
  sds : spec__listener__tls__validation__trust__sds list;  (** sds *)
}

type spec__listener__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}

type spec__listener__tls__validation__subject_alternative_names = {
  match_ :
    spec__listener__tls__validation__subject_alternative_names__match
    list;
      [@key "match"]
      (** match *)
}

type spec__listener__tls__validation = {
  subject_alternative_names :
    spec__listener__tls__validation__subject_alternative_names list;
      (** subject_alternative_names *)
  trust : spec__listener__tls__validation__trust list;  (** trust *)
}

type spec__listener__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}

type spec__listener__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}

type spec__listener__tls__certificate__acm = {
  certificate_arn : string prop;  (** certificate_arn *)
}

type spec__listener__tls__certificate = {
  acm : spec__listener__tls__certificate__acm list;  (** acm *)
  file : spec__listener__tls__certificate__file list;  (** file *)
  sds : spec__listener__tls__certificate__sds list;  (** sds *)
}

type spec__listener__tls = {
  certificate : spec__listener__tls__certificate list;
      (** certificate *)
  mode : string prop;  (** mode *)
  validation : spec__listener__tls__validation list;
      (** validation *)
}

type spec__listener__timeout__tcp__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__timeout__tcp = {
  idle : spec__listener__timeout__tcp__idle list;  (** idle *)
}

type spec__listener__timeout__http2__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__timeout__http2__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__timeout__http2 = {
  idle : spec__listener__timeout__http2__idle list;  (** idle *)
  per_request : spec__listener__timeout__http2__per_request list;
      (** per_request *)
}

type spec__listener__timeout__http__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__timeout__http__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__timeout__http = {
  idle : spec__listener__timeout__http__idle list;  (** idle *)
  per_request : spec__listener__timeout__http__per_request list;
      (** per_request *)
}

type spec__listener__timeout__grpc__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__timeout__grpc__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__timeout__grpc = {
  idle : spec__listener__timeout__grpc__idle list;  (** idle *)
  per_request : spec__listener__timeout__grpc__per_request list;
      (** per_request *)
}

type spec__listener__timeout = {
  grpc : spec__listener__timeout__grpc list;  (** grpc *)
  http : spec__listener__timeout__http list;  (** http *)
  http2 : spec__listener__timeout__http2 list;  (** http2 *)
  tcp : spec__listener__timeout__tcp list;  (** tcp *)
}

type spec__listener__port_mapping = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}

type spec__listener__outlier_detection__interval = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__outlier_detection__base_ejection_duration = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__outlier_detection = {
  base_ejection_duration :
    spec__listener__outlier_detection__base_ejection_duration list;
      (** base_ejection_duration *)
  interval : spec__listener__outlier_detection__interval list;
      (** interval *)
  max_ejection_percent : float prop;  (** max_ejection_percent *)
  max_server_errors : float prop;  (** max_server_errors *)
}

type spec__listener__health_check = {
  healthy_threshold : float prop;  (** healthy_threshold *)
  interval_millis : float prop;  (** interval_millis *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  timeout_millis : float prop;  (** timeout_millis *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}

type spec__listener__connection_pool__tcp = {
  max_connections : float prop;  (** max_connections *)
}

type spec__listener__connection_pool__http2 = {
  max_requests : float prop;  (** max_requests *)
}

type spec__listener__connection_pool__http = {
  max_connections : float prop;  (** max_connections *)
  max_pending_requests : float prop;  (** max_pending_requests *)
}

type spec__listener__connection_pool__grpc = {
  max_requests : float prop;  (** max_requests *)
}

type spec__listener__connection_pool = {
  grpc : spec__listener__connection_pool__grpc list;  (** grpc *)
  http : spec__listener__connection_pool__http list;  (** http *)
  http2 : spec__listener__connection_pool__http2 list;  (** http2 *)
  tcp : spec__listener__connection_pool__tcp list;  (** tcp *)
}

type spec__listener = {
  connection_pool : spec__listener__connection_pool list;
      (** connection_pool *)
  health_check : spec__listener__health_check list;
      (** health_check *)
  outlier_detection : spec__listener__outlier_detection list;
      (** outlier_detection *)
  port_mapping : spec__listener__port_mapping list;
      (** port_mapping *)
  timeout : spec__listener__timeout list;  (** timeout *)
  tls : spec__listener__tls list;  (** tls *)
}

type spec__backend_defaults__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}

type spec__backend_defaults__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}

type spec__backend_defaults__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
      (** certificate_authority_arns *)
}

type spec__backend_defaults__client_policy__tls__validation__trust = {
  acm :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    list;
      (** acm *)
  file :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    list;
      (** file *)
  sds :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    list;
      (** sds *)
}

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list;
      [@key "match"]
      (** match *)
}

type spec__backend_defaults__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list;
      (** subject_alternative_names *)
  trust :
    spec__backend_defaults__client_policy__tls__validation__trust
    list;
      (** trust *)
}

type spec__backend_defaults__client_policy__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}

type spec__backend_defaults__client_policy__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}

type spec__backend_defaults__client_policy__tls__certificate = {
  file :
    spec__backend_defaults__client_policy__tls__certificate__file
    list;
      (** file *)
  sds :
    spec__backend_defaults__client_policy__tls__certificate__sds list;
      (** sds *)
}

type spec__backend_defaults__client_policy__tls = {
  certificate :
    spec__backend_defaults__client_policy__tls__certificate list;
      (** certificate *)
  enforce : bool prop;  (** enforce *)
  ports : float prop list;  (** ports *)
  validation :
    spec__backend_defaults__client_policy__tls__validation list;
      (** validation *)
}

type spec__backend_defaults__client_policy = {
  tls : spec__backend_defaults__client_policy__tls list;  (** tls *)
}

type spec__backend_defaults = {
  client_policy : spec__backend_defaults__client_policy list;
      (** client_policy *)
}

type spec__backend__virtual_service__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}

type spec__backend__virtual_service__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}

type spec__backend__virtual_service__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
      (** certificate_authority_arns *)
}

type spec__backend__virtual_service__client_policy__tls__validation__trust = {
  acm :
    spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    list;
      (** acm *)
  file :
    spec__backend__virtual_service__client_policy__tls__validation__trust__file
    list;
      (** file *)
  sds :
    spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    list;
      (** sds *)
}

type spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}

type spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    list;
      [@key "match"]
      (** match *)
}

type spec__backend__virtual_service__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    list;
      (** subject_alternative_names *)
  trust :
    spec__backend__virtual_service__client_policy__tls__validation__trust
    list;
      (** trust *)
}

type spec__backend__virtual_service__client_policy__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}

type spec__backend__virtual_service__client_policy__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}

type spec__backend__virtual_service__client_policy__tls__certificate = {
  file :
    spec__backend__virtual_service__client_policy__tls__certificate__file
    list;
      (** file *)
  sds :
    spec__backend__virtual_service__client_policy__tls__certificate__sds
    list;
      (** sds *)
}

type spec__backend__virtual_service__client_policy__tls = {
  certificate :
    spec__backend__virtual_service__client_policy__tls__certificate
    list;
      (** certificate *)
  enforce : bool prop;  (** enforce *)
  ports : float prop list;  (** ports *)
  validation :
    spec__backend__virtual_service__client_policy__tls__validation
    list;
      (** validation *)
}

type spec__backend__virtual_service__client_policy = {
  tls : spec__backend__virtual_service__client_policy__tls list;
      (** tls *)
}

type spec__backend__virtual_service = {
  client_policy : spec__backend__virtual_service__client_policy list;
      (** client_policy *)
  virtual_service_name : string prop;  (** virtual_service_name *)
}

type spec__backend = {
  virtual_service : spec__backend__virtual_service list;
      (** virtual_service *)
}

type spec = {
  backend : spec__backend list;  (** backend *)
  backend_defaults : spec__backend_defaults list;
      (** backend_defaults *)
  listener : spec__listener list;  (** listener *)
  logging : spec__logging list;  (** logging *)
  service_discovery : spec__service_discovery list;
      (** service_discovery *)
}

type aws_appmesh_virtual_node

val aws_appmesh_virtual_node :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  unit ->
  aws_appmesh_virtual_node

val yojson_of_aws_appmesh_virtual_node :
  aws_appmesh_virtual_node -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  spec : spec list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
