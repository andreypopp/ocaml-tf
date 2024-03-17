(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_lifecycle_hook = {
  autoscaling_group_name : string;  (** autoscaling_group_name *)
  heartbeat_timeout : float option; [@option]
      (** heartbeat_timeout *)
  lifecycle_transition : string;  (** lifecycle_transition *)
  name : string;  (** name *)
  notification_metadata : string option; [@option]
      (** notification_metadata *)
  notification_target_arn : string option; [@option]
      (** notification_target_arn *)
  role_arn : string option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_lifecycle_hook *)

let aws_autoscaling_lifecycle_hook ?heartbeat_timeout
    ?notification_metadata ?notification_target_arn ?role_arn
    ~autoscaling_group_name ~lifecycle_transition ~name __resource_id
    =
  let __resource_type = "aws_autoscaling_lifecycle_hook" in
  let __resource =
    {
      autoscaling_group_name;
      heartbeat_timeout;
      lifecycle_transition;
      name;
      notification_metadata;
      notification_target_arn;
      role_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_lifecycle_hook __resource);
  ()
