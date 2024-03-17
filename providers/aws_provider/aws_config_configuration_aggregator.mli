(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_configuration_aggregator__account_aggregation_source

type aws_config_configuration_aggregator__organization_aggregation_source

type aws_config_configuration_aggregator

val aws_config_configuration_aggregator :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  account_aggregation_source:
    aws_config_configuration_aggregator__account_aggregation_source
    list ->
  organization_aggregation_source:
    aws_config_configuration_aggregator__organization_aggregation_source
    list ->
  string ->
  unit
