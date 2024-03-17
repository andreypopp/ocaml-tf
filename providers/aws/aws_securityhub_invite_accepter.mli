(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_invite_accepter

type t = private {
  id : string prop;
  invitation_id : string prop;
  master_id : string prop;
}

val aws_securityhub_invite_accepter :
  ?id:string prop -> master_id:string prop -> string -> t
