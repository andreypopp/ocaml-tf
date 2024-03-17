(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securitylake_custom_log_source__configuration__crawler_configuration = {
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_securitylake_custom_log_source__configuration__crawler_configuration *)

type aws_securitylake_custom_log_source__configuration__provider_identity = {
  external_id : string;  (** external_id *)
  principal : string;  (** principal *)
}
[@@deriving yojson_of]
(** aws_securitylake_custom_log_source__configuration__provider_identity *)

type aws_securitylake_custom_log_source__configuration = {
  crawler_configuration :
    aws_securitylake_custom_log_source__configuration__crawler_configuration
    list;
  provider_identity :
    aws_securitylake_custom_log_source__configuration__provider_identity
    list;
}
[@@deriving yojson_of]
(** aws_securitylake_custom_log_source__configuration *)

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

type aws_securitylake_custom_log_source = {
  event_classes : string list option; [@option]  (** event_classes *)
  source_name : string;  (** source_name *)
  source_version : string option; [@option]  (** source_version *)
  configuration :
    aws_securitylake_custom_log_source__configuration list;
}
[@@deriving yojson_of]
(** aws_securitylake_custom_log_source *)

let aws_securitylake_custom_log_source ?event_classes ?source_version
    ~source_name ~configuration __resource_id =
  let __resource_type = "aws_securitylake_custom_log_source" in
  let __resource =
    { event_classes; source_name; source_version; configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securitylake_custom_log_source __resource);
  ()
