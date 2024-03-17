(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoveryreadiness_cell__timeouts
type aws_route53recoveryreadiness_cell

type t = private {
  arn : string prop;
  cell_name : string prop;
  cells : string list prop;
  id : string prop;
  parent_readiness_scopes : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_route53recoveryreadiness_cell :
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_route53recoveryreadiness_cell__timeouts ->
  cell_name:string prop ->
  string ->
  t
