(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type images = {
  architecture : string prop;  (** architecture *)
  created : string prop;  (** created *)
  deprecated : string prop;  (** deprecated *)
  description : string prop;  (** description *)
  id : float prop;  (** id *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  os_flavor : string prop;  (** os_flavor *)
  os_version : string prop;  (** os_version *)
  rapid_deploy : bool prop;  (** rapid_deploy *)
  selector : string prop;  (** selector *)
  type_ : string prop; [@key "type"]  (** type *)
}

type hcloud_images

val hcloud_images :
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?with_architecture:string prop list ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  unit ->
  hcloud_images

val yojson_of_hcloud_images : hcloud_images -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  images : images list prop;
  include_deprecated : bool prop;
  most_recent : bool prop;
  with_architecture : string list prop;
  with_selector : string prop;
  with_status : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?with_architecture:string prop list ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?with_architecture:string prop list ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t Tf_core.resource
