(** Use this data source to lookup [Devices](https://api.cloudflare.com/#devices-list-devices). *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type devices = {
  created : string prop;  (** created *)
  deleted : bool prop;  (** deleted *)
  device_type : string prop;  (** device_type *)
  id : string prop;  (** id *)
  ip : string prop;  (** ip *)
  key : string prop;  (** key *)
  last_seen : string prop;  (** last_seen *)
  mac_address : string prop;  (** mac_address *)
  manufacturer : string prop;  (** manufacturer *)
  model : string prop;  (** model *)
  name : string prop;  (** name *)
  os_distro_name : string prop;  (** os_distro_name *)
  os_distro_revision : string prop;  (** os_distro_revision *)
  os_version : string prop;  (** os_version *)
  revoked_at : string prop;  (** revoked_at *)
  serial_number : string prop;  (** serial_number *)
  updated : string prop;  (** updated *)
  user_email : string prop;  (** user_email *)
  user_id : string prop;  (** user_id *)
  user_name : string prop;  (** user_name *)
  version : string prop;  (** version *)
}

type cloudflare_devices

val cloudflare_devices :
  ?id:string prop ->
  account_id:string prop ->
  unit ->
  cloudflare_devices

val yojson_of_cloudflare_devices : cloudflare_devices -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  devices : devices list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
