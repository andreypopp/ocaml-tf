(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_autoscaling_attachment = {
  autoscaling_group_name : string prop;
  elb : string prop option; [@option]
  id : string prop option; [@option]
  lb_target_group_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_attachment) -> ()

let yojson_of_aws_autoscaling_attachment =
  (function
   | {
       autoscaling_group_name = v_autoscaling_group_name;
       elb = v_elb;
       id = v_id;
       lb_target_group_arn = v_lb_target_group_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lb_target_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lb_target_group_arn", arg in
             bnd :: bnds
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
         match v_elb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elb", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_autoscaling_group_name
         in
         ("autoscaling_group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_autoscaling_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_attachment

[@@@deriving.end]

let aws_autoscaling_attachment ?elb ?id ?lb_target_group_arn
    ~autoscaling_group_name () : aws_autoscaling_attachment =
  { autoscaling_group_name; elb; id; lb_target_group_arn }

type t = {
  tf_name : string;
  autoscaling_group_name : string prop;
  elb : string prop;
  id : string prop;
  lb_target_group_arn : string prop;
}

let make ?elb ?id ?lb_target_group_arn ~autoscaling_group_name __id =
  let __type = "aws_autoscaling_attachment" in
  let __attrs =
    ({
       tf_name = __id;
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
