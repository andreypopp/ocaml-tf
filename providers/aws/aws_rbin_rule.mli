(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rbin_rule__lock_configuration__unlock_delay
type aws_rbin_rule__lock_configuration
type aws_rbin_rule__resource_tags
type aws_rbin_rule__retention_period
type aws_rbin_rule__timeouts
type aws_rbin_rule

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  lock_end_time : string prop;
  lock_state : string prop;
  resource_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_rbin_rule :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_rbin_rule__timeouts ->
  resource_type:string prop ->
  lock_configuration:aws_rbin_rule__lock_configuration list ->
  resource_tags:aws_rbin_rule__resource_tags list ->
  retention_period:aws_rbin_rule__retention_period list ->
  string ->
  t
