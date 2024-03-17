(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_instance_logging_configuration__access_logs__cloudwatch_logs

type aws_verifiedaccess_instance_logging_configuration__access_logs__kinesis_data_firehose

type aws_verifiedaccess_instance_logging_configuration__access_logs__s3

type aws_verifiedaccess_instance_logging_configuration__access_logs
type aws_verifiedaccess_instance_logging_configuration

type t = private {
  id : string prop;
  verifiedaccess_instance_id : string prop;
}

val aws_verifiedaccess_instance_logging_configuration :
  ?id:string prop ->
  verifiedaccess_instance_id:string prop ->
  access_logs:
    aws_verifiedaccess_instance_logging_configuration__access_logs
    list ->
  string ->
  t
