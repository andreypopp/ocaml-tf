(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_shares

val data_shares : unit -> data_shares

type aws_redshift_producer_data_shares

val aws_redshift_producer_data_shares :
  ?status:string prop ->
  ?data_shares:data_shares list ->
  producer_arn:string prop ->
  unit ->
  aws_redshift_producer_data_shares

val yojson_of_aws_redshift_producer_data_shares :
  aws_redshift_producer_data_shares -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  producer_arn : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?status:string prop ->
  ?data_shares:data_shares list ->
  producer_arn:string prop ->
  string ->
  t

val make :
  ?status:string prop ->
  ?data_shares:data_shares list ->
  producer_arn:string prop ->
  string ->
  t Tf_core.resource
