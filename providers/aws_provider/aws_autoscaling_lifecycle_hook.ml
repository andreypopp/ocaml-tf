(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_lifecycle_hook = {
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  default_result : string prop option; [@option]
      (** default_result *)
  heartbeat_timeout : float prop option; [@option]
      (** heartbeat_timeout *)
  id : string prop option; [@option]  (** id *)
  lifecycle_transition : string prop;  (** lifecycle_transition *)
  name : string prop;  (** name *)
  notification_metadata : string prop option; [@option]
      (** notification_metadata *)
  notification_target_arn : string prop option; [@option]
      (** notification_target_arn *)
  role_arn : string prop option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_lifecycle_hook *)

type t = {
  autoscaling_group_name : string prop;
  default_result : string prop;
  heartbeat_timeout : float prop;
  id : string prop;
  lifecycle_transition : string prop;
  name : string prop;
  notification_metadata : string prop;
  notification_target_arn : string prop;
  role_arn : string prop;
}

let aws_autoscaling_lifecycle_hook ?default_result ?heartbeat_timeout
    ?id ?notification_metadata ?notification_target_arn ?role_arn
    ~autoscaling_group_name ~lifecycle_transition ~name __resource_id
    =
  let __resource_type = "aws_autoscaling_lifecycle_hook" in
  let __resource =
    ({
       autoscaling_group_name;
       default_result;
       heartbeat_timeout;
       id;
       lifecycle_transition;
       name;
       notification_metadata;
       notification_target_arn;
       role_arn;
     }
      : aws_autoscaling_lifecycle_hook)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_lifecycle_hook __resource);
  let __resource_attributes =
    ({
       autoscaling_group_name =
         Prop.computed __resource_type __resource_id
           "autoscaling_group_name";
       default_result =
         Prop.computed __resource_type __resource_id "default_result";
       heartbeat_timeout =
         Prop.computed __resource_type __resource_id
           "heartbeat_timeout";
       id = Prop.computed __resource_type __resource_id "id";
       lifecycle_transition =
         Prop.computed __resource_type __resource_id
           "lifecycle_transition";
       name = Prop.computed __resource_type __resource_id "name";
       notification_metadata =
         Prop.computed __resource_type __resource_id
           "notification_metadata";
       notification_target_arn =
         Prop.computed __resource_type __resource_id
           "notification_target_arn";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
