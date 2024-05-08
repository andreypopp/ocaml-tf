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
      [@default []] [@yojson_drop_default ( = )]
      (** aws_cloud_map *)
  dns : spec__service_discovery__dns list;
      [@default []] [@yojson_drop_default ( = )]
      (** dns *)
}

type spec__logging__access_log__file__format__json = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type spec__logging__access_log__file__format = {
  json : spec__logging__access_log__file__format__json list;
      [@default []] [@yojson_drop_default ( = )]
      (** json *)
  text : string prop;  (** text *)
}

type spec__logging__access_log__file = {
  format : spec__logging__access_log__file__format list;
      [@default []] [@yojson_drop_default ( = )]
      (** format *)
  path : string prop;  (** path *)
}

type spec__logging__access_log = {
  file : spec__logging__access_log__file list;
      [@default []] [@yojson_drop_default ( = )]
      (** file *)
}

type spec__logging = {
  access_log : spec__logging__access_log list;
      [@default []] [@yojson_drop_default ( = )]
      (** access_log *)
}

type spec__listener__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}

type spec__listener__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}

type spec__listener__tls__validation__trust = {
  file : spec__listener__tls__validation__trust__file list;
      [@default []] [@yojson_drop_default ( = )]
      (** file *)
  sds : spec__listener__tls__validation__trust__sds list;
      [@default []] [@yojson_drop_default ( = )]
      (** sds *)
}

type spec__listener__tls__validation__subject_alternative_names__match = {
  exact : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** exact *)
}

type spec__listener__tls__validation__subject_alternative_names = {
  match_ :
    spec__listener__tls__validation__subject_alternative_names__match
    list;
      [@default []] [@yojson_drop_default ( = )] [@key "match"]
      (** match *)
}

type spec__listener__tls__validation = {
  subject_alternative_names :
    spec__listener__tls__validation__subject_alternative_names list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject_alternative_names *)
  trust : spec__listener__tls__validation__trust list;
      [@default []] [@yojson_drop_default ( = )]
      (** trust *)
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
  acm : spec__listener__tls__certificate__acm list;
      [@default []] [@yojson_drop_default ( = )]
      (** acm *)
  file : spec__listener__tls__certificate__file list;
      [@default []] [@yojson_drop_default ( = )]
      (** file *)
  sds : spec__listener__tls__certificate__sds list;
      [@default []] [@yojson_drop_default ( = )]
      (** sds *)
}

type spec__listener__tls = {
  certificate : spec__listener__tls__certificate list;
      [@default []] [@yojson_drop_default ( = )]
      (** certificate *)
  mode : string prop;  (** mode *)
  validation : spec__listener__tls__validation list;
      [@default []] [@yojson_drop_default ( = )]
      (** validation *)
}

type spec__listener__timeout__tcp__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}

type spec__listener__timeout__tcp = {
  idle : spec__listener__timeout__tcp__idle list;
      [@default []] [@yojson_drop_default ( = )]
      (** idle *)
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
  idle : spec__listener__timeout__http2__idle list;
      [@default []] [@yojson_drop_default ( = )]
      (** idle *)
  per_request : spec__listener__timeout__http2__per_request list;
      [@default []] [@yojson_drop_default ( = )]
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
  idle : spec__listener__timeout__http__idle list;
      [@default []] [@yojson_drop_default ( = )]
      (** idle *)
  per_request : spec__listener__timeout__http__per_request list;
      [@default []] [@yojson_drop_default ( = )]
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
  idle : spec__listener__timeout__grpc__idle list;
      [@default []] [@yojson_drop_default ( = )]
      (** idle *)
  per_request : spec__listener__timeout__grpc__per_request list;
      [@default []] [@yojson_drop_default ( = )]
      (** per_request *)
}

type spec__listener__timeout = {
  grpc : spec__listener__timeout__grpc list;
      [@default []] [@yojson_drop_default ( = )]
      (** grpc *)
  http : spec__listener__timeout__http list;
      [@default []] [@yojson_drop_default ( = )]
      (** http *)
  http2 : spec__listener__timeout__http2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** http2 *)
  tcp : spec__listener__timeout__tcp list;
      [@default []] [@yojson_drop_default ( = )]
      (** tcp *)
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
      [@default []] [@yojson_drop_default ( = )]
      (** base_ejection_duration *)
  interval : spec__listener__outlier_detection__interval list;
      [@default []] [@yojson_drop_default ( = )]
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
  grpc : spec__listener__connection_pool__grpc list;
      [@default []] [@yojson_drop_default ( = )]
      (** grpc *)
  http : spec__listener__connection_pool__http list;
      [@default []] [@yojson_drop_default ( = )]
      (** http *)
  http2 : spec__listener__connection_pool__http2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** http2 *)
  tcp : spec__listener__connection_pool__tcp list;
      [@default []] [@yojson_drop_default ( = )]
      (** tcp *)
}

type spec__listener = {
  connection_pool : spec__listener__connection_pool list;
      [@default []] [@yojson_drop_default ( = )]
      (** connection_pool *)
  health_check : spec__listener__health_check list;
      [@default []] [@yojson_drop_default ( = )]
      (** health_check *)
  outlier_detection : spec__listener__outlier_detection list;
      [@default []] [@yojson_drop_default ( = )]
      (** outlier_detection *)
  port_mapping : spec__listener__port_mapping list;
      [@default []] [@yojson_drop_default ( = )]
      (** port_mapping *)
  timeout : spec__listener__timeout list;
      [@default []] [@yojson_drop_default ( = )]
      (** timeout *)
  tls : spec__listener__tls list;
      [@default []] [@yojson_drop_default ( = )]
      (** tls *)
}

type spec__backend_defaults__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}

type spec__backend_defaults__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}

type spec__backend_defaults__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** certificate_authority_arns *)
}

type spec__backend_defaults__client_policy__tls__validation__trust = {
  acm :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** acm *)
  file :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** file *)
  sds :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** sds *)
}

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** exact *)
}

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list;
      [@default []] [@yojson_drop_default ( = )] [@key "match"]
      (** match *)
}

type spec__backend_defaults__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject_alternative_names *)
  trust :
    spec__backend_defaults__client_policy__tls__validation__trust
    list;
      [@default []] [@yojson_drop_default ( = )]
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
      [@default []] [@yojson_drop_default ( = )]
      (** file *)
  sds :
    spec__backend_defaults__client_policy__tls__certificate__sds list;
      [@default []] [@yojson_drop_default ( = )]
      (** sds *)
}

type spec__backend_defaults__client_policy__tls = {
  certificate :
    spec__backend_defaults__client_policy__tls__certificate list;
      [@default []] [@yojson_drop_default ( = )]
      (** certificate *)
  enforce : bool prop;  (** enforce *)
  ports : float prop list; [@default []] [@yojson_drop_default ( = )]
      (** ports *)
  validation :
    spec__backend_defaults__client_policy__tls__validation list;
      [@default []] [@yojson_drop_default ( = )]
      (** validation *)
}

type spec__backend_defaults__client_policy = {
  tls : spec__backend_defaults__client_policy__tls list;
      [@default []] [@yojson_drop_default ( = )]
      (** tls *)
}

type spec__backend_defaults = {
  client_policy : spec__backend_defaults__client_policy list;
      [@default []] [@yojson_drop_default ( = )]
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
      [@default []] [@yojson_drop_default ( = )]
      (** certificate_authority_arns *)
}

type spec__backend__virtual_service__client_policy__tls__validation__trust = {
  acm :
    spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** acm *)
  file :
    spec__backend__virtual_service__client_policy__tls__validation__trust__file
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** file *)
  sds :
    spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** sds *)
}

type spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** exact *)
}

type spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    list;
      [@default []] [@yojson_drop_default ( = )] [@key "match"]
      (** match *)
}

type spec__backend__virtual_service__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject_alternative_names *)
  trust :
    spec__backend__virtual_service__client_policy__tls__validation__trust
    list;
      [@default []] [@yojson_drop_default ( = )]
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
      [@default []] [@yojson_drop_default ( = )]
      (** file *)
  sds :
    spec__backend__virtual_service__client_policy__tls__certificate__sds
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** sds *)
}

type spec__backend__virtual_service__client_policy__tls = {
  certificate :
    spec__backend__virtual_service__client_policy__tls__certificate
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** certificate *)
  enforce : bool prop;  (** enforce *)
  ports : float prop list; [@default []] [@yojson_drop_default ( = )]
      (** ports *)
  validation :
    spec__backend__virtual_service__client_policy__tls__validation
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** validation *)
}

type spec__backend__virtual_service__client_policy = {
  tls : spec__backend__virtual_service__client_policy__tls list;
      [@default []] [@yojson_drop_default ( = )]
      (** tls *)
}

type spec__backend__virtual_service = {
  client_policy : spec__backend__virtual_service__client_policy list;
      [@default []] [@yojson_drop_default ( = )]
      (** client_policy *)
  virtual_service_name : string prop;  (** virtual_service_name *)
}

type spec__backend = {
  virtual_service : spec__backend__virtual_service list;
      [@default []] [@yojson_drop_default ( = )]
      (** virtual_service *)
}

type spec = {
  backend : spec__backend list;
      [@default []] [@yojson_drop_default ( = )]
      (** backend *)
  backend_defaults : spec__backend_defaults list;
      [@default []] [@yojson_drop_default ( = )]
      (** backend_defaults *)
  listener : spec__listener list;
      [@default []] [@yojson_drop_default ( = )]
      (** listener *)
  logging : spec__logging list;
      [@default []] [@yojson_drop_default ( = )]
      (** logging *)
  service_discovery : spec__service_discovery list;
      [@default []] [@yojson_drop_default ( = )]
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
  tf_name : string;
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
