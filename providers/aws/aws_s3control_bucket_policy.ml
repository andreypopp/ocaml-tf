(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_bucket_policy = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_policy *)

let aws_s3control_bucket_policy ?id ~bucket ~policy () :
    aws_s3control_bucket_policy =
  { bucket; id; policy }

type t = {
  bucket : string prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~bucket ~policy __id =
  let __type = "aws_s3control_bucket_policy" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_bucket_policy
        (aws_s3control_bucket_policy ?id ~bucket ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~policy __id =
  let (r : _ Tf_core.resource) = make ?id ~bucket ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
