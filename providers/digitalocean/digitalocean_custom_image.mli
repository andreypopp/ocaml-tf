(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type digitalocean_custom_image

val digitalocean_custom_image :
  ?description:string prop ->
  ?distribution:string prop ->
  ?id:string prop ->
  ?tags:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  regions:string prop list ->
  url:string prop ->
  unit ->
  digitalocean_custom_image

val yojson_of_digitalocean_custom_image :
  digitalocean_custom_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  description : string prop;
  distribution : string prop;
  id : string prop;
  image_id : float prop;
  min_disk_size : float prop;
  name : string prop;
  public : bool prop;
  regions : string list prop;
  size_gigabytes : float prop;
  slug : string prop;
  status : string prop;
  tags : string list prop;
  type_ : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?distribution:string prop ->
  ?id:string prop ->
  ?tags:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  regions:string prop list ->
  url:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?distribution:string prop ->
  ?id:string prop ->
  ?tags:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  regions:string prop list ->
  url:string prop ->
  string ->
  t Tf_core.resource
