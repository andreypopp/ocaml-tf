(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subscriber

val subscriber :
  address:string prop -> type_:string prop -> unit -> subscriber

type threshold_expression__and__cost_category

val threshold_expression__and__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__and__cost_category

type threshold_expression__and__dimension

val threshold_expression__and__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__and__dimension

type threshold_expression__and__tags

val threshold_expression__and__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__and__tags

type threshold_expression__and

val threshold_expression__and :
  ?cost_category:threshold_expression__and__cost_category list ->
  ?dimension:threshold_expression__and__dimension list ->
  ?tags:threshold_expression__and__tags list ->
  unit ->
  threshold_expression__and

type threshold_expression__cost_category

val threshold_expression__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__cost_category

type threshold_expression__dimension

val threshold_expression__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__dimension

type threshold_expression__not__cost_category

val threshold_expression__not__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__not__cost_category

type threshold_expression__not__dimension

val threshold_expression__not__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__not__dimension

type threshold_expression__not__tags

val threshold_expression__not__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__not__tags

type threshold_expression__not

val threshold_expression__not :
  ?cost_category:threshold_expression__not__cost_category list ->
  ?dimension:threshold_expression__not__dimension list ->
  ?tags:threshold_expression__not__tags list ->
  unit ->
  threshold_expression__not

type threshold_expression__or__cost_category

val threshold_expression__or__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__or__cost_category

type threshold_expression__or__dimension

val threshold_expression__or__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__or__dimension

type threshold_expression__or__tags

val threshold_expression__or__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__or__tags

type threshold_expression__or

val threshold_expression__or :
  ?cost_category:threshold_expression__or__cost_category list ->
  ?dimension:threshold_expression__or__dimension list ->
  ?tags:threshold_expression__or__tags list ->
  unit ->
  threshold_expression__or

type threshold_expression__tags

val threshold_expression__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  threshold_expression__tags

type threshold_expression

val threshold_expression :
  ?cost_category:threshold_expression__cost_category list ->
  ?dimension:threshold_expression__dimension list ->
  ?not:threshold_expression__not list ->
  ?tags:threshold_expression__tags list ->
  and_:threshold_expression__and list ->
  or_:threshold_expression__or list ->
  unit ->
  threshold_expression

type aws_ce_anomaly_subscription

val aws_ce_anomaly_subscription :
  ?account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?threshold_expression:threshold_expression list ->
  frequency:string prop ->
  monitor_arn_list:string prop list ->
  name:string prop ->
  subscriber:subscriber list ->
  unit ->
  aws_ce_anomaly_subscription

val yojson_of_aws_ce_anomaly_subscription :
  aws_ce_anomaly_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  arn : string prop;
  frequency : string prop;
  id : string prop;
  monitor_arn_list : string list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?threshold_expression:threshold_expression list ->
  frequency:string prop ->
  monitor_arn_list:string prop list ->
  name:string prop ->
  subscriber:subscriber list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?threshold_expression:threshold_expression list ->
  frequency:string prop ->
  monitor_arn_list:string prop list ->
  name:string prop ->
  subscriber:subscriber list ->
  string ->
  t Tf_core.resource
