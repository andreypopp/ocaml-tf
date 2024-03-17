(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_hsm_configuration

type t = private {
  arn : string prop;
  description : string prop;
  hsm_configuration_identifier : string prop;
  hsm_ip_address : string prop;
  hsm_partition_name : string prop;
  hsm_partition_password : string prop;
  hsm_server_public_certificate : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_redshift_hsm_configuration :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  description:string prop ->
  hsm_configuration_identifier:string prop ->
  hsm_ip_address:string prop ->
  hsm_partition_name:string prop ->
  hsm_partition_password:string prop ->
  hsm_server_public_certificate:string prop ->
  string ->
  t
