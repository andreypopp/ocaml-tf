(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type multi_region_configuration__replica_keys = {
  arn : string prop;  (** arn *)
  region : string prop;  (** region *)
}

type multi_region_configuration__primary_key = {
  arn : string prop;  (** arn *)
  region : string prop;  (** region *)
}

type multi_region_configuration = {
  multi_region_key_type : string prop;  (** multi_region_key_type *)
  primary_key : multi_region_configuration__primary_key list;
      [@default []] [@yojson_drop_default ( = )]
      (** primary_key *)
  replica_keys : multi_region_configuration__replica_keys list;
      [@default []] [@yojson_drop_default ( = )]
      (** replica_keys *)
}

type xks_key_configuration = { id : string prop  (** id *) }
type aws_kms_key

val aws_kms_key :
  ?grant_tokens:string prop list ->
  ?id:string prop ->
  key_id:string prop ->
  unit ->
  aws_kms_key

val yojson_of_aws_kms_key : aws_kms_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  aws_account_id : string prop;
  cloud_hsm_cluster_id : string prop;
  creation_date : string prop;
  custom_key_store_id : string prop;
  customer_master_key_spec : string prop;
  deletion_date : string prop;
  description : string prop;
  enabled : bool prop;
  expiration_model : string prop;
  grant_tokens : string list prop;
  id : string prop;
  key_id : string prop;
  key_manager : string prop;
  key_spec : string prop;
  key_state : string prop;
  key_usage : string prop;
  multi_region : bool prop;
  multi_region_configuration : multi_region_configuration list prop;
  origin : string prop;
  pending_deletion_window_in_days : float prop;
  valid_to : string prop;
  xks_key_configuration : xks_key_configuration list prop;
}

val register :
  ?tf_module:tf_module ->
  ?grant_tokens:string prop list ->
  ?id:string prop ->
  key_id:string prop ->
  string ->
  t

val make :
  ?grant_tokens:string prop list ->
  ?id:string prop ->
  key_id:string prop ->
  string ->
  t Tf_core.resource
