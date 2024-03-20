(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_shield_protection_health_check_association = {
  health_check_arn : string prop;  (** health_check_arn *)
  id : string prop option; [@option]  (** id *)
  shield_protection_id : string prop;  (** shield_protection_id *)
}
[@@deriving yojson_of]
(** aws_shield_protection_health_check_association *)

let aws_shield_protection_health_check_association ?id
    ~health_check_arn ~shield_protection_id () :
    aws_shield_protection_health_check_association =
  { health_check_arn; id; shield_protection_id }

type t = {
  health_check_arn : string prop;
  id : string prop;
  shield_protection_id : string prop;
}

let make ?id ~health_check_arn ~shield_protection_id __id =
  let __type = "aws_shield_protection_health_check_association" in
  let __attrs =
    ({
       health_check_arn =
         Prop.computed __type __id "health_check_arn";
       id = Prop.computed __type __id "id";
       shield_protection_id =
         Prop.computed __type __id "shield_protection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_protection_health_check_association
        (aws_shield_protection_health_check_association ?id
           ~health_check_arn ~shield_protection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~health_check_arn ~shield_protection_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~health_check_arn ~shield_protection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
