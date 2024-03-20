(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_data_share_consumer_association

val aws_redshift_data_share_consumer_association :
  ?allow_writes:bool prop ->
  ?associate_entire_account:bool prop ->
  ?consumer_arn:string prop ->
  ?consumer_region:string prop ->
  data_share_arn:string prop ->
  unit ->
  aws_redshift_data_share_consumer_association

val yojson_of_aws_redshift_data_share_consumer_association :
  aws_redshift_data_share_consumer_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_writes : bool prop;
  associate_entire_account : bool prop;
  consumer_arn : string prop;
  consumer_region : string prop;
  data_share_arn : string prop;
  id : string prop;
  managed_by : string prop;
  producer_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_writes:bool prop ->
  ?associate_entire_account:bool prop ->
  ?consumer_arn:string prop ->
  ?consumer_region:string prop ->
  data_share_arn:string prop ->
  string ->
  t

val make :
  ?allow_writes:bool prop ->
  ?associate_entire_account:bool prop ->
  ?consumer_arn:string prop ->
  ?consumer_region:string prop ->
  data_share_arn:string prop ->
  string ->
  t Tf_core.resource
