(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_account = {
  auto_enable_controls : bool prop option; [@option]
  control_finding_generator : string prop option; [@option]
  enable_default_standards : bool prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_account) -> ()

let yojson_of_aws_securityhub_account =
  (function
   | {
       auto_enable_controls = v_auto_enable_controls;
       control_finding_generator = v_control_finding_generator;
       enable_default_standards = v_enable_default_standards;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_enable_default_standards with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_default_standards", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control_finding_generator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control_finding_generator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_enable_controls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_enable_controls", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_securityhub_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_account

[@@@deriving.end]

let aws_securityhub_account ?auto_enable_controls
    ?control_finding_generator ?enable_default_standards ?id () :
    aws_securityhub_account =
  {
    auto_enable_controls;
    control_finding_generator;
    enable_default_standards;
    id;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_enable_controls : bool prop;
  control_finding_generator : string prop;
  enable_default_standards : bool prop;
  id : string prop;
}

let make ?auto_enable_controls ?control_finding_generator
    ?enable_default_standards ?id __id =
  let __type = "aws_securityhub_account" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_enable_controls =
         Prop.computed __type __id "auto_enable_controls";
       control_finding_generator =
         Prop.computed __type __id "control_finding_generator";
       enable_default_standards =
         Prop.computed __type __id "enable_default_standards";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_account
        (aws_securityhub_account ?auto_enable_controls
           ?control_finding_generator ?enable_default_standards ?id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_enable_controls
    ?control_finding_generator ?enable_default_standards ?id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_enable_controls ?control_finding_generator
      ?enable_default_standards ?id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
