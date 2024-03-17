(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secret_manager_secret__replication__auto__customer_managed_encryption

type google_secret_manager_secret__replication__auto

type google_secret_manager_secret__replication__user_managed__replicas__customer_managed_encryption

type google_secret_manager_secret__replication__user_managed__replicas
type google_secret_manager_secret__replication__user_managed
type google_secret_manager_secret__replication
type google_secret_manager_secret__rotation
type google_secret_manager_secret__timeouts
type google_secret_manager_secret__topics
type google_secret_manager_secret

type t = private {
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
}

val google_secret_manager_secret :
  ?annotations:(string * string prop) list ->
  ?expire_time:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?ttl:string prop ->
  ?version_aliases:(string * string prop) list ->
  ?timeouts:google_secret_manager_secret__timeouts ->
  secret_id:string prop ->
  replication:google_secret_manager_secret__replication list ->
  rotation:google_secret_manager_secret__rotation list ->
  topics:google_secret_manager_secret__topics list ->
  string ->
  t
