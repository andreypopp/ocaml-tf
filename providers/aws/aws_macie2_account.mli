(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_account

type t = private {
  created_at : string prop;
  finding_publishing_frequency : string prop;
  id : string prop;
  service_role : string prop;
  status : string prop;
  updated_at : string prop;
}

val aws_macie2_account :
  ?finding_publishing_frequency:string prop ->
  ?id:string prop ->
  ?status:string prop ->
  string ->
  t
