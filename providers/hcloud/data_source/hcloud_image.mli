(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_image

val hcloud_image :
  ?id:float prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_architecture:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  unit ->
  hcloud_image

val yojson_of_hcloud_image : hcloud_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  architecture : string prop;
  created : string prop;
  deprecated : string prop;
  description : string prop;
  id : float prop;
  include_deprecated : bool prop;
  labels : (string * string) list prop;
  most_recent : bool prop;
  name : string prop;
  os_flavor : string prop;
  os_version : string prop;
  rapid_deploy : bool prop;
  selector : string prop;
  type_ : string prop;
  with_architecture : string prop;
  with_selector : string prop;
  with_status : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_architecture:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t

val make :
  ?id:float prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_architecture:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t Tf_core.resource
