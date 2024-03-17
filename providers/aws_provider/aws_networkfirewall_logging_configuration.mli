(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkfirewall_logging_configuration__logging_configuration__log_destination_config

type aws_networkfirewall_logging_configuration__logging_configuration
type aws_networkfirewall_logging_configuration
type t = private { firewall_arn : string prop; id : string prop }

val aws_networkfirewall_logging_configuration :
  ?id:string prop ->
  firewall_arn:string prop ->
  logging_configuration:
    aws_networkfirewall_logging_configuration__logging_configuration
    list ->
  string ->
  t
