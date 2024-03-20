(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type digitalocean_project

val digitalocean_project :
  ?description:string prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?purpose:string prop ->
  ?resources:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  digitalocean_project

val yojson_of_digitalocean_project : digitalocean_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_at : string prop;
  description : string prop;
  environment : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  owner_id : float prop;
  owner_uuid : string prop;
  purpose : string prop;
  resources : string list prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?purpose:string prop ->
  ?resources:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?purpose:string prop ->
  ?resources:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
