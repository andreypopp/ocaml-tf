(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_secretsmanager_random_password

val aws_secretsmanager_random_password :
  ?exclude_characters:string prop ->
  ?exclude_lowercase:bool prop ->
  ?exclude_numbers:bool prop ->
  ?exclude_punctuation:bool prop ->
  ?exclude_uppercase:bool prop ->
  ?id:string prop ->
  ?include_space:bool prop ->
  ?password_length:float prop ->
  ?require_each_included_type:bool prop ->
  unit ->
  aws_secretsmanager_random_password

val yojson_of_aws_secretsmanager_random_password :
  aws_secretsmanager_random_password -> json

(** RESOURCE REGISTRATION *)

type t = private {
  exclude_characters : string prop;
  exclude_lowercase : bool prop;
  exclude_numbers : bool prop;
  exclude_punctuation : bool prop;
  exclude_uppercase : bool prop;
  id : string prop;
  include_space : bool prop;
  password_length : float prop;
  random_password : string prop;
  require_each_included_type : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?exclude_characters:string prop ->
  ?exclude_lowercase:bool prop ->
  ?exclude_numbers:bool prop ->
  ?exclude_punctuation:bool prop ->
  ?exclude_uppercase:bool prop ->
  ?id:string prop ->
  ?include_space:bool prop ->
  ?password_length:float prop ->
  ?require_each_included_type:bool prop ->
  string ->
  t

val make :
  ?exclude_characters:string prop ->
  ?exclude_lowercase:bool prop ->
  ?exclude_numbers:bool prop ->
  ?exclude_punctuation:bool prop ->
  ?exclude_uppercase:bool prop ->
  ?id:string prop ->
  ?include_space:bool prop ->
  ?password_length:float prop ->
  ?require_each_included_type:bool prop ->
  string ->
  t Tf_core.resource
