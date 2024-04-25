(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint_details

val endpoint_details :
  ?address_allocation_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?vpc_endpoint_id:string prop ->
  ?vpc_id:string prop ->
  unit ->
  endpoint_details

type protocol_details

val protocol_details :
  ?as2_transports:string prop list ->
  ?passive_ip:string prop ->
  ?set_stat_option:string prop ->
  ?tls_session_resumption_mode:string prop ->
  unit ->
  protocol_details

type workflow_details__on_partial_upload

val workflow_details__on_partial_upload :
  execution_role:string prop ->
  workflow_id:string prop ->
  unit ->
  workflow_details__on_partial_upload

type workflow_details__on_upload

val workflow_details__on_upload :
  execution_role:string prop ->
  workflow_id:string prop ->
  unit ->
  workflow_details__on_upload

type workflow_details

val workflow_details :
  ?on_partial_upload:workflow_details__on_partial_upload list ->
  ?on_upload:workflow_details__on_upload list ->
  unit ->
  workflow_details

type aws_transfer_server

val aws_transfer_server :
  ?certificate:string prop ->
  ?directory_id:string prop ->
  ?domain:string prop ->
  ?endpoint_type:string prop ->
  ?force_destroy:bool prop ->
  ?function_:string prop ->
  ?host_key:string prop ->
  ?id:string prop ->
  ?identity_provider_type:string prop ->
  ?invocation_role:string prop ->
  ?logging_role:string prop ->
  ?post_authentication_login_banner:string prop ->
  ?pre_authentication_login_banner:string prop ->
  ?protocols:string prop list ->
  ?security_policy_name:string prop ->
  ?structured_log_destinations:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?url:string prop ->
  ?endpoint_details:endpoint_details list ->
  ?protocol_details:protocol_details list ->
  ?workflow_details:workflow_details list ->
  unit ->
  aws_transfer_server

val yojson_of_aws_transfer_server : aws_transfer_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  certificate : string prop;
  directory_id : string prop;
  domain : string prop;
  endpoint : string prop;
  endpoint_type : string prop;
  force_destroy : bool prop;
  function_ : string prop;
  host_key : string prop;
  host_key_fingerprint : string prop;
  id : string prop;
  identity_provider_type : string prop;
  invocation_role : string prop;
  logging_role : string prop;
  post_authentication_login_banner : string prop;
  pre_authentication_login_banner : string prop;
  protocols : string list prop;
  security_policy_name : string prop;
  structured_log_destinations : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate:string prop ->
  ?directory_id:string prop ->
  ?domain:string prop ->
  ?endpoint_type:string prop ->
  ?force_destroy:bool prop ->
  ?function_:string prop ->
  ?host_key:string prop ->
  ?id:string prop ->
  ?identity_provider_type:string prop ->
  ?invocation_role:string prop ->
  ?logging_role:string prop ->
  ?post_authentication_login_banner:string prop ->
  ?pre_authentication_login_banner:string prop ->
  ?protocols:string prop list ->
  ?security_policy_name:string prop ->
  ?structured_log_destinations:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?url:string prop ->
  ?endpoint_details:endpoint_details list ->
  ?protocol_details:protocol_details list ->
  ?workflow_details:workflow_details list ->
  string ->
  t

val make :
  ?certificate:string prop ->
  ?directory_id:string prop ->
  ?domain:string prop ->
  ?endpoint_type:string prop ->
  ?force_destroy:bool prop ->
  ?function_:string prop ->
  ?host_key:string prop ->
  ?id:string prop ->
  ?identity_provider_type:string prop ->
  ?invocation_role:string prop ->
  ?logging_role:string prop ->
  ?post_authentication_login_banner:string prop ->
  ?pre_authentication_login_banner:string prop ->
  ?protocols:string prop list ->
  ?security_policy_name:string prop ->
  ?structured_log_destinations:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?url:string prop ->
  ?endpoint_details:endpoint_details list ->
  ?protocol_details:protocol_details list ->
  ?workflow_details:workflow_details list ->
  string ->
  t Tf_core.resource
