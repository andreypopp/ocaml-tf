(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_target_group__config__health_check__matcher
type aws_vpclattice_target_group__config__health_check
type aws_vpclattice_target_group__config
type aws_vpclattice_target_group__timeouts
type aws_vpclattice_target_group

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_vpclattice_target_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpclattice_target_group__timeouts ->
  name:string prop ->
  type_:string prop ->
  config:aws_vpclattice_target_group__config list ->
  string ->
  t
