(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_hsm_configuration

val aws_redshift_hsm_configuration :
  ?tags:(string * string) list ->
  description:string ->
  hsm_configuration_identifier:string ->
  hsm_ip_address:string ->
  hsm_partition_name:string ->
  hsm_partition_password:string ->
  hsm_server_public_certificate:string ->
  string ->
  unit
