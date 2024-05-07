(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_patch_group = {
  baseline_id : string prop;
  id : string prop option; [@option]
  patch_group : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_patch_group) -> ()

let yojson_of_aws_ssm_patch_group =
  (function
   | {
       baseline_id = v_baseline_id;
       id = v_id;
       patch_group = v_patch_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_patch_group in
         ("patch_group", arg) :: bnds
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
    : aws_ssm_patch_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_patch_group

[@@@deriving.end]

let aws_ssm_patch_group ?id ~baseline_id ~patch_group () :
    aws_ssm_patch_group =
  { baseline_id; id; patch_group }

type t = {
  tf_name : string;
  baseline_id : string prop;
  id : string prop;
  patch_group : string prop;
}

let make ?id ~baseline_id ~patch_group __id =
  let __type = "aws_ssm_patch_group" in
  let __attrs =
    ({
       tf_name = __id;
       baseline_id = Prop.computed __type __id "baseline_id";
       id = Prop.computed __type __id "id";
       patch_group = Prop.computed __type __id "patch_group";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_patch_group
        (aws_ssm_patch_group ?id ~baseline_id ~patch_group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~baseline_id ~patch_group __id =
  let (r : _ Tf_core.resource) =
    make ?id ~baseline_id ~patch_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
