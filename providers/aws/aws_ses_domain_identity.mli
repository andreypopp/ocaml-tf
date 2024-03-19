(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ses_domain_identity

val aws_ses_domain_identity :
  ?id:string prop ->
  domain:string prop ->
  unit ->
  aws_ses_domain_identity

val yojson_of_aws_ses_domain_identity :
  aws_ses_domain_identity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  domain : string prop;
  id : string prop;
  verification_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  domain:string prop ->
  string ->
  t
