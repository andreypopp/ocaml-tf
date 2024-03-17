(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_data_share_consumer_association

val aws_redshift_data_share_consumer_association :
  ?allow_writes:bool prop ->
  ?associate_entire_account:bool prop ->
  ?consumer_arn:string prop ->
  ?consumer_region:string prop ->
  data_share_arn:string prop ->
  string ->
  unit
