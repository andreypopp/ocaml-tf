(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securitylake_custom_log_source__configuration__crawler_configuration = {
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_securitylake_custom_log_source__configuration__crawler_configuration *)

type aws_securitylake_custom_log_source__configuration__provider_identity = {
  external_id : string prop;  (** external_id *)
  principal : string prop;  (** principal *)
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
  crawler_arn : string prop;  (** crawler_arn *)
  database_arn : string prop;  (** database_arn *)
  table_arn : string prop;  (** table_arn *)
}
[@@deriving yojson_of]

type aws_securitylake_custom_log_source__provider_details = {
  location : string prop;  (** location *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]

type aws_securitylake_custom_log_source = {
  event_classes : string prop list option; [@option]
      (** event_classes *)
  source_name : string prop;  (** source_name *)
  source_version : string prop option; [@option]
      (** source_version *)
  configuration :
    aws_securitylake_custom_log_source__configuration list;
}
[@@deriving yojson_of]
(** aws_securitylake_custom_log_source *)

type t = {
  attributes :
    aws_securitylake_custom_log_source__attributes list prop;
  event_classes : string list prop;
  id : string prop;
  provider_details :
    aws_securitylake_custom_log_source__provider_details list prop;
  source_name : string prop;
  source_version : string prop;
}

let aws_securitylake_custom_log_source ?event_classes ?source_version
    ~source_name ~configuration __resource_id =
  let __resource_type = "aws_securitylake_custom_log_source" in
  let __resource =
    ({ event_classes; source_name; source_version; configuration }
      : aws_securitylake_custom_log_source)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securitylake_custom_log_source __resource);
  let __resource_attributes =
    ({
       attributes =
         Prop.computed __resource_type __resource_id "attributes";
       event_classes =
         Prop.computed __resource_type __resource_id "event_classes";
       id = Prop.computed __resource_type __resource_id "id";
       provider_details =
         Prop.computed __resource_type __resource_id
           "provider_details";
       source_name =
         Prop.computed __resource_type __resource_id "source_name";
       source_version =
         Prop.computed __resource_type __resource_id "source_version";
     }
      : t)
  in
  __resource_attributes
