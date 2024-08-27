(** DNSimple domain resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_registered_domain

val dnsimple_registered_domain :
  ?auto_renew_enabled:bool prop ->
  ?dnssec_enabled:bool prop ->
  ?extended_attributes:(string * string prop) list ->
  ?premium_price:string prop ->
  ?timeouts:json prop ->
  ?transfer_lock_enabled:bool prop ->
  ?whois_privacy_enabled:bool prop ->
  contact_id:float prop ->
  name:string prop ->
  unit ->
  dnsimple_registered_domain

val yojson_of_dnsimple_registered_domain :
  dnsimple_registered_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : float prop;
  auto_renew_enabled : bool prop;
  contact_id : float prop;
  dnssec_enabled : bool prop;
  domain_registration : json prop;
  expires_at : string prop;
  extended_attributes : (string * string) list prop;
  id : float prop;
  name : string prop;
  premium_price : string prop;
  registrant_change : json prop;
  state : string prop;
  timeouts : json prop;
  transfer_lock_enabled : bool prop;
  unicode_name : string prop;
  whois_privacy_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_renew_enabled:bool prop ->
  ?dnssec_enabled:bool prop ->
  ?extended_attributes:(string * string prop) list ->
  ?premium_price:string prop ->
  ?timeouts:json prop ->
  ?transfer_lock_enabled:bool prop ->
  ?whois_privacy_enabled:bool prop ->
  contact_id:float prop ->
  name:string prop ->
  string ->
  t

val make :
  ?auto_renew_enabled:bool prop ->
  ?dnssec_enabled:bool prop ->
  ?extended_attributes:(string * string prop) list ->
  ?premium_price:string prop ->
  ?timeouts:json prop ->
  ?transfer_lock_enabled:bool prop ->
  ?whois_privacy_enabled:bool prop ->
  contact_id:float prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
