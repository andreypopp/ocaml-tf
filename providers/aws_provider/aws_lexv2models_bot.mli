(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lexv2models_bot__data_privacy
type aws_lexv2models_bot__members
type aws_lexv2models_bot__timeouts
type aws_lexv2models_bot

val aws_lexv2models_bot :
  ?description:string ->
  ?tags:(string * string) list ->
  ?test_bot_alias_tags:(string * string) list ->
  ?type_:string ->
  ?timeouts:aws_lexv2models_bot__timeouts ->
  idle_session_ttl_in_seconds:float ->
  name:string ->
  role_arn:string ->
  data_privacy:aws_lexv2models_bot__data_privacy list ->
  members:aws_lexv2models_bot__members list ->
  string ->
  unit
