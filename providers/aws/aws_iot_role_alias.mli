(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_role_alias

val aws_iot_role_alias :
  ?credential_duration:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  alias:string prop ->
  role_arn:string prop ->
  unit ->
  aws_iot_role_alias

val yojson_of_aws_iot_role_alias : aws_iot_role_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias : string prop;
  arn : string prop;
  credential_duration : float prop;
  id : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?credential_duration:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  alias:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?credential_duration:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  alias:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
