(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type replication__auto__customer_managed_encryption

val replication__auto__customer_managed_encryption :
  kms_key_name:string prop ->
  unit ->
  replication__auto__customer_managed_encryption

type replication__auto

val replication__auto :
  ?customer_managed_encryption:
    replication__auto__customer_managed_encryption list ->
  unit ->
  replication__auto

type replication__user_managed__replicas__customer_managed_encryption

val replication__user_managed__replicas__customer_managed_encryption :
  kms_key_name:string prop ->
  unit ->
  replication__user_managed__replicas__customer_managed_encryption

type replication__user_managed__replicas

val replication__user_managed__replicas :
  ?customer_managed_encryption:
    replication__user_managed__replicas__customer_managed_encryption
    list ->
  location:string prop ->
  unit ->
  replication__user_managed__replicas

type replication__user_managed

val replication__user_managed :
  replicas:replication__user_managed__replicas list ->
  unit ->
  replication__user_managed

type replication

val replication :
  ?auto:replication__auto list ->
  ?user_managed:replication__user_managed list ->
  unit ->
  replication

type rotation

val rotation :
  ?next_rotation_time:string prop ->
  ?rotation_period:string prop ->
  unit ->
  rotation

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type topics

val topics : name:string prop -> unit -> topics

type google_secret_manager_secret

val google_secret_manager_secret :
  ?annotations:(string * string prop) list ->
  ?expire_time:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?ttl:string prop ->
  ?version_aliases:(string * string prop) list ->
  ?version_destroy_ttl:string prop ->
  ?rotation:rotation list ->
  ?timeouts:timeouts ->
  ?topics:topics list ->
  secret_id:string prop ->
  replication:replication list ->
  unit ->
  google_secret_manager_secret

val yojson_of_google_secret_manager_secret :
  google_secret_manager_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : (string * string) list prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  expire_time : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  secret_id : string prop;
  terraform_labels : (string * string) list prop;
  ttl : string prop;
  version_aliases : (string * string) list prop;
  version_destroy_ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?expire_time:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?ttl:string prop ->
  ?version_aliases:(string * string prop) list ->
  ?version_destroy_ttl:string prop ->
  ?rotation:rotation list ->
  ?timeouts:timeouts ->
  ?topics:topics list ->
  secret_id:string prop ->
  replication:replication list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?expire_time:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?ttl:string prop ->
  ?version_aliases:(string * string prop) list ->
  ?version_destroy_ttl:string prop ->
  ?rotation:rotation list ->
  ?timeouts:timeouts ->
  ?topics:topics list ->
  secret_id:string prop ->
  replication:replication list ->
  string ->
  t Tf_core.resource
