(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing_policy__geo__health_checked_targets__internal_load_balancers

val routing_policy__geo__health_checked_targets__internal_load_balancers :
  ?region:string prop ->
  ip_address:string prop ->
  ip_protocol:string prop ->
  load_balancer_type:string prop ->
  network_url:string prop ->
  port:string prop ->
  project:string prop ->
  unit ->
  routing_policy__geo__health_checked_targets__internal_load_balancers

type routing_policy__geo__health_checked_targets

val routing_policy__geo__health_checked_targets :
  internal_load_balancers:
    routing_policy__geo__health_checked_targets__internal_load_balancers
    list ->
  unit ->
  routing_policy__geo__health_checked_targets

type routing_policy__geo

val routing_policy__geo :
  ?rrdatas:string prop list ->
  location:string prop ->
  health_checked_targets:
    routing_policy__geo__health_checked_targets list ->
  unit ->
  routing_policy__geo

type routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers

val routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers :
  ?region:string prop ->
  ip_address:string prop ->
  ip_protocol:string prop ->
  load_balancer_type:string prop ->
  network_url:string prop ->
  port:string prop ->
  project:string prop ->
  unit ->
  routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers

type routing_policy__primary_backup__backup_geo__health_checked_targets

val routing_policy__primary_backup__backup_geo__health_checked_targets :
  internal_load_balancers:
    routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers
    list ->
  unit ->
  routing_policy__primary_backup__backup_geo__health_checked_targets

type routing_policy__primary_backup__backup_geo

val routing_policy__primary_backup__backup_geo :
  ?rrdatas:string prop list ->
  location:string prop ->
  health_checked_targets:
    routing_policy__primary_backup__backup_geo__health_checked_targets
    list ->
  unit ->
  routing_policy__primary_backup__backup_geo

type routing_policy__primary_backup__primary__internal_load_balancers

val routing_policy__primary_backup__primary__internal_load_balancers :
  ?region:string prop ->
  ip_address:string prop ->
  ip_protocol:string prop ->
  load_balancer_type:string prop ->
  network_url:string prop ->
  port:string prop ->
  project:string prop ->
  unit ->
  routing_policy__primary_backup__primary__internal_load_balancers

type routing_policy__primary_backup__primary

val routing_policy__primary_backup__primary :
  internal_load_balancers:
    routing_policy__primary_backup__primary__internal_load_balancers
    list ->
  unit ->
  routing_policy__primary_backup__primary

type routing_policy__primary_backup

val routing_policy__primary_backup :
  ?enable_geo_fencing_for_backups:bool prop ->
  ?trickle_ratio:float prop ->
  backup_geo:routing_policy__primary_backup__backup_geo list ->
  primary:routing_policy__primary_backup__primary list ->
  unit ->
  routing_policy__primary_backup

type routing_policy__wrr__health_checked_targets__internal_load_balancers

val routing_policy__wrr__health_checked_targets__internal_load_balancers :
  ?region:string prop ->
  ip_address:string prop ->
  ip_protocol:string prop ->
  load_balancer_type:string prop ->
  network_url:string prop ->
  port:string prop ->
  project:string prop ->
  unit ->
  routing_policy__wrr__health_checked_targets__internal_load_balancers

type routing_policy__wrr__health_checked_targets

val routing_policy__wrr__health_checked_targets :
  internal_load_balancers:
    routing_policy__wrr__health_checked_targets__internal_load_balancers
    list ->
  unit ->
  routing_policy__wrr__health_checked_targets

type routing_policy__wrr

val routing_policy__wrr :
  ?rrdatas:string prop list ->
  weight:float prop ->
  health_checked_targets:
    routing_policy__wrr__health_checked_targets list ->
  unit ->
  routing_policy__wrr

type routing_policy

val routing_policy :
  ?enable_geo_fencing:bool prop ->
  geo:routing_policy__geo list ->
  primary_backup:routing_policy__primary_backup list ->
  wrr:routing_policy__wrr list ->
  unit ->
  routing_policy

type google_dns_record_set

val google_dns_record_set :
  ?id:string prop ->
  ?project:string prop ->
  ?rrdatas:string prop list ->
  ?ttl:float prop ->
  managed_zone:string prop ->
  name:string prop ->
  type_:string prop ->
  routing_policy:routing_policy list ->
  unit ->
  google_dns_record_set

val yojson_of_google_dns_record_set : google_dns_record_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  managed_zone : string prop;
  name : string prop;
  project : string prop;
  rrdatas : string list prop;
  ttl : float prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?rrdatas:string prop list ->
  ?ttl:float prop ->
  managed_zone:string prop ->
  name:string prop ->
  type_:string prop ->
  routing_policy:routing_policy list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?rrdatas:string prop list ->
  ?ttl:float prop ->
  managed_zone:string prop ->
  name:string prop ->
  type_:string prop ->
  routing_policy:routing_policy list ->
  string ->
  t Tf_core.resource
