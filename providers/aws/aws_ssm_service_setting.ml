(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_service_setting = {
  id : string prop option; [@option]
  setting_id : string prop;
  setting_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_service_setting) -> ()

let yojson_of_aws_ssm_service_setting =
  (function
   | {
       id = v_id;
       setting_id = v_setting_id;
       setting_value = v_setting_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_setting_value in
         ("setting_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_setting_id in
         ("setting_id", arg) :: bnds
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
    : aws_ssm_service_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_service_setting

[@@@deriving.end]

let aws_ssm_service_setting ?id ~setting_id ~setting_value () :
    aws_ssm_service_setting =
  { id; setting_id; setting_value }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  setting_id : string prop;
  setting_value : string prop;
  status : string prop;
}

let make ?id ~setting_id ~setting_value __id =
  let __type = "aws_ssm_service_setting" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       setting_id = Prop.computed __type __id "setting_id";
       setting_value = Prop.computed __type __id "setting_value";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_service_setting
        (aws_ssm_service_setting ?id ~setting_id ~setting_value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~setting_id ~setting_value __id =
  let (r : _ Tf_core.resource) =
    make ?id ~setting_id ~setting_value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
