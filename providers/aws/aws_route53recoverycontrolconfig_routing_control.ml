(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53recoverycontrolconfig_routing_control = {
  cluster_arn : string prop;  (** cluster_arn *)
  control_panel_arn : string prop option; [@option]
      (** control_panel_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_routing_control *)

let aws_route53recoverycontrolconfig_routing_control
    ?control_panel_arn ?id ~cluster_arn ~name () :
    aws_route53recoverycontrolconfig_routing_control =
  { cluster_arn; control_panel_arn; id; name }

type t = {
  arn : string prop;
  cluster_arn : string prop;
  control_panel_arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let make ?control_panel_arn ?id ~cluster_arn ~name __id =
  let __type = "aws_route53recoverycontrolconfig_routing_control" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_arn = Prop.computed __type __id "cluster_arn";
       control_panel_arn =
         Prop.computed __type __id "control_panel_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53recoverycontrolconfig_routing_control
        (aws_route53recoverycontrolconfig_routing_control
           ?control_panel_arn ?id ~cluster_arn ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?control_panel_arn ?id ~cluster_arn ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?control_panel_arn ?id ~cluster_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
