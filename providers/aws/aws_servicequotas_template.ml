(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_servicequotas_template = {
  quota_code : string prop;
  region : string prop;
  service_code : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicequotas_template) -> ()

let yojson_of_aws_servicequotas_template =
  (function
   | {
       quota_code = v_quota_code;
       region = v_region;
       service_code = v_service_code;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_code in
         ("service_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_quota_code in
         ("quota_code", arg) :: bnds
       in
       `Assoc bnds
    : aws_servicequotas_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicequotas_template

[@@@deriving.end]

let aws_servicequotas_template ~quota_code ~region ~service_code
    ~value () : aws_servicequotas_template =
  { quota_code; region; service_code; value }

type t = {
  tf_name : string;
  global_quota : bool prop;
  id : string prop;
  quota_code : string prop;
  quota_name : string prop;
  region : string prop;
  service_code : string prop;
  service_name : string prop;
  unit : string prop;
  value : float prop;
}

let make ~quota_code ~region ~service_code ~value __id =
  let __type = "aws_servicequotas_template" in
  let __attrs =
    ({
       tf_name = __id;
       global_quota = Prop.computed __type __id "global_quota";
       id = Prop.computed __type __id "id";
       quota_code = Prop.computed __type __id "quota_code";
       quota_name = Prop.computed __type __id "quota_name";
       region = Prop.computed __type __id "region";
       service_code = Prop.computed __type __id "service_code";
       service_name = Prop.computed __type __id "service_name";
       unit = Prop.computed __type __id "unit";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicequotas_template
        (aws_servicequotas_template ~quota_code ~region ~service_code
           ~value ());
    attrs = __attrs;
  }

let register ?tf_module ~quota_code ~region ~service_code ~value __id
    =
  let (r : _ Tf_core.resource) =
    make ~quota_code ~region ~service_code ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
