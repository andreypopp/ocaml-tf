(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type as2_config = {
  basic_auth_secret_id : string prop;  (** basic_auth_secret_id *)
  compression : string prop;  (** compression *)
  encryption_algorithm : string prop;  (** encryption_algorithm *)
  local_profile_id : string prop;  (** local_profile_id *)
  mdn_response : string prop;  (** mdn_response *)
  mdn_signing_algorithm : string prop;  (** mdn_signing_algorithm *)
  message_subject : string prop;  (** message_subject *)
  partner_profile_id : string prop;  (** partner_profile_id *)
  singing_algorithm : string prop;  (** singing_algorithm *)
}

type sftp_config = {
  trusted_host_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** trusted_host_keys *)
  user_secret_id : string prop;  (** user_secret_id *)
}

type aws_transfer_connector

val aws_transfer_connector :
  id:string prop -> unit -> aws_transfer_connector

val yojson_of_aws_transfer_connector : aws_transfer_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_role : string prop;
  arn : string prop;
  as2_config : as2_config list prop;
  id : string prop;
  logging_role : string prop;
  security_policy_name : string prop;
  service_managed_egress_ip_addresses : string list prop;
  sftp_config : sftp_config list prop;
  tags : string Tf_core.assoc prop;
  url : string prop;
}

val register : ?tf_module:tf_module -> id:string prop -> string -> t
val make : id:string prop -> string -> t Tf_core.resource
