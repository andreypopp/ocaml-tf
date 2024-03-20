(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type datasets = {
  description : string prop;  (** description *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  secret : bool prop;  (** secret *)
  status : string prop;  (** status *)
}

type cloudflare_dlp_datasets

val cloudflare_dlp_datasets :
  account_id:string prop -> unit -> cloudflare_dlp_datasets

val yojson_of_cloudflare_dlp_datasets :
  cloudflare_dlp_datasets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  datasets : datasets list prop;
}

val register :
  ?tf_module:tf_module -> account_id:string prop -> string -> t

val make : account_id:string prop -> string -> t Tf_core.resource
