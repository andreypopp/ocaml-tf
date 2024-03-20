(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type key_signing_keys__digests = {
  digest : string prop;  (** digest *)
  type_ : string prop; [@key "type"]  (** type *)
}

type key_signing_keys = {
  algorithm : string prop;  (** algorithm *)
  creation_time : string prop;  (** creation_time *)
  description : string prop;  (** description *)
  digests : key_signing_keys__digests list;  (** digests *)
  ds_record : string prop;  (** ds_record *)
  id : string prop;  (** id *)
  is_active : bool prop;  (** is_active *)
  key_length : float prop;  (** key_length *)
  key_tag : float prop;  (** key_tag *)
  public_key : string prop;  (** public_key *)
}

type zone_signing_keys__digests = {
  digest : string prop;  (** digest *)
  type_ : string prop; [@key "type"]  (** type *)
}

type zone_signing_keys = {
  algorithm : string prop;  (** algorithm *)
  creation_time : string prop;  (** creation_time *)
  description : string prop;  (** description *)
  digests : zone_signing_keys__digests list;  (** digests *)
  id : string prop;  (** id *)
  is_active : bool prop;  (** is_active *)
  key_length : float prop;  (** key_length *)
  key_tag : float prop;  (** key_tag *)
  public_key : string prop;  (** public_key *)
}

type google_dns_keys

val google_dns_keys :
  ?project:string prop ->
  managed_zone:string prop ->
  unit ->
  google_dns_keys

val yojson_of_google_dns_keys : google_dns_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  key_signing_keys : key_signing_keys list prop;
  managed_zone : string prop;
  project : string prop;
  zone_signing_keys : zone_signing_keys list prop;
}

val register :
  ?tf_module:tf_module ->
  ?project:string prop ->
  managed_zone:string prop ->
  string ->
  t

val make :
  ?project:string prop ->
  managed_zone:string prop ->
  string ->
  t Tf_core.resource
