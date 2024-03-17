(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_server__endpoint_details
type aws_transfer_server__protocol_details
type aws_transfer_server__workflow_details__on_partial_upload
type aws_transfer_server__workflow_details__on_upload
type aws_transfer_server__workflow_details
type aws_transfer_server

val aws_transfer_server :
  ?certificate:string ->
  ?directory_id:string ->
  ?domain:string ->
  ?endpoint_type:string ->
  ?force_destroy:bool ->
  ?function_:string ->
  ?host_key:string ->
  ?identity_provider_type:string ->
  ?invocation_role:string ->
  ?logging_role:string ->
  ?post_authentication_login_banner:string ->
  ?pre_authentication_login_banner:string ->
  ?security_policy_name:string ->
  ?structured_log_destinations:string list ->
  ?tags:(string * string) list ->
  ?url:string ->
  endpoint_details:aws_transfer_server__endpoint_details list ->
  protocol_details:aws_transfer_server__protocol_details list ->
  workflow_details:aws_transfer_server__workflow_details list ->
  string ->
  unit
