(** Get a behaviors by search criteria. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type behaviors = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  settings : (string * string prop) list;  (** settings *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}

type okta_behaviors

val okta_behaviors :
  ?id:string prop -> ?q:string prop -> unit -> okta_behaviors

val yojson_of_okta_behaviors : okta_behaviors -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  behaviors : behaviors list prop;
  id : string prop;
  q : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?q:string prop ->
  string ->
  t

val make :
  ?id:string prop -> ?q:string prop -> string -> t Tf_core.resource
