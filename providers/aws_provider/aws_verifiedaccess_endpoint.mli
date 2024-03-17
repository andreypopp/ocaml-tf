(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_endpoint__load_balancer_options
type aws_verifiedaccess_endpoint__network_interface_options
type aws_verifiedaccess_endpoint__sse_specification
type aws_verifiedaccess_endpoint__timeouts
type aws_verifiedaccess_endpoint

val aws_verifiedaccess_endpoint :
  ?description:string ->
  ?policy_document:string ->
  ?security_group_ids:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_verifiedaccess_endpoint__timeouts ->
  application_domain:string ->
  attachment_type:string ->
  domain_certificate_arn:string ->
  endpoint_domain_prefix:string ->
  endpoint_type:string ->
  verified_access_group_id:string ->
  load_balancer_options:
    aws_verifiedaccess_endpoint__load_balancer_options list ->
  network_interface_options:
    aws_verifiedaccess_endpoint__network_interface_options list ->
  sse_specification:
    aws_verifiedaccess_endpoint__sse_specification list ->
  string ->
  unit
