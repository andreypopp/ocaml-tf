(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type replication__user_managed__replicas__customer_managed_encryption = {
  kms_key_name : string prop;  (** kms_key_name *)
}

type replication__user_managed__replicas = {
  customer_managed_encryption :
    replication__user_managed__replicas__customer_managed_encryption
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** customer_managed_encryption *)
  location : string prop;  (** location *)
}

type replication__user_managed = {
  replicas : replication__user_managed__replicas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** replicas *)
}

type replication__auto__customer_managed_encryption = {
  kms_key_name : string prop;  (** kms_key_name *)
}

type replication__auto = {
  customer_managed_encryption :
    replication__auto__customer_managed_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** customer_managed_encryption *)
}

type replication = {
  auto : replication__auto list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** auto *)
  user_managed : replication__user_managed list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** user_managed *)
}

type rotation = {
  next_rotation_time : string prop;  (** next_rotation_time *)
  rotation_period : string prop;  (** rotation_period *)
}

type topics = { name : string prop  (** name *) }
type google_secret_manager_secret

val google_secret_manager_secret :
  ?id:string prop ->
  ?project:string prop ->
  secret_id:string prop ->
  unit ->
  google_secret_manager_secret

val yojson_of_google_secret_manager_secret :
  google_secret_manager_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  create_time : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  expire_time : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  replication : replication list prop;
  rotation : rotation list prop;
  secret_id : string prop;
  terraform_labels : string Tf_core.assoc prop;
  topics : topics list prop;
  ttl : string prop;
  version_aliases : string Tf_core.assoc prop;
  version_destroy_ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  secret_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  secret_id:string prop ->
  string ->
  t Tf_core.resource
