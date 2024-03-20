(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_service_setting = {
  id : string prop option; [@option]  (** id *)
  setting_id : string prop;  (** setting_id *)
  setting_value : string prop;  (** setting_value *)
}
[@@deriving yojson_of]
(** aws_ssm_service_setting *)

let aws_ssm_service_setting ?id ~setting_id ~setting_value () :
    aws_ssm_service_setting =
  { id; setting_id; setting_value }

type t = {
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
