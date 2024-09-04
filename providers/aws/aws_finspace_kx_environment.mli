(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_dns_configuration

val custom_dns_configuration :
  custom_dns_server_ip:string prop ->
  custom_dns_server_name:string prop ->
  unit ->
  custom_dns_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code

val transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code :
  code:float prop ->
  type_:float prop ->
  unit ->
  transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code

type transit_gateway_configuration__attachment_network_acl_configuration__port_range

val transit_gateway_configuration__attachment_network_acl_configuration__port_range :
  from:float prop ->
  to_:float prop ->
  unit ->
  transit_gateway_configuration__attachment_network_acl_configuration__port_range

type transit_gateway_configuration__attachment_network_acl_configuration

val transit_gateway_configuration__attachment_network_acl_configuration :
  ?icmp_type_code:
    transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    list ->
  ?port_range:
    transit_gateway_configuration__attachment_network_acl_configuration__port_range
    list ->
  cidr_block:string prop ->
  protocol:string prop ->
  rule_action:string prop ->
  rule_number:float prop ->
  unit ->
  transit_gateway_configuration__attachment_network_acl_configuration

type transit_gateway_configuration

val transit_gateway_configuration :
  ?attachment_network_acl_configuration:
    transit_gateway_configuration__attachment_network_acl_configuration
    list ->
  routable_cidr_space:string prop ->
  transit_gateway_id:string prop ->
  unit ->
  transit_gateway_configuration

type aws_finspace_kx_environment

val aws_finspace_kx_environment :
  ?description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?custom_dns_configuration:custom_dns_configuration list ->
  ?timeouts:timeouts ->
  ?transit_gateway_configuration:transit_gateway_configuration list ->
  kms_key_id:string prop ->
  name:string prop ->
  unit ->
  aws_finspace_kx_environment

val yojson_of_aws_finspace_kx_environment :
  aws_finspace_kx_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zones : string list prop;
  created_timestamp : string prop;
  description : string prop;
  id : string prop;
  infrastructure_account_id : string prop;
  kms_key_id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?custom_dns_configuration:custom_dns_configuration list ->
  ?timeouts:timeouts ->
  ?transit_gateway_configuration:transit_gateway_configuration list ->
  kms_key_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?custom_dns_configuration:custom_dns_configuration list ->
  ?timeouts:timeouts ->
  ?transit_gateway_configuration:transit_gateway_configuration list ->
  kms_key_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
