(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ce_anomaly_subscription__subscriber

type aws_ce_anomaly_subscription__threshold_expression__and__cost_category

type aws_ce_anomaly_subscription__threshold_expression__and__dimension
type aws_ce_anomaly_subscription__threshold_expression__and__tags
type aws_ce_anomaly_subscription__threshold_expression__and
type aws_ce_anomaly_subscription__threshold_expression__cost_category
type aws_ce_anomaly_subscription__threshold_expression__dimension

type aws_ce_anomaly_subscription__threshold_expression__not__cost_category

type aws_ce_anomaly_subscription__threshold_expression__not__dimension
type aws_ce_anomaly_subscription__threshold_expression__not__tags
type aws_ce_anomaly_subscription__threshold_expression__not

type aws_ce_anomaly_subscription__threshold_expression__or__cost_category

type aws_ce_anomaly_subscription__threshold_expression__or__dimension
type aws_ce_anomaly_subscription__threshold_expression__or__tags
type aws_ce_anomaly_subscription__threshold_expression__or
type aws_ce_anomaly_subscription__threshold_expression__tags
type aws_ce_anomaly_subscription__threshold_expression
type aws_ce_anomaly_subscription

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

val aws_ce_anomaly_subscription :
  ?account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  frequency:string prop ->
  monitor_arn_list:string prop list ->
  name:string prop ->
  subscriber:aws_ce_anomaly_subscription__subscriber list ->
  threshold_expression:
    aws_ce_anomaly_subscription__threshold_expression list ->
  string ->
  t
