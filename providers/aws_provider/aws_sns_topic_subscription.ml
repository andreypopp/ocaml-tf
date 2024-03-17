(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sns_topic_subscription = {
  confirmation_timeout_in_minutes : float option; [@option]
      (** confirmation_timeout_in_minutes *)
  delivery_policy : string option; [@option]  (** delivery_policy *)
  endpoint : string;  (** endpoint *)
  endpoint_auto_confirms : bool option; [@option]
      (** endpoint_auto_confirms *)
  filter_policy : string option; [@option]  (** filter_policy *)
  protocol : string;  (** protocol *)
  raw_message_delivery : bool option; [@option]
      (** raw_message_delivery *)
  redrive_policy : string option; [@option]  (** redrive_policy *)
  replay_policy : string option; [@option]  (** replay_policy *)
  subscription_role_arn : string option; [@option]
      (** subscription_role_arn *)
  topic_arn : string;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_sns_topic_subscription *)

let aws_sns_topic_subscription ?confirmation_timeout_in_minutes
    ?delivery_policy ?endpoint_auto_confirms ?filter_policy
    ?raw_message_delivery ?redrive_policy ?replay_policy
    ?subscription_role_arn ~endpoint ~protocol ~topic_arn
    __resource_id =
  let __resource_type = "aws_sns_topic_subscription" in
  let __resource =
    {
      confirmation_timeout_in_minutes;
      delivery_policy;
      endpoint;
      endpoint_auto_confirms;
      filter_policy;
      protocol;
      raw_message_delivery;
      redrive_policy;
      replay_policy;
      subscription_role_arn;
      topic_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sns_topic_subscription __resource);
  ()
