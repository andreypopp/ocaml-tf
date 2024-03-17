(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securitylake_custom_log_source__configuration__crawler_configuration

type aws_securitylake_custom_log_source__configuration__provider_identity

type aws_securitylake_custom_log_source__configuration

type aws_securitylake_custom_log_source__attributes = {
  crawler_arn : string prop;  (** crawler_arn *)
  database_arn : string prop;  (** database_arn *)
  table_arn : string prop;  (** table_arn *)
}

type aws_securitylake_custom_log_source__provider_details = {
  location : string prop;  (** location *)
  role_arn : string prop;  (** role_arn *)
}

type aws_securitylake_custom_log_source

val aws_securitylake_custom_log_source :
  ?event_classes:string prop list ->
  ?source_version:string prop ->
  source_name:string prop ->
  configuration:
    aws_securitylake_custom_log_source__configuration list ->
  string ->
  unit
