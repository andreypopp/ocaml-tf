(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_server__endpoint_details
type aws_transfer_server__protocol_details
type aws_transfer_server__workflow_details__on_partial_upload
type aws_transfer_server__workflow_details__on_upload
type aws_transfer_server__workflow_details
type aws_transfer_server

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
  endpoint_details:aws_transfer_server__endpoint_details list ->
  protocol_details:aws_transfer_server__protocol_details list ->
  workflow_details:aws_transfer_server__workflow_details list ->
  string ->
  t
