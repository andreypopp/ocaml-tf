(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_auth_policy__timeouts
type aws_vpclattice_auth_policy

val aws_vpclattice_auth_policy :
  ?id:string prop ->
  ?state:string prop ->
  ?timeouts:aws_vpclattice_auth_policy__timeouts ->
  policy:string prop ->
  resource_identifier:string prop ->
  string ->
  unit
