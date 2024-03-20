(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?apple_platform_bundle_id ?apple_platform_team_id
    ?event_delivery_failure_topic_arn
    ?event_endpoint_created_topic_arn
    ?event_endpoint_deleted_topic_arn
    ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn ?id
    ?platform_principal ?success_feedback_role_arn
    ?success_feedback_sample_rate ~name ~platform
    ~platform_credential __id =
  let __type = "aws_sns_platform_application" in
  let __attrs =
    ({
       apple_platform_bundle_id =
         Prop.computed __type __id "apple_platform_bundle_id";
       apple_platform_team_id =
         Prop.computed __type __id "apple_platform_team_id";
       arn = Prop.computed __type __id "arn";
       event_delivery_failure_topic_arn =
         Prop.computed __type __id "event_delivery_failure_topic_arn";
       event_endpoint_created_topic_arn =
         Prop.computed __type __id "event_endpoint_created_topic_arn";
       event_endpoint_deleted_topic_arn =
         Prop.computed __type __id "event_endpoint_deleted_topic_arn";
       event_endpoint_updated_topic_arn =
         Prop.computed __type __id "event_endpoint_updated_topic_arn";
       failure_feedback_role_arn =
         Prop.computed __type __id "failure_feedback_role_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       platform = Prop.computed __type __id "platform";
       platform_credential =
         Prop.computed __type __id "platform_credential";
       platform_principal =
         Prop.computed __type __id "platform_principal";
       success_feedback_role_arn =
         Prop.computed __type __id "success_feedback_role_arn";
       success_feedback_sample_rate =
         Prop.computed __type __id "success_feedback_sample_rate";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sns_platform_application
        (aws_sns_platform_application ?apple_platform_bundle_id
           ?apple_platform_team_id ?event_delivery_failure_topic_arn
           ?event_endpoint_created_topic_arn
           ?event_endpoint_deleted_topic_arn
           ?event_endpoint_updated_topic_arn
           ?failure_feedback_role_arn ?id ?platform_principal
           ?success_feedback_role_arn ?success_feedback_sample_rate
           ~name ~platform ~platform_credential ());
    attrs = __attrs;
  }

let register ?tf_module ?apple_platform_bundle_id
    ?apple_platform_team_id ?event_delivery_failure_topic_arn
    ?event_endpoint_created_topic_arn
    ?event_endpoint_deleted_topic_arn
    ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn ?id
    ?platform_principal ?success_feedback_role_arn
    ?success_feedback_sample_rate ~name ~platform
    ~platform_credential __id =
  let (r : _ Tf_core.resource) =
    make ?apple_platform_bundle_id ?apple_platform_team_id
      ?event_delivery_failure_topic_arn
      ?event_endpoint_created_topic_arn
      ?event_endpoint_deleted_topic_arn
      ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn
      ?id ?platform_principal ?success_feedback_role_arn
      ?success_feedback_sample_rate ~name ~platform
      ~platform_credential __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
