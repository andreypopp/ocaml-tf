(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_data_share_consumer_association

val aws_redshift_data_share_consumer_association :
  ?allow_writes:bool ->
  ?associate_entire_account:bool ->
  ?consumer_arn:string ->
  ?consumer_region:string ->
  data_share_arn:string ->
  string ->
  unit
