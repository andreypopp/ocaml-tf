(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_hsm_configuration

val aws_redshift_hsm_configuration :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  hsm_configuration_identifier:string prop ->
  hsm_ip_address:string prop ->
  hsm_partition_name:string prop ->
  hsm_partition_password:string prop ->
  hsm_server_public_certificate:string prop ->
  unit ->
  aws_redshift_hsm_configuration

val yojson_of_aws_redshift_hsm_configuration :
  aws_redshift_hsm_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hsm_configuration_identifier : string prop;
  hsm_ip_address : string prop;
  hsm_partition_name : string prop;
  hsm_partition_password : string prop;
  hsm_server_public_certificate : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  hsm_configuration_identifier:string prop ->
  hsm_ip_address:string prop ->
  hsm_partition_name:string prop ->
  hsm_partition_password:string prop ->
  hsm_server_public_certificate:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  hsm_configuration_identifier:string prop ->
  hsm_ip_address:string prop ->
  hsm_partition_name:string prop ->
  hsm_partition_password:string prop ->
  hsm_server_public_certificate:string prop ->
  string ->
  t Tf_core.resource
