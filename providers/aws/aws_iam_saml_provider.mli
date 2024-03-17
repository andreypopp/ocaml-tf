(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_saml_provider

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  saml_metadata_document : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  valid_until : string prop;
}

val aws_iam_saml_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  saml_metadata_document:string prop ->
  string ->
  t
