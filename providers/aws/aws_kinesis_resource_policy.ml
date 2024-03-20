(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kinesis_resource_policy = {
  policy : string prop;  (** policy *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_resource_policy *)

let aws_kinesis_resource_policy ~policy ~resource_arn () :
    aws_kinesis_resource_policy =
  { policy; resource_arn }

type t = {
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

let make ~policy ~resource_arn __id =
  let __type = "aws_kinesis_resource_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_resource_policy
        (aws_kinesis_resource_policy ~policy ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ~policy ~resource_arn __id =
  let (r : _ Tf_core.resource) = make ~policy ~resource_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
