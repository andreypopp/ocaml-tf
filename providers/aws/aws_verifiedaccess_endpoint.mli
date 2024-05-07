(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type load_balancer_options

val load_balancer_options :
  ?load_balancer_arn:string prop ->
  ?port:float prop ->
  ?protocol:string prop ->
  ?subnet_ids:string prop list ->
  unit ->
  load_balancer_options

type network_interface_options

val network_interface_options :
  ?network_interface_id:string prop ->
  ?port:float prop ->
  ?protocol:string prop ->
  unit ->
  network_interface_options

type sse_specification

val sse_specification :
  ?customer_managed_key_enabled:bool prop ->
  ?kms_key_arn:string prop ->
  unit ->
  sse_specification

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_verifiedaccess_endpoint

val aws_verifiedaccess_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?load_balancer_options:load_balancer_options list ->
  ?network_interface_options:network_interface_options list ->
  ?sse_specification:sse_specification list ->
  ?timeouts:timeouts ->
  application_domain:string prop ->
  attachment_type:string prop ->
  domain_certificate_arn:string prop ->
  endpoint_domain_prefix:string prop ->
  endpoint_type:string prop ->
  verified_access_group_id:string prop ->
  unit ->
  aws_verifiedaccess_endpoint

val yojson_of_aws_verifiedaccess_endpoint :
  aws_verifiedaccess_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?load_balancer_options:load_balancer_options list ->
  ?network_interface_options:network_interface_options list ->
  ?sse_specification:sse_specification list ->
  ?timeouts:timeouts ->
  application_domain:string prop ->
  attachment_type:string prop ->
  domain_certificate_arn:string prop ->
  endpoint_domain_prefix:string prop ->
  endpoint_type:string prop ->
  verified_access_group_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?load_balancer_options:load_balancer_options list ->
  ?network_interface_options:network_interface_options list ->
  ?sse_specification:sse_specification list ->
  ?timeouts:timeouts ->
  application_domain:string prop ->
  attachment_type:string prop ->
  domain_certificate_arn:string prop ->
  endpoint_domain_prefix:string prop ->
  endpoint_type:string prop ->
  verified_access_group_id:string prop ->
  string ->
  t Tf_core.resource
