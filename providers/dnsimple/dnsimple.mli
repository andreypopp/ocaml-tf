(** The DNSimple provider is used to interact with the various services that DNSimple offers. The provider needs to be configured with the proper credentials before it can be used. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type dnsimple

val dnsimple :
  ?account:string prop ->
  ?prefetch:bool prop ->
  ?sandbox:bool prop ->
  ?token:string prop ->
  ?user_agent:string prop ->
  unit ->
  dnsimple

val yojson_of_dnsimple : dnsimple -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?account:string prop ->
  ?prefetch:bool prop ->
  ?sandbox:bool prop ->
  ?token:string prop ->
  ?user_agent:string prop ->
  version:string ->
  unit ->
  unit

val make :
  ?account:string prop ->
  ?prefetch:bool prop ->
  ?sandbox:bool prop ->
  ?token:string prop ->
  ?user_agent:string prop ->
  unit ->
  Tf_core.provider
