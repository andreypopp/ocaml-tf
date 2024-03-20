(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_autoscaling_lifecycle_hook ?default_result ?heartbeat_timeout
    ?id ?notification_metadata ?notification_target_arn ?role_arn
    ~autoscaling_group_name ~lifecycle_transition ~name () :
    aws_autoscaling_lifecycle_hook =
  {
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

let make ?default_result ?heartbeat_timeout ?id
    ?notification_metadata ?notification_target_arn ?role_arn
    ~autoscaling_group_name ~lifecycle_transition ~name __id =
  let __type = "aws_autoscaling_lifecycle_hook" in
  let __attrs =
    ({
       autoscaling_group_name =
         Prop.computed __type __id "autoscaling_group_name";
       default_result = Prop.computed __type __id "default_result";
       heartbeat_timeout =
         Prop.computed __type __id "heartbeat_timeout";
       id = Prop.computed __type __id "id";
       lifecycle_transition =
         Prop.computed __type __id "lifecycle_transition";
       name = Prop.computed __type __id "name";
       notification_metadata =
         Prop.computed __type __id "notification_metadata";
       notification_target_arn =
         Prop.computed __type __id "notification_target_arn";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_lifecycle_hook
        (aws_autoscaling_lifecycle_hook ?default_result
           ?heartbeat_timeout ?id ?notification_metadata
           ?notification_target_arn ?role_arn ~autoscaling_group_name
           ~lifecycle_transition ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_result ?heartbeat_timeout ?id
    ?notification_metadata ?notification_target_arn ?role_arn
    ~autoscaling_group_name ~lifecycle_transition ~name __id =
  let (r : _ Tf_core.resource) =
    make ?default_result ?heartbeat_timeout ?id
      ?notification_metadata ?notification_target_arn ?role_arn
      ~autoscaling_group_name ~lifecycle_transition ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
