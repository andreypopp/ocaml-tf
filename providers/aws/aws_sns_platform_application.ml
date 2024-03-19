(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sns_platform_application = {
  apple_platform_bundle_id : string prop option; [@option]
      (** apple_platform_bundle_id *)
  apple_platform_team_id : string prop option; [@option]
      (** apple_platform_team_id *)
  event_delivery_failure_topic_arn : string prop option; [@option]
      (** event_delivery_failure_topic_arn *)
  event_endpoint_created_topic_arn : string prop option; [@option]
      (** event_endpoint_created_topic_arn *)
  event_endpoint_deleted_topic_arn : string prop option; [@option]
      (** event_endpoint_deleted_topic_arn *)
  event_endpoint_updated_topic_arn : string prop option; [@option]
      (** event_endpoint_updated_topic_arn *)
  failure_feedback_role_arn : string prop option; [@option]
      (** failure_feedback_role_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  platform : string prop;  (** platform *)
  platform_credential : string prop;  (** platform_credential *)
  platform_principal : string prop option; [@option]
      (** platform_principal *)
  success_feedback_role_arn : string prop option; [@option]
      (** success_feedback_role_arn *)
  success_feedback_sample_rate : string prop option; [@option]
      (** success_feedback_sample_rate *)
}
[@@deriving yojson_of]
(** aws_sns_platform_application *)

let aws_sns_platform_application ?apple_platform_bundle_id
    ?apple_platform_team_id ?event_delivery_failure_topic_arn
    ?event_endpoint_created_topic_arn
    ?event_endpoint_deleted_topic_arn
    ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn ?id
    ?platform_principal ?success_feedback_role_arn
    ?success_feedback_sample_rate ~name ~platform
    ~platform_credential () : aws_sns_platform_application =
  {
    apple_platform_bundle_id;
    apple_platform_team_id;
    event_delivery_failure_topic_arn;
    event_endpoint_created_topic_arn;
    event_endpoint_deleted_topic_arn;
    event_endpoint_updated_topic_arn;
    failure_feedback_role_arn;
    id;
    name;
    platform;
    platform_credential;
    platform_principal;
    success_feedback_role_arn;
    success_feedback_sample_rate;
  }

type t = {
  apple_platform_bundle_id : string prop;
  apple_platform_team_id : string prop;
  arn : string prop;
  event_delivery_failure_topic_arn : string prop;
  event_endpoint_created_topic_arn : string prop;
  event_endpoint_deleted_topic_arn : string prop;
  event_endpoint_updated_topic_arn : string prop;
  failure_feedback_role_arn : string prop;
  id : string prop;
  name : string prop;
  platform : string prop;
  platform_credential : string prop;
  platform_principal : string prop;
  success_feedback_role_arn : string prop;
  success_feedback_sample_rate : string prop;
}

let register ?tf_module ?apple_platform_bundle_id
    ?apple_platform_team_id ?event_delivery_failure_topic_arn
    ?event_endpoint_created_topic_arn
    ?event_endpoint_deleted_topic_arn
    ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn ?id
    ?platform_principal ?success_feedback_role_arn
    ?success_feedback_sample_rate ~name ~platform
    ~platform_credential __resource_id =
  let __resource_type = "aws_sns_platform_application" in
  let __resource =
    aws_sns_platform_application ?apple_platform_bundle_id
      ?apple_platform_team_id ?event_delivery_failure_topic_arn
      ?event_endpoint_created_topic_arn
      ?event_endpoint_deleted_topic_arn
      ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn
      ?id ?platform_principal ?success_feedback_role_arn
      ?success_feedback_sample_rate ~name ~platform
      ~platform_credential ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sns_platform_application __resource);
  let __resource_attributes =
    ({
       apple_platform_bundle_id =
         Prop.computed __resource_type __resource_id
           "apple_platform_bundle_id";
       apple_platform_team_id =
         Prop.computed __resource_type __resource_id
           "apple_platform_team_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       event_delivery_failure_topic_arn =
         Prop.computed __resource_type __resource_id
           "event_delivery_failure_topic_arn";
       event_endpoint_created_topic_arn =
         Prop.computed __resource_type __resource_id
           "event_endpoint_created_topic_arn";
       event_endpoint_deleted_topic_arn =
         Prop.computed __resource_type __resource_id
           "event_endpoint_deleted_topic_arn";
       event_endpoint_updated_topic_arn =
         Prop.computed __resource_type __resource_id
           "event_endpoint_updated_topic_arn";
       failure_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "failure_feedback_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       platform =
         Prop.computed __resource_type __resource_id "platform";
       platform_credential =
         Prop.computed __resource_type __resource_id
           "platform_credential";
       platform_principal =
         Prop.computed __resource_type __resource_id
           "platform_principal";
       success_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "success_feedback_role_arn";
       success_feedback_sample_rate =
         Prop.computed __resource_type __resource_id
           "success_feedback_sample_rate";
     }
      : t)
  in
  __resource_attributes
