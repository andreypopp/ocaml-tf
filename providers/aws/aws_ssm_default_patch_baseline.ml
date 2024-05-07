(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_default_patch_baseline = {
  baseline_id : string prop;
  id : string prop option; [@option]
  operating_system : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_default_patch_baseline) -> ()

let yojson_of_aws_ssm_default_patch_baseline =
  (function
   | {
       baseline_id = v_baseline_id;
       id = v_id;
       operating_system = v_operating_system;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_operating_system
         in
         ("operating_system", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_baseline_id in
         ("baseline_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssm_default_patch_baseline ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_default_patch_baseline

[@@@deriving.end]

let aws_ssm_default_patch_baseline ?id ~baseline_id ~operating_system
    () : aws_ssm_default_patch_baseline =
  { baseline_id; id; operating_system }

type t = {
  tf_name : string;
  baseline_id : string prop;
  id : string prop;
  operating_system : string prop;
}

let make ?id ~baseline_id ~operating_system __id =
  let __type = "aws_ssm_default_patch_baseline" in
  let __attrs =
    ({
       tf_name = __id;
       baseline_id = Prop.computed __type __id "baseline_id";
       id = Prop.computed __type __id "id";
       operating_system =
         Prop.computed __type __id "operating_system";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_default_patch_baseline
        (aws_ssm_default_patch_baseline ?id ~baseline_id
           ~operating_system ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~baseline_id ~operating_system __id =
  let (r : _ Tf_core.resource) =
    make ?id ~baseline_id ~operating_system __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
