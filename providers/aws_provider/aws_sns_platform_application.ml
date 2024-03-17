(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sns_platform_application = {
  apple_platform_bundle_id : string option; [@option]
      (** apple_platform_bundle_id *)
  apple_platform_team_id : string option; [@option]
      (** apple_platform_team_id *)
  event_delivery_failure_topic_arn : string option; [@option]
      (** event_delivery_failure_topic_arn *)
  event_endpoint_created_topic_arn : string option; [@option]
      (** event_endpoint_created_topic_arn *)
  event_endpoint_deleted_topic_arn : string option; [@option]
      (** event_endpoint_deleted_topic_arn *)
  event_endpoint_updated_topic_arn : string option; [@option]
      (** event_endpoint_updated_topic_arn *)
  failure_feedback_role_arn : string option; [@option]
      (** failure_feedback_role_arn *)
  name : string;  (** name *)
  platform : string;  (** platform *)
  platform_credential : string;  (** platform_credential *)
  platform_principal : string option; [@option]
      (** platform_principal *)
  success_feedback_role_arn : string option; [@option]
      (** success_feedback_role_arn *)
  success_feedback_sample_rate : string option; [@option]
      (** success_feedback_sample_rate *)
}
[@@deriving yojson_of]
(** aws_sns_platform_application *)

let aws_sns_platform_application ?apple_platform_bundle_id
    ?apple_platform_team_id ?event_delivery_failure_topic_arn
    ?event_endpoint_created_topic_arn
    ?event_endpoint_deleted_topic_arn
    ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn
    ?platform_principal ?success_feedback_role_arn
    ?success_feedback_sample_rate ~name ~platform
    ~platform_credential __resource_id =
  let __resource_type = "aws_sns_platform_application" in
  let __resource =
    {
      apple_platform_bundle_id;
      apple_platform_team_id;
      event_delivery_failure_topic_arn;
      event_endpoint_created_topic_arn;
      event_endpoint_deleted_topic_arn;
      event_endpoint_updated_topic_arn;
      failure_feedback_role_arn;
      name;
      platform;
      platform_credential;
      platform_principal;
      success_feedback_role_arn;
      success_feedback_sample_rate;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sns_platform_application __resource);
  ()
