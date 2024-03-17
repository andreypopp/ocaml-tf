(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkfirewall_logging_configuration__logging_configuration__log_destination_config

type aws_networkfirewall_logging_configuration__logging_configuration
type aws_networkfirewall_logging_configuration

val aws_networkfirewall_logging_configuration :
  ?id:string ->
  firewall_arn:string ->
  logging_configuration:
    aws_networkfirewall_logging_configuration__logging_configuration
    list ->
  string ->
  unit
