(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_target_group__config__health_check__matcher
type aws_vpclattice_target_group__config__health_check
type aws_vpclattice_target_group__config
type aws_vpclattice_target_group__timeouts
type aws_vpclattice_target_group

val aws_vpclattice_target_group :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_vpclattice_target_group__timeouts ->
  name:string ->
  type_:string ->
  config:aws_vpclattice_target_group__config list ->
  string ->
  unit
