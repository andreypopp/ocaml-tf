(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securitylake_subscriber__source__aws_log_source_resource

type aws_securitylake_subscriber__source__custom_log_source_resource__attributes = {
  crawler_arn : string prop;  (** crawler_arn *)
  database_arn : string prop;  (** database_arn *)
  table_arn : string prop;  (** table_arn *)
}

type aws_securitylake_subscriber__source__custom_log_source_resource__provider = {
  location : string prop;  (** location *)
  role_arn : string prop;  (** role_arn *)
}

type aws_securitylake_subscriber__source__custom_log_source_resource
type aws_securitylake_subscriber__source
type aws_securitylake_subscriber__subscriber_identity
type aws_securitylake_subscriber__timeouts
type aws_securitylake_subscriber

val aws_securitylake_subscriber :
  ?access_type:string prop ->
  ?subscriber_description:string prop ->
  ?subscriber_name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:aws_securitylake_subscriber__timeouts ->
  source:aws_securitylake_subscriber__source list ->
  subscriber_identity:
    aws_securitylake_subscriber__subscriber_identity list ->
  string ->
  unit
