(** DNSimple registrant change check data source *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type extended_attributes__options = {
  description : string prop;  (** description *)
  title : string prop;  (** title *)
  value : string prop;  (** value *)
}

type extended_attributes = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  options : extended_attributes__options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** options *)
  required : bool prop;  (** required *)
}

type dnsimple_registrant_change_check

val dnsimple_registrant_change_check :
  contact_id:string prop ->
  domain_id:string prop ->
  unit ->
  dnsimple_registrant_change_check

val yojson_of_dnsimple_registrant_change_check :
  dnsimple_registrant_change_check -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  contact_id : string prop;
  domain_id : string prop;
  extended_attributes : extended_attributes list prop;
  id : string prop;
  registry_owner_change : bool prop;
}

val register :
  ?tf_module:tf_module ->
  contact_id:string prop ->
  domain_id:string prop ->
  string ->
  t

val make :
  contact_id:string prop ->
  domain_id:string prop ->
  string ->
  t Tf_core.resource
