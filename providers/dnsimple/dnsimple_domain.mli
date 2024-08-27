(** DNSimple domain resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_domain

val dnsimple_domain : name:string prop -> unit -> dnsimple_domain
val yojson_of_dnsimple_domain : dnsimple_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : float prop;
  auto_renew : bool prop;
  id : float prop;
  name : string prop;
  private_whois : bool prop;
  registrant_id : float prop;
  state : string prop;
  unicode_name : string prop;
}

val register :
  ?tf_module:tf_module -> name:string prop -> string -> t

val make : name:string prop -> string -> t Tf_core.resource
