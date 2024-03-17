(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_member

type t = private {
  account_id : string prop;
  email : string prop;
  id : string prop;
  invite : bool prop;
  master_id : string prop;
  member_status : string prop;
}

val aws_securityhub_member :
  ?email:string prop ->
  ?id:string prop ->
  ?invite:bool prop ->
  account_id:string prop ->
  string ->
  t
