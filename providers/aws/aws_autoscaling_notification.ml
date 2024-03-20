(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_autoscaling_notification = {
  group_names : string prop list;  (** group_names *)
  id : string prop option; [@option]  (** id *)
  notifications : string prop list;  (** notifications *)
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_notification *)

let aws_autoscaling_notification ?id ~group_names ~notifications
    ~topic_arn () : aws_autoscaling_notification =
  { group_names; id; notifications; topic_arn }

type t = {
  group_names : string list prop;
  id : string prop;
  notifications : string list prop;
  topic_arn : string prop;
}

let make ?id ~group_names ~notifications ~topic_arn __id =
  let __type = "aws_autoscaling_notification" in
  let __attrs =
    ({
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
