(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_access_point_policy = {
  access_point_arn : string prop;  (** access_point_arn *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_access_point_policy *)

let aws_s3control_access_point_policy ?id ~access_point_arn ~policy
    () : aws_s3control_access_point_policy =
  { access_point_arn; id; policy }

type t = {
  access_point_arn : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~access_point_arn ~policy __id =
  let __type = "aws_s3control_access_point_policy" in
  let __attrs =
    ({
       access_point_arn =
         Prop.computed __type __id "access_point_arn";
       has_public_access_policy =
         Prop.computed __type __id "has_public_access_policy";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_point_policy
        (aws_s3control_access_point_policy ?id ~access_point_arn
           ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~access_point_arn ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~access_point_arn ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
