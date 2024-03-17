(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securitylake_subscriber__source__aws_log_source_resource

type aws_securitylake_subscriber__source__custom_log_source_resource__attributes = {
  crawler_arn : string;  (** crawler_arn *)
  database_arn : string;  (** database_arn *)
  table_arn : string;  (** table_arn *)
}

type aws_securitylake_subscriber__source__custom_log_source_resource__provider = {
  location : string;  (** location *)
  role_arn : string;  (** role_arn *)
}

type aws_securitylake_subscriber__source__custom_log_source_resource
type aws_securitylake_subscriber__source
type aws_securitylake_subscriber__subscriber_identity
type aws_securitylake_subscriber__timeouts
type aws_securitylake_subscriber

val aws_securitylake_subscriber :
  ?access_type:string ->
  ?subscriber_description:string ->
  ?subscriber_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_securitylake_subscriber__timeouts ->
  source:aws_securitylake_subscriber__source list ->
  subscriber_identity:
    aws_securitylake_subscriber__subscriber_identity list ->
  string ->
  unit
