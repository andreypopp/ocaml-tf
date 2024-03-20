(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_patch_group = {
  baseline_id : string prop;  (** baseline_id *)
  id : string prop option; [@option]  (** id *)
  patch_group : string prop;  (** patch_group *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_group *)

let aws_ssm_patch_group ?id ~baseline_id ~patch_group () :
    aws_ssm_patch_group =
  { baseline_id; id; patch_group }

type t = {
  baseline_id : string prop;
  id : string prop;
  patch_group : string prop;
}

let make ?id ~baseline_id ~patch_group __id =
  let __type = "aws_ssm_patch_group" in
  let __attrs =
    ({
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
