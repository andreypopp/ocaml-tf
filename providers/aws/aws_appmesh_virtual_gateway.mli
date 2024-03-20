(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__backend_defaults__client_policy__tls__certificate__file

val spec__backend_defaults__client_policy__tls__certificate__file :
  certificate_chain:string prop ->
  private_key:string prop ->
  unit ->
  spec__backend_defaults__client_policy__tls__certificate__file

type spec__backend_defaults__client_policy__tls__certificate__sds

val spec__backend_defaults__client_policy__tls__certificate__sds :
  secret_name:string prop ->
  unit ->
  spec__backend_defaults__client_policy__tls__certificate__sds

type spec__backend_defaults__client_policy__tls__certificate

val spec__backend_defaults__client_policy__tls__certificate :
  file:
    spec__backend_defaults__client_policy__tls__certificate__file
    list ->
  sds:
    spec__backend_defaults__client_policy__tls__certificate__sds list ->
  unit ->
  spec__backend_defaults__client_policy__tls__certificate

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match

val spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match :
  exact:string prop list ->
  unit ->
  spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names

val spec__backend_defaults__client_policy__tls__validation__subject_alternative_names :
  match_:
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list ->
  unit ->
  spec__backend_defaults__client_policy__tls__validation__subject_alternative_names

type spec__backend_defaults__client_policy__tls__validation__trust__acm

val spec__backend_defaults__client_policy__tls__validation__trust__acm :
  certificate_authority_arns:string prop list ->
  unit ->
  spec__backend_defaults__client_policy__tls__validation__trust__acm

type spec__backend_defaults__client_policy__tls__validation__trust__file

val spec__backend_defaults__client_policy__tls__validation__trust__file :
  certificate_chain:string prop ->
  unit ->
  spec__backend_defaults__client_policy__tls__validation__trust__file

type spec__backend_defaults__client_policy__tls__validation__trust__sds

val spec__backend_defaults__client_policy__tls__validation__trust__sds :
  secret_name:string prop ->
  unit ->
  spec__backend_defaults__client_policy__tls__validation__trust__sds

type spec__backend_defaults__client_policy__tls__validation__trust

val spec__backend_defaults__client_policy__tls__validation__trust :
  acm:
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    list ->
  file:
    spec__backend_defaults__client_policy__tls__validation__trust__file
    list ->
  sds:
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    list ->
  unit ->
  spec__backend_defaults__client_policy__tls__validation__trust

type spec__backend_defaults__client_policy__tls__validation

val spec__backend_defaults__client_policy__tls__validation :
  subject_alternative_names:
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list ->
  trust:
    spec__backend_defaults__client_policy__tls__validation__trust
    list ->
  unit ->
  spec__backend_defaults__client_policy__tls__validation

type spec__backend_defaults__client_policy__tls

val spec__backend_defaults__client_policy__tls :
  ?enforce:bool prop ->
  ?ports:float prop list ->
  certificate:
    spec__backend_defaults__client_policy__tls__certificate list ->
  validation:
    spec__backend_defaults__client_policy__tls__validation list ->
  unit ->
  spec__backend_defaults__client_policy__tls

type spec__backend_defaults__client_policy

val spec__backend_defaults__client_policy :
  tls:spec__backend_defaults__client_policy__tls list ->
  unit ->
  spec__backend_defaults__client_policy

type spec__backend_defaults

val spec__backend_defaults :
  client_policy:spec__backend_defaults__client_policy list ->
  unit ->
  spec__backend_defaults

type spec__listener__connection_pool__grpc

val spec__listener__connection_pool__grpc :
  max_requests:float prop ->
  unit ->
  spec__listener__connection_pool__grpc

type spec__listener__connection_pool__http

val spec__listener__connection_pool__http :
  ?max_pending_requests:float prop ->
  max_connections:float prop ->
  unit ->
  spec__listener__connection_pool__http

type spec__listener__connection_pool__http2

val spec__listener__connection_pool__http2 :
  max_requests:float prop ->
  unit ->
  spec__listener__connection_pool__http2

type spec__listener__connection_pool

val spec__listener__connection_pool :
  grpc:spec__listener__connection_pool__grpc list ->
  http:spec__listener__connection_pool__http list ->
  http2:spec__listener__connection_pool__http2 list ->
  unit ->
  spec__listener__connection_pool

type spec__listener__health_check

val spec__listener__health_check :
  ?path:string prop ->
  ?port:float prop ->
  healthy_threshold:float prop ->
  interval_millis:float prop ->
  protocol:string prop ->
  timeout_millis:float prop ->
  unhealthy_threshold:float prop ->
  unit ->
  spec__listener__health_check

type spec__listener__port_mapping

val spec__listener__port_mapping :
  port:float prop ->
  protocol:string prop ->
  unit ->
  spec__listener__port_mapping

type spec__listener__tls__certificate__acm

val spec__listener__tls__certificate__acm :
  certificate_arn:string prop ->
  unit ->
  spec__listener__tls__certificate__acm

type spec__listener__tls__certificate__file

val spec__listener__tls__certificate__file :
  certificate_chain:string prop ->
  private_key:string prop ->
  unit ->
  spec__listener__tls__certificate__file

type spec__listener__tls__certificate__sds

val spec__listener__tls__certificate__sds :
  secret_name:string prop ->
  unit ->
  spec__listener__tls__certificate__sds

type spec__listener__tls__certificate

val spec__listener__tls__certificate :
  acm:spec__listener__tls__certificate__acm list ->
  file:spec__listener__tls__certificate__file list ->
  sds:spec__listener__tls__certificate__sds list ->
  unit ->
  spec__listener__tls__certificate

type spec__listener__tls__validation__subject_alternative_names__match

val spec__listener__tls__validation__subject_alternative_names__match :
  exact:string prop list ->
  unit ->
  spec__listener__tls__validation__subject_alternative_names__match

type spec__listener__tls__validation__subject_alternative_names

val spec__listener__tls__validation__subject_alternative_names :
  match_:
    spec__listener__tls__validation__subject_alternative_names__match
    list ->
  unit ->
  spec__listener__tls__validation__subject_alternative_names

type spec__listener__tls__validation__trust__file

val spec__listener__tls__validation__trust__file :
  certificate_chain:string prop ->
  unit ->
  spec__listener__tls__validation__trust__file

type spec__listener__tls__validation__trust__sds

val spec__listener__tls__validation__trust__sds :
  secret_name:string prop ->
  unit ->
  spec__listener__tls__validation__trust__sds

type spec__listener__tls__validation__trust

val spec__listener__tls__validation__trust :
  file:spec__listener__tls__validation__trust__file list ->
  sds:spec__listener__tls__validation__trust__sds list ->
  unit ->
  spec__listener__tls__validation__trust

type spec__listener__tls__validation

val spec__listener__tls__validation :
  subject_alternative_names:
    spec__listener__tls__validation__subject_alternative_names list ->
  trust:spec__listener__tls__validation__trust list ->
  unit ->
  spec__listener__tls__validation

type spec__listener__tls

val spec__listener__tls :
  mode:string prop ->
  certificate:spec__listener__tls__certificate list ->
  validation:spec__listener__tls__validation list ->
  unit ->
  spec__listener__tls

type spec__listener

val spec__listener :
  connection_pool:spec__listener__connection_pool list ->
  health_check:spec__listener__health_check list ->
  port_mapping:spec__listener__port_mapping list ->
  tls:spec__listener__tls list ->
  unit ->
  spec__listener

type spec__logging__access_log__file__format__json

val spec__logging__access_log__file__format__json :
  key:string prop ->
  value:string prop ->
  unit ->
  spec__logging__access_log__file__format__json

type spec__logging__access_log__file__format

val spec__logging__access_log__file__format :
  ?text:string prop ->
  json:spec__logging__access_log__file__format__json list ->
  unit ->
  spec__logging__access_log__file__format

type spec__logging__access_log__file

val spec__logging__access_log__file :
  path:string prop ->
  format:spec__logging__access_log__file__format list ->
  unit ->
  spec__logging__access_log__file

type spec__logging__access_log

val spec__logging__access_log :
  file:spec__logging__access_log__file list ->
  unit ->
  spec__logging__access_log

type spec__logging

val spec__logging :
  access_log:spec__logging__access_log list -> unit -> spec__logging

type spec

val spec :
  backend_defaults:spec__backend_defaults list ->
  listener:spec__listener list ->
  logging:spec__logging list ->
  unit ->
  spec

type aws_appmesh_virtual_gateway

val aws_appmesh_virtual_gateway :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  spec:spec list ->
  unit ->
  aws_appmesh_virtual_gateway

val yojson_of_aws_appmesh_virtual_gateway :
  aws_appmesh_virtual_gateway -> json

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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  spec:spec list ->
  string ->
  t Tf_core.resource
