(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secrets__topics = { name : string prop  (** name *) }

type secrets__rotation = {
  next_rotation_time : string prop;  (** next_rotation_time *)
  rotation_period : string prop;  (** rotation_period *)
}

type secrets__replication__user_managed__replicas__customer_managed_encryption = {
  kms_key_name : string prop;  (** kms_key_name *)
}

type secrets__replication__user_managed__replicas = {
  customer_managed_encryption :
    secrets__replication__user_managed__replicas__customer_managed_encryption
    list;
      (** customer_managed_encryption *)
  location : string prop;  (** location *)
}

type secrets__replication__user_managed = {
  replicas : secrets__replication__user_managed__replicas list;
      (** replicas *)
}

type secrets__replication__auto__customer_managed_encryption = {
  kms_key_name : string prop;  (** kms_key_name *)
}

type secrets__replication__auto = {
  customer_managed_encryption :
    secrets__replication__auto__customer_managed_encryption list;
      (** customer_managed_encryption *)
}

type secrets__replication = {
  auto : secrets__replication__auto list;  (** auto *)
  user_managed : secrets__replication__user_managed list;
      (** user_managed *)
}

type secrets = {
  annotations : (string * string prop) list;  (** annotations *)
  create_time : string prop;  (** create_time *)
  effective_annotations : (string * string prop) list;
      (** effective_annotations *)
  effective_labels : (string * string prop) list;
      (** effective_labels *)
  expire_time : string prop;  (** expire_time *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  project : string prop;  (** project *)
  replication : secrets__replication list;  (** replication *)
  rotation : secrets__rotation list;  (** rotation *)
  secret_id : string prop;  (** secret_id *)
  terraform_labels : (string * string prop) list;
      (** terraform_labels *)
  topics : secrets__topics list;  (** topics *)
  ttl : string prop;  (** ttl *)
  version_aliases : (string * string prop) list;
      (** version_aliases *)
}

type google_secret_manager_secrets

val google_secret_manager_secrets :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  unit ->
  google_secret_manager_secrets

val yojson_of_google_secret_manager_secrets :
  google_secret_manager_secrets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  project : string prop;
  secrets : secrets list prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
