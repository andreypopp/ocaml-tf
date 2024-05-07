(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_data_share_authorization

val aws_redshift_data_share_authorization :
  ?allow_writes:bool prop ->
  consumer_identifier:string prop ->
  data_share_arn:string prop ->
  unit ->
  aws_redshift_data_share_authorization

val yojson_of_aws_redshift_data_share_authorization :
  aws_redshift_data_share_authorization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_writes : bool prop;
  consumer_identifier : string prop;
  data_share_arn : string prop;
  id : string prop;
  managed_by : string prop;
  producer_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_writes:bool prop ->
  consumer_identifier:string prop ->
  data_share_arn:string prop ->
  string ->
  t

val make :
  ?allow_writes:bool prop ->
  consumer_identifier:string prop ->
  data_share_arn:string prop ->
  string ->
  t Tf_core.resource
