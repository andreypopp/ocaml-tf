(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_hsm_client_certificate

val aws_redshift_hsm_client_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  hsm_client_certificate_identifier:string prop ->
  string ->
  unit
