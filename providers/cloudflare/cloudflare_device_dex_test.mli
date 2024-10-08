(** Provides a Cloudflare Device Dex Test resource. Device Dex Tests allow for building location-aware device settings policies. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data

val data :
  ?method_:string prop ->
  host:string prop ->
  kind:string prop ->
  unit ->
  data

type cloudflare_device_dex_test

val cloudflare_device_dex_test :
  ?id:string prop ->
  account_id:string prop ->
  description:string prop ->
  enabled:bool prop ->
  interval:string prop ->
  name:string prop ->
  data:data list ->
  unit ->
  cloudflare_device_dex_test

val yojson_of_cloudflare_device_dex_test :
  cloudflare_device_dex_test -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  created : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  interval : string prop;
  name : string prop;
  updated : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  description:string prop ->
  enabled:bool prop ->
  interval:string prop ->
  name:string prop ->
  data:data list ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  description:string prop ->
  enabled:bool prop ->
  interval:string prop ->
  name:string prop ->
  data:data list ->
  string ->
  t Tf_core.resource
