(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_standards_subscription = {
  id : string prop option; [@option]  (** id *)
  standards_arn : string prop;  (** standards_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_standards_subscription *)

let aws_securityhub_standards_subscription ?id ~standards_arn () :
    aws_securityhub_standards_subscription =
  { id; standards_arn }

type t = { id : string prop; standards_arn : string prop }

let make ?id ~standards_arn __id =
  let __type = "aws_securityhub_standards_subscription" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       standards_arn = Prop.computed __type __id "standards_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_standards_subscription
        (aws_securityhub_standards_subscription ?id ~standards_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~standards_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~standards_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
