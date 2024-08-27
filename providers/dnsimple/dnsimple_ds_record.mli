(** DNSimple domain delegation signer record resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_ds_record

val dnsimple_ds_record :
  ?digest:string prop ->
  ?digest_type:string prop ->
  ?keytag:string prop ->
  ?public_key:string prop ->
  algorithm:string prop ->
  domain:string prop ->
  unit ->
  dnsimple_ds_record

val yojson_of_dnsimple_ds_record : dnsimple_ds_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  algorithm : string prop;
  created_at : string prop;
  digest : string prop;
  digest_type : string prop;
  domain : string prop;
  id : float prop;
  keytag : string prop;
  public_key : string prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?digest:string prop ->
  ?digest_type:string prop ->
  ?keytag:string prop ->
  ?public_key:string prop ->
  algorithm:string prop ->
  domain:string prop ->
  string ->
  t

val make :
  ?digest:string prop ->
  ?digest_type:string prop ->
  ?keytag:string prop ->
  ?public_key:string prop ->
  algorithm:string prop ->
  domain:string prop ->
  string ->
  t Tf_core.resource
