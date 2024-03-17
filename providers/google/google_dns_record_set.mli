(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_record_set__routing_policy__geo__health_checked_targets__internal_load_balancers

type google_dns_record_set__routing_policy__geo__health_checked_targets

type google_dns_record_set__routing_policy__geo

type google_dns_record_set__routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers

type google_dns_record_set__routing_policy__primary_backup__backup_geo__health_checked_targets

type google_dns_record_set__routing_policy__primary_backup__backup_geo

type google_dns_record_set__routing_policy__primary_backup__primary__internal_load_balancers

type google_dns_record_set__routing_policy__primary_backup__primary
type google_dns_record_set__routing_policy__primary_backup

type google_dns_record_set__routing_policy__wrr__health_checked_targets__internal_load_balancers

type google_dns_record_set__routing_policy__wrr__health_checked_targets

type google_dns_record_set__routing_policy__wrr
type google_dns_record_set__routing_policy
type google_dns_record_set

type t = private {
  id : string prop;
  managed_zone : string prop;
  name : string prop;
  project : string prop;
  rrdatas : string list prop;
  ttl : float prop;
  type_ : string prop;
}

val google_dns_record_set :
  ?id:string prop ->
  ?project:string prop ->
  ?rrdatas:string prop list ->
  ?ttl:float prop ->
  managed_zone:string prop ->
  name:string prop ->
  type_:string prop ->
  routing_policy:google_dns_record_set__routing_policy list ->
  string ->
  t
