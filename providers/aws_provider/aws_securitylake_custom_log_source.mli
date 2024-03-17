(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securitylake_custom_log_source__configuration__crawler_configuration

type aws_securitylake_custom_log_source__configuration__provider_identity

type aws_securitylake_custom_log_source__configuration

type aws_securitylake_custom_log_source__attributes = {
  crawler_arn : string;  (** crawler_arn *)
  database_arn : string;  (** database_arn *)
  table_arn : string;  (** table_arn *)
}
[@@deriving yojson_of]

type aws_securitylake_custom_log_source__provider_details = {
  location : string;  (** location *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]

type aws_securitylake_custom_log_source

val aws_securitylake_custom_log_source :
  ?event_classes:string list ->
  source_name:string ->
  configuration:
    aws_securitylake_custom_log_source__configuration list ->
  string ->
  unit
