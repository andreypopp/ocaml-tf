(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_autoscaling_attachment = {
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  elb : string prop option; [@option]  (** elb *)
  id : string prop option; [@option]  (** id *)
  lb_target_group_arn : string prop option; [@option]
      (** lb_target_group_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_attachment *)

let aws_autoscaling_attachment ?elb ?id ?lb_target_group_arn
    ~autoscaling_group_name () : aws_autoscaling_attachment =
  { autoscaling_group_name; elb; id; lb_target_group_arn }

type t = {
  autoscaling_group_name : string prop;
  elb : string prop;
  id : string prop;
  lb_target_group_arn : string prop;
}

let make ?elb ?id ?lb_target_group_arn ~autoscaling_group_name __id =
  let __type = "aws_autoscaling_attachment" in
  let __attrs =
    ({
       autoscaling_group_name =
         Prop.computed __type __id "autoscaling_group_name";
       elb = Prop.computed __type __id "elb";
       id = Prop.computed __type __id "id";
       lb_target_group_arn =
         Prop.computed __type __id "lb_target_group_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_attachment
        (aws_autoscaling_attachment ?elb ?id ?lb_target_group_arn
           ~autoscaling_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?elb ?id ?lb_target_group_arn
    ~autoscaling_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?elb ?id ?lb_target_group_arn ~autoscaling_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
