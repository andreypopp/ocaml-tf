(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53recoverycontrolconfig_control_panel = {
  cluster_arn : string prop;  (** cluster_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_control_panel *)

let aws_route53recoverycontrolconfig_control_panel ?id ~cluster_arn
    ~name () : aws_route53recoverycontrolconfig_control_panel =
  { cluster_arn; id; name }

type t = {
  arn : string prop;
  cluster_arn : string prop;
  default_control_panel : bool prop;
  id : string prop;
  name : string prop;
  routing_control_count : float prop;
  status : string prop;
}

let make ?id ~cluster_arn ~name __id =
  let __type = "aws_route53recoverycontrolconfig_control_panel" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_arn = Prop.computed __type __id "cluster_arn";
       default_control_panel =
         Prop.computed __type __id "default_control_panel";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       routing_control_count =
         Prop.computed __type __id "routing_control_count";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53recoverycontrolconfig_control_panel
        (aws_route53recoverycontrolconfig_control_panel ?id
           ~cluster_arn ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_arn ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_arn ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
