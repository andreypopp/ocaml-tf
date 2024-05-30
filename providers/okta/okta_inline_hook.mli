(** Creates an inline hook. This resource allows you to create and configure an inline hook. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type headers

val headers :
  ?key:string prop -> ?value:string prop -> unit -> headers

type okta_inline_hook

val okta_inline_hook :
  ?auth:(string * string prop) list ->
  ?id:string prop ->
  ?status:string prop ->
  channel:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  version:string prop ->
  headers:headers list ->
  unit ->
  okta_inline_hook

val yojson_of_okta_inline_hook : okta_inline_hook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auth : (string * string) list prop;
  channel : (string * string) list prop;
  id : string prop;
  name : string prop;
  status : string prop;
  type_ : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auth:(string * string prop) list ->
  ?id:string prop ->
  ?status:string prop ->
  channel:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  version:string prop ->
  headers:headers list ->
  string ->
  t

val make :
  ?auth:(string * string prop) list ->
  ?id:string prop ->
  ?status:string prop ->
  channel:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  version:string prop ->
  headers:headers list ->
  string ->
  t Tf_core.resource
