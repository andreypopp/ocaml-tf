(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_endpoint_authorization

val aws_redshift_endpoint_authorization :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?vpc_ids:string prop list ->
  account:string prop ->
  cluster_identifier:string prop ->
  string ->
  unit
