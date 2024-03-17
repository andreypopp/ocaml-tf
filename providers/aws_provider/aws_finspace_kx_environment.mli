(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_environment__custom_dns_configuration
type aws_finspace_kx_environment__timeouts

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__port_range

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration

type aws_finspace_kx_environment__transit_gateway_configuration
type aws_finspace_kx_environment

val aws_finspace_kx_environment :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_finspace_kx_environment__timeouts ->
  kms_key_id:string prop ->
  name:string prop ->
  custom_dns_configuration:
    aws_finspace_kx_environment__custom_dns_configuration list ->
  transit_gateway_configuration:
    aws_finspace_kx_environment__transit_gateway_configuration list ->
  string ->
  unit
