(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53recoverycontrolconfig_routing_control = {
  cluster_arn : string prop;
  control_panel_arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_route53recoverycontrolconfig_routing_control) -> ()

let yojson_of_aws_route53recoverycontrolconfig_routing_control =
  (function
   | {
       cluster_arn = v_cluster_arn;
       control_panel_arn = v_control_panel_arn;
       id = v_id;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_control_panel_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control_panel_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_arn in
         ("cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53recoverycontrolconfig_routing_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53recoverycontrolconfig_routing_control

[@@@deriving.end]

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
