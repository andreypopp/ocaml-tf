(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_event_subscription__timeouts
type aws_redshift_event_subscription

type t = private {
  arn : string prop;
  customer_aws_id : string prop;
  enabled : bool prop;
  event_categories : string list prop;
  id : string prop;
  name : string prop;
  severity : string prop;
  sns_topic_arn : string prop;
  source_ids : string list prop;
  source_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_redshift_event_subscription :
  ?enabled:bool prop ->
  ?event_categories:string prop list ->
  ?id:string prop ->
  ?severity:string prop ->
  ?source_ids:string prop list ->
  ?source_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_redshift_event_subscription__timeouts ->
  name:string prop ->
  sns_topic_arn:string prop ->
  string ->
  t
