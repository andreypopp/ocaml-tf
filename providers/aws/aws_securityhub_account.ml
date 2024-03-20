(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_account = {
  auto_enable_controls : bool prop option; [@option]
      (** auto_enable_controls *)
  control_finding_generator : string prop option; [@option]
      (** control_finding_generator *)
  enable_default_standards : bool prop option; [@option]
      (** enable_default_standards *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_securityhub_account *)

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
