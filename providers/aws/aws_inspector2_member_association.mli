(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_inspector2_member_association__timeouts
type aws_inspector2_member_association

type t = private {
  account_id : string prop;
  delegated_admin_account_id : string prop;
  id : string prop;
  relationship_status : string prop;
  updated_at : string prop;
}

val aws_inspector2_member_association :
  ?id:string prop ->
  ?timeouts:aws_inspector2_member_association__timeouts ->
  account_id:string prop ->
  string ->
  t
