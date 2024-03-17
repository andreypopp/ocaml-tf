(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_endpoint__load_balancer_options
type aws_verifiedaccess_endpoint__network_interface_options
type aws_verifiedaccess_endpoint__sse_specification
type aws_verifiedaccess_endpoint__timeouts
type aws_verifiedaccess_endpoint

val aws_verifiedaccess_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_verifiedaccess_endpoint__timeouts ->
  application_domain:string prop ->
  attachment_type:string prop ->
  domain_certificate_arn:string prop ->
  endpoint_domain_prefix:string prop ->
  endpoint_type:string prop ->
  verified_access_group_id:string prop ->
  load_balancer_options:
    aws_verifiedaccess_endpoint__load_balancer_options list ->
  network_interface_options:
    aws_verifiedaccess_endpoint__network_interface_options list ->
  sse_specification:
    aws_verifiedaccess_endpoint__sse_specification list ->
  string ->
  unit
