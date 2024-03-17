(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate__file = {
  certificate_chain : string;  (** certificate_chain *)
  private_key : string;  (** private_key *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate__file *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate__sds = {
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate__sds *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate = {
  file :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate__file
    list;
  sds :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string list;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string list;
      (** certificate_authority_arns *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__acm *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__file = {
  certificate_chain : string;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__file *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__sds = {
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__sds *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust = {
  acm :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    list;
  file :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__file
    list;
  sds :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation = {
  subject_alternative_names :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation__trust
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls = {
  enforce : bool option; [@option]  (** enforce *)
  ports : float list option; [@option]  (** ports *)
  certificate :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__certificate
    list;
  validation :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls__validation
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls *)

type aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy = {
  tls :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy__tls
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy *)

type aws_appmesh_virtual_node__spec__backend__virtual_service = {
  virtual_service_name : string;  (** virtual_service_name *)
  client_policy :
    aws_appmesh_virtual_node__spec__backend__virtual_service__client_policy
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend__virtual_service *)

type aws_appmesh_virtual_node__spec__backend = {
  virtual_service :
    aws_appmesh_virtual_node__spec__backend__virtual_service list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate__file = {
  certificate_chain : string;  (** certificate_chain *)
  private_key : string;  (** private_key *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate__file *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate__sds = {
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate__sds *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate = {
  file :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate__file
    list;
  sds :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string list;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string list;
      (** certificate_authority_arns *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__acm *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__file = {
  certificate_chain : string;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__file *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__sds = {
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__sds *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust = {
  acm :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__acm
    list;
  file :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__file
    list;
  sds :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation = {
  subject_alternative_names :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation__trust
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls = {
  enforce : bool option; [@option]  (** enforce *)
  ports : float list option; [@option]  (** ports *)
  certificate :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__certificate
    list;
  validation :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls__validation
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls *)

type aws_appmesh_virtual_node__spec__backend_defaults__client_policy = {
  tls :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy__tls
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults__client_policy *)

type aws_appmesh_virtual_node__spec__backend_defaults = {
  client_policy :
    aws_appmesh_virtual_node__spec__backend_defaults__client_policy
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__backend_defaults *)

type aws_appmesh_virtual_node__spec__listener__connection_pool__grpc = {
  max_requests : float;  (** max_requests *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__connection_pool__grpc *)

type aws_appmesh_virtual_node__spec__listener__connection_pool__http = {
  max_connections : float;  (** max_connections *)
  max_pending_requests : float option; [@option]
      (** max_pending_requests *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__connection_pool__http *)

type aws_appmesh_virtual_node__spec__listener__connection_pool__http2 = {
  max_requests : float;  (** max_requests *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__connection_pool__http2 *)

type aws_appmesh_virtual_node__spec__listener__connection_pool__tcp = {
  max_connections : float;  (** max_connections *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__connection_pool__tcp *)

type aws_appmesh_virtual_node__spec__listener__connection_pool = {
  grpc :
    aws_appmesh_virtual_node__spec__listener__connection_pool__grpc
    list;
  http :
    aws_appmesh_virtual_node__spec__listener__connection_pool__http
    list;
  http2 :
    aws_appmesh_virtual_node__spec__listener__connection_pool__http2
    list;
  tcp :
    aws_appmesh_virtual_node__spec__listener__connection_pool__tcp
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__connection_pool *)

type aws_appmesh_virtual_node__spec__listener__health_check = {
  healthy_threshold : float;  (** healthy_threshold *)
  interval_millis : float;  (** interval_millis *)
  path : string option; [@option]  (** path *)
  port : float option; [@option]  (** port *)
  protocol : string;  (** protocol *)
  timeout_millis : float;  (** timeout_millis *)
  unhealthy_threshold : float;  (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__health_check *)

type aws_appmesh_virtual_node__spec__listener__outlier_detection__base_ejection_duration = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__outlier_detection__base_ejection_duration *)

type aws_appmesh_virtual_node__spec__listener__outlier_detection__interval = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__outlier_detection__interval *)

type aws_appmesh_virtual_node__spec__listener__outlier_detection = {
  max_ejection_percent : float;  (** max_ejection_percent *)
  max_server_errors : float;  (** max_server_errors *)
  base_ejection_duration :
    aws_appmesh_virtual_node__spec__listener__outlier_detection__base_ejection_duration
    list;
  interval :
    aws_appmesh_virtual_node__spec__listener__outlier_detection__interval
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__outlier_detection *)

type aws_appmesh_virtual_node__spec__listener__port_mapping = {
  port : float;  (** port *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__port_mapping *)

type aws_appmesh_virtual_node__spec__listener__timeout__grpc__idle = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__grpc__idle *)

type aws_appmesh_virtual_node__spec__listener__timeout__grpc__per_request = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__grpc__per_request *)

type aws_appmesh_virtual_node__spec__listener__timeout__grpc = {
  idle :
    aws_appmesh_virtual_node__spec__listener__timeout__grpc__idle
    list;
  per_request :
    aws_appmesh_virtual_node__spec__listener__timeout__grpc__per_request
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__grpc *)

type aws_appmesh_virtual_node__spec__listener__timeout__http__idle = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__http__idle *)

type aws_appmesh_virtual_node__spec__listener__timeout__http__per_request = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__http__per_request *)

type aws_appmesh_virtual_node__spec__listener__timeout__http = {
  idle :
    aws_appmesh_virtual_node__spec__listener__timeout__http__idle
    list;
  per_request :
    aws_appmesh_virtual_node__spec__listener__timeout__http__per_request
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__http *)

type aws_appmesh_virtual_node__spec__listener__timeout__http2__idle = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__http2__idle *)

type aws_appmesh_virtual_node__spec__listener__timeout__http2__per_request = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__http2__per_request *)

type aws_appmesh_virtual_node__spec__listener__timeout__http2 = {
  idle :
    aws_appmesh_virtual_node__spec__listener__timeout__http2__idle
    list;
  per_request :
    aws_appmesh_virtual_node__spec__listener__timeout__http2__per_request
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__http2 *)

type aws_appmesh_virtual_node__spec__listener__timeout__tcp__idle = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__tcp__idle *)

type aws_appmesh_virtual_node__spec__listener__timeout__tcp = {
  idle :
    aws_appmesh_virtual_node__spec__listener__timeout__tcp__idle list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout__tcp *)

type aws_appmesh_virtual_node__spec__listener__timeout = {
  grpc :
    aws_appmesh_virtual_node__spec__listener__timeout__grpc list;
  http :
    aws_appmesh_virtual_node__spec__listener__timeout__http list;
  http2 :
    aws_appmesh_virtual_node__spec__listener__timeout__http2 list;
  tcp : aws_appmesh_virtual_node__spec__listener__timeout__tcp list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__timeout *)

type aws_appmesh_virtual_node__spec__listener__tls__certificate__acm = {
  certificate_arn : string;  (** certificate_arn *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__certificate__acm *)

type aws_appmesh_virtual_node__spec__listener__tls__certificate__file = {
  certificate_chain : string;  (** certificate_chain *)
  private_key : string;  (** private_key *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__certificate__file *)

type aws_appmesh_virtual_node__spec__listener__tls__certificate__sds = {
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__certificate__sds *)

type aws_appmesh_virtual_node__spec__listener__tls__certificate = {
  acm :
    aws_appmesh_virtual_node__spec__listener__tls__certificate__acm
    list;
  file :
    aws_appmesh_virtual_node__spec__listener__tls__certificate__file
    list;
  sds :
    aws_appmesh_virtual_node__spec__listener__tls__certificate__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__certificate *)

type aws_appmesh_virtual_node__spec__listener__tls__validation__subject_alternative_names__match = {
  exact : string list;  (** exact *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__validation__subject_alternative_names__match *)

type aws_appmesh_virtual_node__spec__listener__tls__validation__subject_alternative_names = {
  match_ :
    aws_appmesh_virtual_node__spec__listener__tls__validation__subject_alternative_names__match
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__validation__subject_alternative_names *)

type aws_appmesh_virtual_node__spec__listener__tls__validation__trust__file = {
  certificate_chain : string;  (** certificate_chain *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__validation__trust__file *)

type aws_appmesh_virtual_node__spec__listener__tls__validation__trust__sds = {
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__validation__trust__sds *)

type aws_appmesh_virtual_node__spec__listener__tls__validation__trust = {
  file :
    aws_appmesh_virtual_node__spec__listener__tls__validation__trust__file
    list;
  sds :
    aws_appmesh_virtual_node__spec__listener__tls__validation__trust__sds
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__validation__trust *)

type aws_appmesh_virtual_node__spec__listener__tls__validation = {
  subject_alternative_names :
    aws_appmesh_virtual_node__spec__listener__tls__validation__subject_alternative_names
    list;
  trust :
    aws_appmesh_virtual_node__spec__listener__tls__validation__trust
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls__validation *)

type aws_appmesh_virtual_node__spec__listener__tls = {
  mode : string;  (** mode *)
  certificate :
    aws_appmesh_virtual_node__spec__listener__tls__certificate list;
  validation :
    aws_appmesh_virtual_node__spec__listener__tls__validation list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener__tls *)

type aws_appmesh_virtual_node__spec__listener = {
  connection_pool :
    aws_appmesh_virtual_node__spec__listener__connection_pool list;
  health_check :
    aws_appmesh_virtual_node__spec__listener__health_check list;
  outlier_detection :
    aws_appmesh_virtual_node__spec__listener__outlier_detection list;
  port_mapping :
    aws_appmesh_virtual_node__spec__listener__port_mapping list;
  timeout : aws_appmesh_virtual_node__spec__listener__timeout list;
  tls : aws_appmesh_virtual_node__spec__listener__tls list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__listener *)

type aws_appmesh_virtual_node__spec__logging__access_log__file__format__json = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__logging__access_log__file__format__json *)

type aws_appmesh_virtual_node__spec__logging__access_log__file__format = {
  text : string option; [@option]  (** text *)
  json :
    aws_appmesh_virtual_node__spec__logging__access_log__file__format__json
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__logging__access_log__file__format *)

type aws_appmesh_virtual_node__spec__logging__access_log__file = {
  path : string;  (** path *)
  format :
    aws_appmesh_virtual_node__spec__logging__access_log__file__format
    list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__logging__access_log__file *)

type aws_appmesh_virtual_node__spec__logging__access_log = {
  file :
    aws_appmesh_virtual_node__spec__logging__access_log__file list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__logging__access_log *)

type aws_appmesh_virtual_node__spec__logging = {
  access_log :
    aws_appmesh_virtual_node__spec__logging__access_log list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__logging *)

type aws_appmesh_virtual_node__spec__service_discovery__aws_cloud_map = {
  attributes : (string * string) list option; [@option]
      (** attributes *)
  namespace_name : string;  (** namespace_name *)
  service_name : string;  (** service_name *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__service_discovery__aws_cloud_map *)

type aws_appmesh_virtual_node__spec__service_discovery__dns = {
  hostname : string;  (** hostname *)
  ip_preference : string option; [@option]  (** ip_preference *)
  response_type : string option; [@option]  (** response_type *)
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__service_discovery__dns *)

type aws_appmesh_virtual_node__spec__service_discovery = {
  aws_cloud_map :
    aws_appmesh_virtual_node__spec__service_discovery__aws_cloud_map
    list;
  dns : aws_appmesh_virtual_node__spec__service_discovery__dns list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec__service_discovery *)

type aws_appmesh_virtual_node__spec = {
  backend : aws_appmesh_virtual_node__spec__backend list;
  backend_defaults :
    aws_appmesh_virtual_node__spec__backend_defaults list;
  listener : aws_appmesh_virtual_node__spec__listener list;
  logging : aws_appmesh_virtual_node__spec__logging list;
  service_discovery :
    aws_appmesh_virtual_node__spec__service_discovery list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node__spec *)

type aws_appmesh_virtual_node = {
  id : string option; [@option]  (** id *)
  mesh_name : string;  (** mesh_name *)
  mesh_owner : string option; [@option]  (** mesh_owner *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  spec : aws_appmesh_virtual_node__spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_virtual_node *)

let aws_appmesh_virtual_node ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec __resource_id =
  let __resource_type = "aws_appmesh_virtual_node" in
  let __resource =
    { id; mesh_name; mesh_owner; name; tags; tags_all; spec }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appmesh_virtual_node __resource);
  ()
