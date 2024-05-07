(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_autoscaling_notification = {
  group_names : string prop list;
  id : string prop option; [@option]
  notifications : string prop list;
  topic_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_notification) -> ()

let yojson_of_aws_autoscaling_notification =
  (function
   | {
       group_names = v_group_names;
       id = v_id;
       notifications = v_notifications;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_arn in
         ("topic_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_notifications
         in
         ("notifications", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_group_names
         in
         ("group_names", arg) :: bnds
       in
       `Assoc bnds
    : aws_autoscaling_notification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_notification

[@@@deriving.end]

let aws_autoscaling_notification ?id ~group_names ~notifications
    ~topic_arn () : aws_autoscaling_notification =
  { group_names; id; notifications; topic_arn }

type t = {
  tf_name : string;
  group_names : string list prop;
  id : string prop;
  notifications : string list prop;
  topic_arn : string prop;
}

let make ?id ~group_names ~notifications ~topic_arn __id =
  let __type = "aws_autoscaling_notification" in
  let __attrs =
    ({
       tf_name = __id;
       group_names = Prop.computed __type __id "group_names";
       id = Prop.computed __type __id "id";
       notifications = Prop.computed __type __id "notifications";
       topic_arn = Prop.computed __type __id "topic_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_notification
        (aws_autoscaling_notification ?id ~group_names ~notifications
           ~topic_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_names ~notifications ~topic_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~group_names ~notifications ~topic_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
