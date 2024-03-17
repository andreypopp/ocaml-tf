(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_target_group_attachment__target
type aws_vpclattice_target_group_attachment__timeouts
type aws_vpclattice_target_group_attachment

type t = private {
  id : string prop;
  target_group_identifier : string prop;
}

val aws_vpclattice_target_group_attachment :
  ?id:string prop ->
  ?timeouts:aws_vpclattice_target_group_attachment__timeouts ->
  target_group_identifier:string prop ->
  target:aws_vpclattice_target_group_attachment__target list ->
  string ->
  t
