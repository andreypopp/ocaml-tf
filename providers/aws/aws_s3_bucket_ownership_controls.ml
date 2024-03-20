(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule = {
  object_ownership : string prop;  (** object_ownership *)
}
[@@deriving yojson_of]
(** rule *)

type aws_s3_bucket_ownership_controls = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_ownership_controls *)

let rule ~object_ownership () : rule = { object_ownership }

let aws_s3_bucket_ownership_controls ?id ~bucket ~rule () :
    aws_s3_bucket_ownership_controls =
  { bucket; id; rule }

type t = { bucket : string prop; id : string prop }

let make ?id ~bucket ~rule __id =
  let __type = "aws_s3_bucket_ownership_controls" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_ownership_controls
        (aws_s3_bucket_ownership_controls ?id ~bucket ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~rule __id =
  let (r : _ Tf_core.resource) = make ?id ~bucket ~rule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
