(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_data_share_authorization

val aws_redshift_data_share_authorization :
  ?allow_writes:bool prop ->
  consumer_identifier:string prop ->
  data_share_arn:string prop ->
  string ->
  unit
