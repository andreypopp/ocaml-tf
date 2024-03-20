(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_object_lambda_access_point_policy = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_object_lambda_access_point_policy *)

let aws_s3control_object_lambda_access_point_policy ?account_id ?id
    ~name ~policy () :
    aws_s3control_object_lambda_access_point_policy =
  { account_id; id; name; policy }

type t = {
  account_id : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

let make ?account_id ?id ~name ~policy __id =
  let __type = "aws_s3control_object_lambda_access_point_policy" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       has_public_access_policy =
         Prop.computed __type __id "has_public_access_policy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_object_lambda_access_point_policy
        (aws_s3control_object_lambda_access_point_policy ?account_id
           ?id ~name ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ~name ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ~name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
