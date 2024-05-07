(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_policy_attachment = {
  id : string prop option; [@option]
  policy : string prop;
  target : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_policy_attachment) -> ()

let yojson_of_aws_iot_policy_attachment =
  (function
   | { id = v_id; policy = v_policy; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iot_policy_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_policy_attachment

[@@@deriving.end]

let aws_iot_policy_attachment ?id ~policy ~target () :
    aws_iot_policy_attachment =
  { id; policy; target }

type t = {
  tf_name : string;
  id : string prop;
  policy : string prop;
  target : string prop;
}

let make ?id ~policy ~target __id =
  let __type = "aws_iot_policy_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       target = Prop.computed __type __id "target";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_policy_attachment
        (aws_iot_policy_attachment ?id ~policy ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~target __id =
  let (r : _ Tf_core.resource) = make ?id ~policy ~target __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
