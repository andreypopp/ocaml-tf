(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__backend__virtual_service__client_policy__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__certificate__file *)

type spec__backend__virtual_service__client_policy__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__certificate__sds *)

type spec__backend__virtual_service__client_policy__tls__certificate = {
  file :
    spec__backend__virtual_service__client_policy__tls__certificate__file
    list;
  sds :
    spec__backend__virtual_service__client_policy__tls__certificate__sds
    list;
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__certificate *)

type spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match *)

type spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names *)

type spec__backend__virtual_service__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
      (** certificate_authority_arns *)
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__validation__trust__acm *)

type spec__backend__virtual_service__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__validation__trust__file *)

type spec__backend__virtual_service__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__validation__trust__sds *)

type spec__backend__virtual_service__client_policy__tls__validation__trust = {
  acm :
    spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    list;
  file :
    spec__backend__virtual_service__client_policy__tls__validation__trust__file
    list;
  sds :
    spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__validation__trust *)

type spec__backend__virtual_service__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    spec__backend__virtual_service__client_policy__tls__validation__trust
    list;
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls__validation *)

type spec__backend__virtual_service__client_policy__tls = {
  enforce : bool prop option; [@option]  (** enforce *)
  ports : float prop list option; [@option]  (** ports *)
  certificate :
    spec__backend__virtual_service__client_policy__tls__certificate
    list;
  validation :
    spec__backend__virtual_service__client_policy__tls__validation
    list;
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy__tls *)

type spec__backend__virtual_service__client_policy = {
  tls : spec__backend__virtual_service__client_policy__tls list;
}
[@@deriving yojson_of]
(** spec__backend__virtual_service__client_policy *)

type spec__backend__virtual_service = {
  virtual_service_name : string prop;  (** virtual_service_name *)
  client_policy : spec__backend__virtual_service__client_policy list;
}
[@@deriving yojson_of]
(** spec__backend__virtual_service *)

type spec__backend = {
  virtual_service : spec__backend__virtual_service list;
}
[@@deriving yojson_of]
(** spec__backend *)

type spec__backend_defaults__client_policy__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__certificate__file *)

type spec__backend_defaults__client_policy__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__certificate__sds *)

type spec__backend_defaults__client_policy__tls__certificate = {
  file :
    spec__backend_defaults__client_policy__tls__certificate__file
    list;
  sds :
    spec__backend_defaults__client_policy__tls__certificate__sds list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__certificate *)

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match *)

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__subject_alternative_names *)

type spec__backend_defaults__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
      (** certificate_authority_arns *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__trust__acm *)

type spec__backend_defaults__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__trust__file *)

type spec__backend_defaults__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__trust__sds *)

type spec__backend_defaults__client_policy__tls__validation__trust = {
  acm :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    list;
  file :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    list;
  sds :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation__trust *)

type spec__backend_defaults__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    spec__backend_defaults__client_policy__tls__validation__trust
    list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls__validation *)

type spec__backend_defaults__client_policy__tls = {
  enforce : bool prop option; [@option]  (** enforce *)
  ports : float prop list option; [@option]  (** ports *)
  certificate :
    spec__backend_defaults__client_policy__tls__certificate list;
  validation :
    spec__backend_defaults__client_policy__tls__validation list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy__tls *)

type spec__backend_defaults__client_policy = {
  tls : spec__backend_defaults__client_policy__tls list;
}
[@@deriving yojson_of]
(** spec__backend_defaults__client_policy *)

type spec__backend_defaults = {
  client_policy : spec__backend_defaults__client_policy list;
}
[@@deriving yojson_of]
(** spec__backend_defaults *)

type spec__listener__connection_pool__grpc = {
  max_requests : float prop;  (** max_requests *)
}
[@@deriving yojson_of]
(** spec__listener__connection_pool__grpc *)

type spec__listener__connection_pool__http = {
  max_connections : float prop;  (** max_connections *)
  max_pending_requests : float prop option; [@option]
      (** max_pending_requests *)
}
[@@deriving yojson_of]
(** spec__listener__connection_pool__http *)

type spec__listener__connection_pool__http2 = {
  max_requests : float prop;  (** max_requests *)
}
[@@deriving yojson_of]
(** spec__listener__connection_pool__http2 *)

type spec__listener__connection_pool__tcp = {
  max_connections : float prop;  (** max_connections *)
}
[@@deriving yojson_of]
(** spec__listener__connection_pool__tcp *)

type spec__listener__connection_pool = {
  grpc : spec__listener__connection_pool__grpc list;
  http : spec__listener__connection_pool__http list;
  http2 : spec__listener__connection_pool__http2 list;
  tcp : spec__listener__connection_pool__tcp list;
}
[@@deriving yojson_of]
(** spec__listener__connection_pool *)

type spec__listener__health_check = {
  healthy_threshold : float prop;  (** healthy_threshold *)
  interval_millis : float prop;  (** interval_millis *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop;  (** protocol *)
  timeout_millis : float prop;  (** timeout_millis *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** spec__listener__health_check *)

type spec__listener__outlier_detection__base_ejection_duration = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__outlier_detection__base_ejection_duration *)

type spec__listener__outlier_detection__interval = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__outlier_detection__interval *)

type spec__listener__outlier_detection = {
  max_ejection_percent : float prop;  (** max_ejection_percent *)
  max_server_errors : float prop;  (** max_server_errors *)
  base_ejection_duration :
    spec__listener__outlier_detection__base_ejection_duration list;
  interval : spec__listener__outlier_detection__interval list;
}
[@@deriving yojson_of]
(** spec__listener__outlier_detection *)

type spec__listener__port_mapping = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** spec__listener__port_mapping *)

type spec__listener__timeout__grpc__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__timeout__grpc__idle *)

type spec__listener__timeout__grpc__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__timeout__grpc__per_request *)

type spec__listener__timeout__grpc = {
  idle : spec__listener__timeout__grpc__idle list;
  per_request : spec__listener__timeout__grpc__per_request list;
}
[@@deriving yojson_of]
(** spec__listener__timeout__grpc *)

type spec__listener__timeout__http__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__timeout__http__idle *)

type spec__listener__timeout__http__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__timeout__http__per_request *)

type spec__listener__timeout__http = {
  idle : spec__listener__timeout__http__idle list;
  per_request : spec__listener__timeout__http__per_request list;
}
[@@deriving yojson_of]
(** spec__listener__timeout__http *)

type spec__listener__timeout__http2__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__timeout__http2__idle *)

type spec__listener__timeout__http2__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__timeout__http2__per_request *)

type spec__listener__timeout__http2 = {
  idle : spec__listener__timeout__http2__idle list;
  per_request : spec__listener__timeout__http2__per_request list;
}
[@@deriving yojson_of]
(** spec__listener__timeout__http2 *)

type spec__listener__timeout__tcp__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__listener__timeout__tcp__idle *)

type spec__listener__timeout__tcp = {
  idle : spec__listener__timeout__tcp__idle list;
}
[@@deriving yojson_of]
(** spec__listener__timeout__tcp *)

type spec__listener__timeout = {
  grpc : spec__listener__timeout__grpc list;
  http : spec__listener__timeout__http list;
  http2 : spec__listener__timeout__http2 list;
  tcp : spec__listener__timeout__tcp list;
}
[@@deriving yojson_of]
(** spec__listener__timeout *)

type spec__listener__tls__certificate__acm = {
  certificate_arn : string prop;  (** certificate_arn *)
}
[@@deriving yojson_of]
(** spec__listener__tls__certificate__acm *)

type spec__listener__tls__certificate__file = {
  certificate_chain : string prop;  (** certificate_chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** spec__listener__tls__certificate__file *)

type spec__listener__tls__certificate__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__listener__tls__certificate__sds *)

type spec__listener__tls__certificate = {
  acm : spec__listener__tls__certificate__acm list;
  file : spec__listener__tls__certificate__file list;
  sds : spec__listener__tls__certificate__sds list;
}
[@@deriving yojson_of]
(** spec__listener__tls__certificate *)

type spec__listener__tls__validation__subject_alternative_names__match = {
  exact : string prop list;  (** exact *)
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__subject_alternative_names__match *)

type spec__listener__tls__validation__subject_alternative_names = {
  match_ :
    spec__listener__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__subject_alternative_names *)

type spec__listener__tls__validation__trust__file = {
  certificate_chain : string prop;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__trust__file *)

type spec__listener__tls__validation__trust__sds = {
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__trust__sds *)

type spec__listener__tls__validation__trust = {
  file : spec__listener__tls__validation__trust__file list;
  sds : spec__listener__tls__validation__trust__sds list;
}
[@@deriving yojson_of]
(** spec__listener__tls__validation__trust *)

type spec__listener__tls__validation = {
  subject_alternative_names :
    spec__listener__tls__validation__subject_alternative_names list;
  trust : spec__listener__tls__validation__trust list;
}
[@@deriving yojson_of]
(** spec__listener__tls__validation *)

type spec__listener__tls = {
  mode : string prop;  (** mode *)
  certificate : spec__listener__tls__certificate list;
  validation : spec__listener__tls__validation list;
}
[@@deriving yojson_of]
(** spec__listener__tls *)

type spec__listener = {
  connection_pool : spec__listener__connection_pool list;
  health_check : spec__listener__health_check list;
  outlier_detection : spec__listener__outlier_detection list;
  port_mapping : spec__listener__port_mapping list;
  timeout : spec__listener__timeout list;
  tls : spec__listener__tls list;
}
[@@deriving yojson_of]
(** spec__listener *)

type spec__logging__access_log__file__format__json = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__logging__access_log__file__format__json *)

type spec__logging__access_log__file__format = {
  text : string prop option; [@option]  (** text *)
  json : spec__logging__access_log__file__format__json list;
}
[@@deriving yojson_of]
(** spec__logging__access_log__file__format *)

type spec__logging__access_log__file = {
  path : string prop;  (** path *)
  format : spec__logging__access_log__file__format list;
}
[@@deriving yojson_of]
(** spec__logging__access_log__file *)

type spec__logging__access_log = {
  file : spec__logging__access_log__file list;
}
[@@deriving yojson_of]
(** spec__logging__access_log *)

type spec__logging = { access_log : spec__logging__access_log list }
[@@deriving yojson_of]
(** spec__logging *)

type spec__service_discovery__aws_cloud_map = {
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
  namespace_name : string prop;  (** namespace_name *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** spec__service_discovery__aws_cloud_map *)

type spec__service_discovery__dns = {
  hostname : string prop;  (** hostname *)
  ip_preference : string prop option; [@option]  (** ip_preference *)
  response_type : string prop option; [@option]  (** response_type *)
}
[@@deriving yojson_of]
(** spec__service_discovery__dns *)

type spec__service_discovery = {
  aws_cloud_map : spec__service_discovery__aws_cloud_map list;
  dns : spec__service_discovery__dns list;
}
[@@deriving yojson_of]
(** spec__service_discovery *)

type spec = {
  backend : spec__backend list;
  backend_defaults : spec__backend_defaults list;
  listener : spec__listener list;
  logging : spec__logging list;
  service_discovery : spec__service_discovery list;
}
[@@deriving yojson_of]
(** spec *)

type aws_appmesh_virtual_node = {
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  spec : spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node *)

let spec__backend__virtual_service__client_policy__tls__certificate__file
    ~certificate_chain ~private_key () :
    spec__backend__virtual_service__client_policy__tls__certificate__file
    =
  { certificate_chain; private_key }

let spec__backend__virtual_service__client_policy__tls__certificate__sds
    ~secret_name () :
    spec__backend__virtual_service__client_policy__tls__certificate__sds
    =
  { secret_name }

let spec__backend__virtual_service__client_policy__tls__certificate
    ~file ~sds () :
    spec__backend__virtual_service__client_policy__tls__certificate =
  { file; sds }

let spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    ~exact () :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    =
  { exact }

let spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    ~match_ () :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    =
  { match_ }

let spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    ~certificate_authority_arns () :
    spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    =
  { certificate_authority_arns }

let spec__backend__virtual_service__client_policy__tls__validation__trust__file
    ~certificate_chain () :
    spec__backend__virtual_service__client_policy__tls__validation__trust__file
    =
  { certificate_chain }

let spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    ~secret_name () :
    spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    =
  { secret_name }

let spec__backend__virtual_service__client_policy__tls__validation__trust
    ~acm ~file ~sds () :
    spec__backend__virtual_service__client_policy__tls__validation__trust
    =
  { acm; file; sds }

let spec__backend__virtual_service__client_policy__tls__validation
    ~subject_alternative_names ~trust () :
    spec__backend__virtual_service__client_policy__tls__validation =
  { subject_alternative_names; trust }

let spec__backend__virtual_service__client_policy__tls ?enforce
    ?ports ~certificate ~validation () :
    spec__backend__virtual_service__client_policy__tls =
  { enforce; ports; certificate; validation }

let spec__backend__virtual_service__client_policy ~tls () :
    spec__backend__virtual_service__client_policy =
  { tls }

let spec__backend__virtual_service ~virtual_service_name
    ~client_policy () : spec__backend__virtual_service =
  { virtual_service_name; client_policy }

let spec__backend ~virtual_service () : spec__backend =
  { virtual_service }

let spec__backend_defaults__client_policy__tls__certificate__file
    ~certificate_chain ~private_key () :
    spec__backend_defaults__client_policy__tls__certificate__file =
  { certificate_chain; private_key }

let spec__backend_defaults__client_policy__tls__certificate__sds
    ~secret_name () :
    spec__backend_defaults__client_policy__tls__certificate__sds =
  { secret_name }

let spec__backend_defaults__client_policy__tls__certificate ~file
    ~sds () : spec__backend_defaults__client_policy__tls__certificate
    =
  { file; sds }

let spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    ~exact () :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    =
  { exact }

let spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    ~match_ () :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    =
  { match_ }

let spec__backend_defaults__client_policy__tls__validation__trust__acm
    ~certificate_authority_arns () :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    =
  { certificate_authority_arns }

let spec__backend_defaults__client_policy__tls__validation__trust__file
    ~certificate_chain () :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    =
  { certificate_chain }

let spec__backend_defaults__client_policy__tls__validation__trust__sds
    ~secret_name () :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    =
  { secret_name }

let spec__backend_defaults__client_policy__tls__validation__trust
    ~acm ~file ~sds () :
    spec__backend_defaults__client_policy__tls__validation__trust =
  { acm; file; sds }

let spec__backend_defaults__client_policy__tls__validation
    ~subject_alternative_names ~trust () :
    spec__backend_defaults__client_policy__tls__validation =
  { subject_alternative_names; trust }

let spec__backend_defaults__client_policy__tls ?enforce ?ports
    ~certificate ~validation () :
    spec__backend_defaults__client_policy__tls =
  { enforce; ports; certificate; validation }

let spec__backend_defaults__client_policy ~tls () :
    spec__backend_defaults__client_policy =
  { tls }

let spec__backend_defaults ~client_policy () : spec__backend_defaults
    =
  { client_policy }

let spec__listener__connection_pool__grpc ~max_requests () :
    spec__listener__connection_pool__grpc =
  { max_requests }

let spec__listener__connection_pool__http ?max_pending_requests
    ~max_connections () : spec__listener__connection_pool__http =
  { max_connections; max_pending_requests }

let spec__listener__connection_pool__http2 ~max_requests () :
    spec__listener__connection_pool__http2 =
  { max_requests }

let spec__listener__connection_pool__tcp ~max_connections () :
    spec__listener__connection_pool__tcp =
  { max_connections }

let spec__listener__connection_pool ~grpc ~http ~http2 ~tcp () :
    spec__listener__connection_pool =
  { grpc; http; http2; tcp }

let spec__listener__health_check ?path ?port ~healthy_threshold
    ~interval_millis ~protocol ~timeout_millis ~unhealthy_threshold
    () : spec__listener__health_check =
  {
    healthy_threshold;
    interval_millis;
    path;
    port;
    protocol;
    timeout_millis;
    unhealthy_threshold;
  }

let spec__listener__outlier_detection__base_ejection_duration ~unit
    ~value () :
    spec__listener__outlier_detection__base_ejection_duration =
  { unit; value }

let spec__listener__outlier_detection__interval ~unit ~value () :
    spec__listener__outlier_detection__interval =
  { unit; value }

let spec__listener__outlier_detection ~max_ejection_percent
    ~max_server_errors ~base_ejection_duration ~interval () :
    spec__listener__outlier_detection =
  {
    max_ejection_percent;
    max_server_errors;
    base_ejection_duration;
    interval;
  }

let spec__listener__port_mapping ~port ~protocol () :
    spec__listener__port_mapping =
  { port; protocol }

let spec__listener__timeout__grpc__idle ~unit ~value () :
    spec__listener__timeout__grpc__idle =
  { unit; value }

let spec__listener__timeout__grpc__per_request ~unit ~value () :
    spec__listener__timeout__grpc__per_request =
  { unit; value }

let spec__listener__timeout__grpc ~idle ~per_request () :
    spec__listener__timeout__grpc =
  { idle; per_request }

let spec__listener__timeout__http__idle ~unit ~value () :
    spec__listener__timeout__http__idle =
  { unit; value }

let spec__listener__timeout__http__per_request ~unit ~value () :
    spec__listener__timeout__http__per_request =
  { unit; value }

let spec__listener__timeout__http ~idle ~per_request () :
    spec__listener__timeout__http =
  { idle; per_request }

let spec__listener__timeout__http2__idle ~unit ~value () :
    spec__listener__timeout__http2__idle =
  { unit; value }

let spec__listener__timeout__http2__per_request ~unit ~value () :
    spec__listener__timeout__http2__per_request =
  { unit; value }

let spec__listener__timeout__http2 ~idle ~per_request () :
    spec__listener__timeout__http2 =
  { idle; per_request }

let spec__listener__timeout__tcp__idle ~unit ~value () :
    spec__listener__timeout__tcp__idle =
  { unit; value }

let spec__listener__timeout__tcp ~idle () :
    spec__listener__timeout__tcp =
  { idle }

let spec__listener__timeout ~grpc ~http ~http2 ~tcp () :
    spec__listener__timeout =
  { grpc; http; http2; tcp }

let spec__listener__tls__certificate__acm ~certificate_arn () :
    spec__listener__tls__certificate__acm =
  { certificate_arn }

let spec__listener__tls__certificate__file ~certificate_chain
    ~private_key () : spec__listener__tls__certificate__file =
  { certificate_chain; private_key }

let spec__listener__tls__certificate__sds ~secret_name () :
    spec__listener__tls__certificate__sds =
  { secret_name }

let spec__listener__tls__certificate ~acm ~file ~sds () :
    spec__listener__tls__certificate =
  { acm; file; sds }

let spec__listener__tls__validation__subject_alternative_names__match
    ~exact () :
    spec__listener__tls__validation__subject_alternative_names__match
    =
  { exact }

let spec__listener__tls__validation__subject_alternative_names
    ~match_ () :
    spec__listener__tls__validation__subject_alternative_names =
  { match_ }

let spec__listener__tls__validation__trust__file ~certificate_chain
    () : spec__listener__tls__validation__trust__file =
  { certificate_chain }

let spec__listener__tls__validation__trust__sds ~secret_name () :
    spec__listener__tls__validation__trust__sds =
  { secret_name }

let spec__listener__tls__validation__trust ~file ~sds () :
    spec__listener__tls__validation__trust =
  { file; sds }

let spec__listener__tls__validation ~subject_alternative_names ~trust
    () : spec__listener__tls__validation =
  { subject_alternative_names; trust }

let spec__listener__tls ~mode ~certificate ~validation () :
    spec__listener__tls =
  { mode; certificate; validation }

let spec__listener ~connection_pool ~health_check ~outlier_detection
    ~port_mapping ~timeout ~tls () : spec__listener =
  {
    connection_pool;
    health_check;
    outlier_detection;
    port_mapping;
    timeout;
    tls;
  }

let spec__logging__access_log__file__format__json ~key ~value () :
    spec__logging__access_log__file__format__json =
  { key; value }

let spec__logging__access_log__file__format ?text ~json () :
    spec__logging__access_log__file__format =
  { text; json }

let spec__logging__access_log__file ~path ~format () :
    spec__logging__access_log__file =
  { path; format }

let spec__logging__access_log ~file () : spec__logging__access_log =
  { file }

let spec__logging ~access_log () : spec__logging = { access_log }

let spec__service_discovery__aws_cloud_map ?attributes
    ~namespace_name ~service_name () :
    spec__service_discovery__aws_cloud_map =
  { attributes; namespace_name; service_name }

let spec__service_discovery__dns ?ip_preference ?response_type
    ~hostname () : spec__service_discovery__dns =
  { hostname; ip_preference; response_type }

let spec__service_discovery ~aws_cloud_map ~dns () :
    spec__service_discovery =
  { aws_cloud_map; dns }

let spec ~backend ~backend_defaults ~listener ~logging
    ~service_discovery () : spec =
  { backend; backend_defaults; listener; logging; service_discovery }

let aws_appmesh_virtual_node ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec () : aws_appmesh_virtual_node =
  { id; mesh_name; mesh_owner; name; tags; tags_all; spec }

type t = {
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name ~spec __id
    =
  let __type = "aws_appmesh_virtual_node" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       mesh_name = Prop.computed __type __id "mesh_name";
       mesh_owner = Prop.computed __type __id "mesh_owner";
       name = Prop.computed __type __id "name";
       resource_owner = Prop.computed __type __id "resource_owner";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_virtual_node
        (aws_appmesh_virtual_node ?id ?mesh_owner ?tags ?tags_all
           ~mesh_name ~name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
