(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_default_patch_baseline = {
  baseline_id : string prop;  (** baseline_id *)
  id : string prop option; [@option]  (** id *)
  operating_system : string prop;  (** operating_system *)
}
[@@deriving yojson_of]
(** aws_ssm_default_patch_baseline *)

let aws_ssm_default_patch_baseline ?id ~baseline_id ~operating_system
    () : aws_ssm_default_patch_baseline =
  { baseline_id; id; operating_system }

type t = {
  baseline_id : string prop;
  id : string prop;
  operating_system : string prop;
}

let make ?id ~baseline_id ~operating_system __id =
  let __type = "aws_ssm_default_patch_baseline" in
  let __attrs =
    ({
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
