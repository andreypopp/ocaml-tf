(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type questions = {
  key : string prop;  (** key *)
  text : string prop;  (** text *)
}

type okta_user_security_questions

val okta_user_security_questions :
  ?id:string prop ->
  user_id:string prop ->
  unit ->
  okta_user_security_questions

val yojson_of_okta_user_security_questions :
  okta_user_security_questions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  questions : questions list prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  user_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
