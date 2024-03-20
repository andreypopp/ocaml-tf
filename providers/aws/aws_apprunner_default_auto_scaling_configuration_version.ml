(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apprunner_default_auto_scaling_configuration_version = {
  auto_scaling_configuration_arn : string prop;
      (** auto_scaling_configuration_arn *)
}
[@@deriving yojson_of]
(** aws_apprunner_default_auto_scaling_configuration_version *)

let aws_apprunner_default_auto_scaling_configuration_version
    ~auto_scaling_configuration_arn () :
    aws_apprunner_default_auto_scaling_configuration_version =
  { auto_scaling_configuration_arn }

type t = {
  auto_scaling_configuration_arn : string prop;
  id : string prop;
}

let make ~auto_scaling_configuration_arn __id =
  let __type =
    "aws_apprunner_default_auto_scaling_configuration_version"
  in
  let __attrs =
    ({
       auto_scaling_configuration_arn =
         Prop.computed __type __id "auto_scaling_configuration_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_default_auto_scaling_configuration_version
        (aws_apprunner_default_auto_scaling_configuration_version
           ~auto_scaling_configuration_arn ());
    attrs = __attrs;
  }

let register ?tf_module ~auto_scaling_configuration_arn __id =
  let (r : _ Tf_core.resource) =
    make ~auto_scaling_configuration_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
