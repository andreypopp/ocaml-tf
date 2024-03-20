(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_bucket_accelerate_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_accelerate_configuration *)

let aws_s3_bucket_accelerate_configuration ?expected_bucket_owner ?id
    ~bucket ~status () : aws_s3_bucket_accelerate_configuration =
  { bucket; expected_bucket_owner; id; status }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  status : string prop;
}

let make ?expected_bucket_owner ?id ~bucket ~status __id =
  let __type = "aws_s3_bucket_accelerate_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_accelerate_configuration
        (aws_s3_bucket_accelerate_configuration
           ?expected_bucket_owner ?id ~bucket ~status ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ~bucket ~status
    __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ~bucket ~status __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
