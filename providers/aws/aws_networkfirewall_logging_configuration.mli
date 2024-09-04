(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type logging_configuration__log_destination_config

val logging_configuration__log_destination_config :
  log_destination:string prop Tf_core.assoc ->
  log_destination_type:string prop ->
  log_type:string prop ->
  unit ->
  logging_configuration__log_destination_config

type logging_configuration

val logging_configuration :
  log_destination_config:
    logging_configuration__log_destination_config list ->
  unit ->
  logging_configuration

type aws_networkfirewall_logging_configuration

val aws_networkfirewall_logging_configuration :
  ?id:string prop ->
  firewall_arn:string prop ->
  logging_configuration:logging_configuration list ->
  unit ->
  aws_networkfirewall_logging_configuration

val yojson_of_aws_networkfirewall_logging_configuration :
  aws_networkfirewall_logging_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  firewall_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  firewall_arn:string prop ->
  logging_configuration:logging_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  firewall_arn:string prop ->
  logging_configuration:logging_configuration list ->
  string ->
  t Tf_core.resource
