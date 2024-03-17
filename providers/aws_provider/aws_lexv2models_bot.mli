(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lexv2models_bot__data_privacy
type aws_lexv2models_bot__members
type aws_lexv2models_bot__timeouts
type aws_lexv2models_bot

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  test_bot_alias_tags : (string * string) list prop;
  type_ : string prop;
}

val aws_lexv2models_bot :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?test_bot_alias_tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:aws_lexv2models_bot__timeouts ->
  idle_session_ttl_in_seconds:float prop ->
  name:string prop ->
  role_arn:string prop ->
  data_privacy:aws_lexv2models_bot__data_privacy list ->
  members:aws_lexv2models_bot__members list ->
  string ->
  t
