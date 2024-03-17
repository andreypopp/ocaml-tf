(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_configuration_aggregator__account_aggregation_source

type aws_config_configuration_aggregator__organization_aggregation_source

type aws_config_configuration_aggregator

val aws_config_configuration_aggregator :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  account_aggregation_source:
    aws_config_configuration_aggregator__account_aggregation_source
    list ->
  organization_aggregation_source:
    aws_config_configuration_aggregator__organization_aggregation_source
    list ->
  string ->
  unit
