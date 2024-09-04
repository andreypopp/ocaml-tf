(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type as2_config

val as2_config :
  ?mdn_signing_algorithm:string prop ->
  ?message_subject:string prop ->
  compression:string prop ->
  encryption_algorithm:string prop ->
  local_profile_id:string prop ->
  mdn_response:string prop ->
  partner_profile_id:string prop ->
  signing_algorithm:string prop ->
  unit ->
  as2_config

type sftp_config

val sftp_config :
  ?trusted_host_keys:string prop list ->
  ?user_secret_id:string prop ->
  unit ->
  sftp_config

type aws_transfer_connector

val aws_transfer_connector :
  ?id:string prop ->
  ?logging_role:string prop ->
  ?security_policy_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?as2_config:as2_config list ->
  ?sftp_config:sftp_config list ->
  access_role:string prop ->
  url:string prop ->
  unit ->
  aws_transfer_connector

val yojson_of_aws_transfer_connector : aws_transfer_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_role : string prop;
  arn : string prop;
  connector_id : string prop;
  id : string prop;
  logging_role : string prop;
  security_policy_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?logging_role:string prop ->
  ?security_policy_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?as2_config:as2_config list ->
  ?sftp_config:sftp_config list ->
  access_role:string prop ->
  url:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?logging_role:string prop ->
  ?security_policy_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?as2_config:as2_config list ->
  ?sftp_config:sftp_config list ->
  access_role:string prop ->
  url:string prop ->
  string ->
  t Tf_core.resource
