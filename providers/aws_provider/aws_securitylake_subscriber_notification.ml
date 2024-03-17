(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securitylake_subscriber_notification__configuration__https_notification_configuration = {
  authorization_api_key_name : string prop option; [@option]
      (** authorization_api_key_name *)
  authorization_api_key_value : string prop option; [@option]
      (** authorization_api_key_value *)
  endpoint : string prop option; [@option]  (** endpoint *)
  http_method : string prop option; [@option]  (** http_method *)
  target_role_arn : string prop option; [@option]
      (** target_role_arn *)
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber_notification__configuration__https_notification_configuration *)

type aws_securitylake_subscriber_notification__configuration__sqs_notification_configuration =
  unit
[@@deriving yojson_of]

type aws_securitylake_subscriber_notification__configuration = {
  https_notification_configuration :
    aws_securitylake_subscriber_notification__configuration__https_notification_configuration
    list;
  sqs_notification_configuration :
    aws_securitylake_subscriber_notification__configuration__sqs_notification_configuration
    list;
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber_notification__configuration *)

type aws_securitylake_subscriber_notification = {
  subscriber_id : string prop;  (** subscriber_id *)
  configuration :
    aws_securitylake_subscriber_notification__configuration list;
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber_notification *)

type t = {
  endpoint_id : string prop;
  id : string prop;
  subscriber_id : string prop;
}

let aws_securitylake_subscriber_notification ~subscriber_id
    ~configuration __resource_id =
  let __resource_type = "aws_securitylake_subscriber_notification" in
  let __resource =
    ({ subscriber_id; configuration }
      : aws_securitylake_subscriber_notification)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securitylake_subscriber_notification __resource);
  let __resource_attributes =
    ({
       endpoint_id =
         Prop.computed __resource_type __resource_id "endpoint_id";
       id = Prop.computed __resource_type __resource_id "id";
       subscriber_id =
         Prop.computed __resource_type __resource_id "subscriber_id";
     }
      : t)
  in
  __resource_attributes
