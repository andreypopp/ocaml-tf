(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_saml_provider

val aws_iam_saml_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  unit ->
  aws_iam_saml_provider

val yojson_of_aws_iam_saml_provider : aws_iam_saml_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  create_date : string prop;
  id : string prop;
  name : string prop;
  saml_metadata_document : string prop;
  tags : (string * string) list prop;
  valid_until : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
