(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_detective_invitation_accepter
type t = private { graph_arn : string prop; id : string prop }

val aws_detective_invitation_accepter :
  ?id:string prop -> graph_arn:string prop -> string -> t
