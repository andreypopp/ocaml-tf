(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53recoverycontrolconfig_control_panel = {
  cluster_arn : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_route53recoverycontrolconfig_control_panel) -> ()

let yojson_of_aws_route53recoverycontrolconfig_control_panel =
  (function
   | { cluster_arn = v_cluster_arn; id = v_id; name = v_name } ->
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
         let arg = yojson_of_prop yojson_of_string v_cluster_arn in
         ("cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53recoverycontrolconfig_control_panel ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53recoverycontrolconfig_control_panel

[@@@deriving.end]

let aws_route53recoverycontrolconfig_control_panel ?id ~cluster_arn
    ~name () : aws_route53recoverycontrolconfig_control_panel =
  { cluster_arn; id; name }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
