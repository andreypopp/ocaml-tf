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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** customer_managed_encryption *)
  location : string prop;  (** location *)
}

type secrets__replication__user_managed = {
  replicas : secrets__replication__user_managed__replicas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** replicas *)
}

type secrets__replication__auto__customer_managed_encryption = {
  kms_key_name : string prop;  (** kms_key_name *)
}

type secrets__replication__auto = {
  customer_managed_encryption :
    secrets__replication__auto__customer_managed_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** customer_managed_encryption *)
}

type secrets__replication = {
  auto : secrets__replication__auto list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** auto *)
  user_managed : secrets__replication__user_managed list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** user_managed *)
}

type secrets = {
  annotations : string prop Tf_core.assoc;  (** annotations *)
  create_time : string prop;  (** create_time *)
  effective_annotations : string prop Tf_core.assoc;
      (** effective_annotations *)
  effective_labels : string prop Tf_core.assoc;
      (** effective_labels *)
  expire_time : string prop;  (** expire_time *)
  labels : string prop Tf_core.assoc;  (** labels *)
  name : string prop;  (** name *)
  project : string prop;  (** project *)
  replication : secrets__replication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** replication *)
  rotation : secrets__rotation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** rotation *)
  secret_id : string prop;  (** secret_id *)
  terraform_labels : string prop Tf_core.assoc;
      (** terraform_labels *)
  topics : secrets__topics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** topics *)
  ttl : string prop;  (** ttl *)
  version_aliases : string prop Tf_core.assoc;
      (** version_aliases *)
  version_destroy_ttl : string prop;  (** version_destroy_ttl *)
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
