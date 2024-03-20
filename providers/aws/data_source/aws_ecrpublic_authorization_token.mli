(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecrpublic_authorization_token

val aws_ecrpublic_authorization_token :
  ?id:string prop -> unit -> aws_ecrpublic_authorization_token

val yojson_of_aws_ecrpublic_authorization_token :
  aws_ecrpublic_authorization_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorization_token : string prop;
  expires_at : string prop;
  id : string prop;
  password : string prop;
  user_name : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
