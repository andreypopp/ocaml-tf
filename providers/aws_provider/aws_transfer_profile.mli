(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_profile

type t = private {
  arn : string prop;
  as2_id : string prop;
  certificate_ids : string list prop;
  id : string prop;
  profile_id : string prop;
  profile_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_transfer_profile :
  ?certificate_ids:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  as2_id:string prop ->
  profile_type:string prop ->
  string ->
  t
