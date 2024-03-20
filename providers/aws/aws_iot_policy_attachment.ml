(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  target : string prop;  (** target *)
}
[@@deriving yojson_of]
(** aws_iot_policy_attachment *)

let aws_iot_policy_attachment ?id ~policy ~target () :
    aws_iot_policy_attachment =
  { id; policy; target }

type t = {
  id : string prop;
  policy : string prop;
  target : string prop;
}

let make ?id ~policy ~target __id =
  let __type = "aws_iot_policy_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       target = Prop.computed __type __id "target";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_policy_attachment
        (aws_iot_policy_attachment ?id ~policy ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~target __id =
  let (r : _ Tf_core.resource) = make ?id ~policy ~target __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
