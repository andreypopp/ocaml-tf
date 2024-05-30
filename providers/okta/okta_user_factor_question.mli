(** Creates security question factor for a user. This resource allows you to create and configure security question factor for a user. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_user_factor_question

val okta_user_factor_question :
  ?id:string prop ->
  answer:string prop ->
  key:string prop ->
  user_id:string prop ->
  unit ->
  okta_user_factor_question

val yojson_of_okta_user_factor_question :
  okta_user_factor_question -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  answer : string prop;
  id : string prop;
  key : string prop;
  status : string prop;
  text : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  answer:string prop ->
  key:string prop ->
  user_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  answer:string prop ->
  key:string prop ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
