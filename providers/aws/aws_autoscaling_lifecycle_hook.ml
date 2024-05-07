(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_autoscaling_lifecycle_hook = {
  autoscaling_group_name : string prop;
  default_result : string prop option; [@option]
  heartbeat_timeout : float prop option; [@option]
  id : string prop option; [@option]
  lifecycle_transition : string prop;
  name : string prop;
  notification_metadata : string prop option; [@option]
  notification_target_arn : string prop option; [@option]
  role_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_lifecycle_hook) -> ()

let yojson_of_aws_autoscaling_lifecycle_hook =
  (function
   | {
       autoscaling_group_name = v_autoscaling_group_name;
       default_result = v_default_result;
       heartbeat_timeout = v_heartbeat_timeout;
       id = v_id;
       lifecycle_transition = v_lifecycle_transition;
       name = v_name;
       notification_metadata = v_notification_metadata;
       notification_target_arn = v_notification_target_arn;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_target_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_target_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lifecycle_transition
         in
         ("lifecycle_transition", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_heartbeat_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "heartbeat_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_result with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_result", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_autoscaling_group_name
         in
         ("autoscaling_group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_autoscaling_lifecycle_hook ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_lifecycle_hook

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
