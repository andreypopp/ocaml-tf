(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securitylake_subscriber__source__aws_log_source_resource = {
  source_name : string option; [@option]  (** source_name *)
  source_version : string option; [@option]  (** source_version *)
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber__source__aws_log_source_resource *)

type aws_securitylake_subscriber__source__custom_log_source_resource__attributes = {
  crawler_arn : string;  (** crawler_arn *)
  database_arn : string;  (** database_arn *)
  table_arn : string;  (** table_arn *)
}
[@@deriving yojson_of]

type aws_securitylake_subscriber__source__custom_log_source_resource__provider = {
  location : string;  (** location *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]

type aws_securitylake_subscriber__source__custom_log_source_resource = {
  attributes :
    aws_securitylake_subscriber__source__custom_log_source_resource__attributes
    list;
      (** attributes *)
  provider :
    aws_securitylake_subscriber__source__custom_log_source_resource__provider
    list;
      (** provider *)
  source_name : string option; [@option]  (** source_name *)
  source_version : string option; [@option]  (** source_version *)
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber__source__custom_log_source_resource *)

type aws_securitylake_subscriber__source = {
  aws_log_source_resource :
    aws_securitylake_subscriber__source__aws_log_source_resource list;
  custom_log_source_resource :
    aws_securitylake_subscriber__source__custom_log_source_resource
    list;
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber__source *)

type aws_securitylake_subscriber__subscriber_identity = {
  external_id : string;  (** external_id *)
  principal : string;  (** principal *)
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber__subscriber_identity *)

type aws_securitylake_subscriber__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber__timeouts *)

type aws_securitylake_subscriber = {
  subscriber_description : string option; [@option]
      (** subscriber_description *)
  subscriber_name : string option; [@option]  (** subscriber_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  source : aws_securitylake_subscriber__source list;
  subscriber_identity :
    aws_securitylake_subscriber__subscriber_identity list;
  timeouts : aws_securitylake_subscriber__timeouts option;
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber *)

let aws_securitylake_subscriber ?subscriber_description
    ?subscriber_name ?tags ?timeouts ~source ~subscriber_identity
    __resource_id =
  let __resource_type = "aws_securitylake_subscriber" in
  let __resource =
    {
      subscriber_description;
      subscriber_name;
      tags;
      source;
      subscriber_identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securitylake_subscriber __resource);
  ()
