(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sns_topic_subscription = {
  confirmation_timeout_in_minutes : float prop option; [@option]
      (** confirmation_timeout_in_minutes *)
  delivery_policy : string prop option; [@option]
      (** delivery_policy *)
  endpoint : string prop;  (** endpoint *)
  endpoint_auto_confirms : bool prop option; [@option]
      (** endpoint_auto_confirms *)
  filter_policy : string prop option; [@option]  (** filter_policy *)
  filter_policy_scope : string prop option; [@option]
      (** filter_policy_scope *)
  id : string prop option; [@option]  (** id *)
  protocol : string prop;  (** protocol *)
  raw_message_delivery : bool prop option; [@option]
      (** raw_message_delivery *)
  redrive_policy : string prop option; [@option]
      (** redrive_policy *)
  replay_policy : string prop option; [@option]  (** replay_policy *)
  subscription_role_arn : string prop option; [@option]
      (** subscription_role_arn *)
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_sns_topic_subscription *)

let aws_sns_topic_subscription ?confirmation_timeout_in_minutes
    ?delivery_policy ?endpoint_auto_confirms ?filter_policy
    ?filter_policy_scope ?id ?raw_message_delivery ?redrive_policy
    ?replay_policy ?subscription_role_arn ~endpoint ~protocol
    ~topic_arn __resource_id =
  let __resource_type = "aws_sns_topic_subscription" in
  let __resource =
    {
      confirmation_timeout_in_minutes;
      delivery_policy;
      endpoint;
      endpoint_auto_confirms;
      filter_policy;
      filter_policy_scope;
      id;
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
