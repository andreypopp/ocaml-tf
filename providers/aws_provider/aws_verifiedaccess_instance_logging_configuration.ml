(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedaccess_instance_logging_configuration__access_logs__cloudwatch_logs = {
  enabled : bool;  (** enabled *)
  log_group : string option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_logging_configuration__access_logs__cloudwatch_logs *)

type aws_verifiedaccess_instance_logging_configuration__access_logs__kinesis_data_firehose = {
  delivery_stream : string option; [@option]  (** delivery_stream *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_logging_configuration__access_logs__kinesis_data_firehose *)

type aws_verifiedaccess_instance_logging_configuration__access_logs__s3 = {
  bucket_name : string option; [@option]  (** bucket_name *)
  bucket_owner : string option; [@option]  (** bucket_owner *)
  enabled : bool;  (** enabled *)
  prefix : string option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_logging_configuration__access_logs__s3 *)

type aws_verifiedaccess_instance_logging_configuration__access_logs = {
  include_trust_context : bool option; [@option]
      (** include_trust_context *)
  log_version : string option; [@option]  (** log_version *)
  cloudwatch_logs :
    aws_verifiedaccess_instance_logging_configuration__access_logs__cloudwatch_logs
    list;
  kinesis_data_firehose :
    aws_verifiedaccess_instance_logging_configuration__access_logs__kinesis_data_firehose
    list;
  s3 :
    aws_verifiedaccess_instance_logging_configuration__access_logs__s3
    list;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_logging_configuration__access_logs *)

type aws_verifiedaccess_instance_logging_configuration = {
  id : string option; [@option]  (** id *)
  verifiedaccess_instance_id : string;
      (** verifiedaccess_instance_id *)
  access_logs :
    aws_verifiedaccess_instance_logging_configuration__access_logs
    list;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_logging_configuration *)

let aws_verifiedaccess_instance_logging_configuration ?id
    ~verifiedaccess_instance_id ~access_logs __resource_id =
  let __resource_type =
    "aws_verifiedaccess_instance_logging_configuration"
  in
  let __resource = { id; verifiedaccess_instance_id; access_logs } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_instance_logging_configuration
       __resource);
  ()
