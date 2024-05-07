(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__encryption_configuration = {
  kms_key_id : string prop;  (** kms_key_id *)
}

type configuration__lifecycle_configuration__expiration

val configuration__lifecycle_configuration__expiration :
  ?days:float prop ->
  unit ->
  configuration__lifecycle_configuration__expiration

type configuration__lifecycle_configuration__transition

val configuration__lifecycle_configuration__transition :
  ?days:float prop ->
  ?storage_class:string prop ->
  unit ->
  configuration__lifecycle_configuration__transition

type configuration__lifecycle_configuration

val configuration__lifecycle_configuration :
  ?expiration:configuration__lifecycle_configuration__expiration list ->
  transition:configuration__lifecycle_configuration__transition list ->
  unit ->
  configuration__lifecycle_configuration

type configuration__replication_configuration

val configuration__replication_configuration :
  ?regions:string prop list ->
  ?role_arn:string prop ->
  unit ->
  configuration__replication_configuration

type configuration

val configuration :
  ?encryption_configuration:
    configuration__encryption_configuration list ->
  ?lifecycle_configuration:
    configuration__lifecycle_configuration list ->
  ?replication_configuration:
    configuration__replication_configuration list ->
  region:string prop ->
  unit ->
  configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_securitylake_data_lake

val aws_securitylake_data_lake :
  ?tags:(string * string prop) list ->
  ?configuration:configuration list ->
  ?timeouts:timeouts ->
  meta_store_manager_role_arn:string prop ->
  unit ->
  aws_securitylake_data_lake

val yojson_of_aws_securitylake_data_lake :
  aws_securitylake_data_lake -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  meta_store_manager_role_arn : string prop;
  s3_bucket_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  ?configuration:configuration list ->
  ?timeouts:timeouts ->
  meta_store_manager_role_arn:string prop ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  ?configuration:configuration list ->
  ?timeouts:timeouts ->
  meta_store_manager_role_arn:string prop ->
  string ->
  t Tf_core.resource
