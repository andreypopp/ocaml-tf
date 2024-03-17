(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_role_alias

type t = private {
  alias : string prop;
  arn : string prop;
  credential_duration : float prop;
  id : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_iot_role_alias :
  ?credential_duration:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  alias:string prop ->
  role_arn:string prop ->
  string ->
  t
