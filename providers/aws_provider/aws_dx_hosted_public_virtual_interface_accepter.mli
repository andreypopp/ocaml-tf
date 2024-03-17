(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_hosted_public_virtual_interface_accepter__timeouts
type aws_dx_hosted_public_virtual_interface_accepter

val aws_dx_hosted_public_virtual_interface_accepter :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_dx_hosted_public_virtual_interface_accepter__timeouts ->
  virtual_interface_id:string prop ->
  string ->
  unit
