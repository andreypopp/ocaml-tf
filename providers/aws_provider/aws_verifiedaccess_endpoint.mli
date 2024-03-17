(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_endpoint__load_balancer_options
type aws_verifiedaccess_endpoint__network_interface_options
type aws_verifiedaccess_endpoint__sse_specification
type aws_verifiedaccess_endpoint__timeouts
type aws_verifiedaccess_endpoint

type t = private {
  application_domain : string prop;
  attachment_type : string prop;
  description : string prop;
  device_validation_domain : string prop;
  domain_certificate_arn : string prop;
  endpoint_domain : string prop;
  endpoint_domain_prefix : string prop;
  endpoint_type : string prop;
  id : string prop;
  policy_document : string prop;
  security_group_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verified_access_group_id : string prop;
  verified_access_instance_id : string prop;
}

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
  t
