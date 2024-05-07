(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type account_aggregation_source

val account_aggregation_source :
  ?all_regions:bool prop ->
  ?regions:string prop list ->
  account_ids:string prop list ->
  unit ->
  account_aggregation_source

type organization_aggregation_source

val organization_aggregation_source :
  ?all_regions:bool prop ->
  ?regions:string prop list ->
  role_arn:string prop ->
  unit ->
  organization_aggregation_source

type aws_config_configuration_aggregator

val aws_config_configuration_aggregator :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?account_aggregation_source:account_aggregation_source list ->
  ?organization_aggregation_source:
    organization_aggregation_source list ->
  name:string prop ->
  unit ->
  aws_config_configuration_aggregator

val yojson_of_aws_config_configuration_aggregator :
  aws_config_configuration_aggregator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?account_aggregation_source:account_aggregation_source list ->
  ?organization_aggregation_source:
    organization_aggregation_source list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?account_aggregation_source:account_aggregation_source list ->
  ?organization_aggregation_source:
    organization_aggregation_source list ->
  name:string prop ->
  string ->
  t Tf_core.resource
