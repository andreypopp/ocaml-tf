(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_bucket_request_payment_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  payer : string prop;  (** payer *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_request_payment_configuration *)

let aws_s3_bucket_request_payment_configuration
    ?expected_bucket_owner ?id ~bucket ~payer () :
    aws_s3_bucket_request_payment_configuration =
  { bucket; expected_bucket_owner; id; payer }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  payer : string prop;
}

let make ?expected_bucket_owner ?id ~bucket ~payer __id =
  let __type = "aws_s3_bucket_request_payment_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       payer = Prop.computed __type __id "payer";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_request_payment_configuration
        (aws_s3_bucket_request_payment_configuration
           ?expected_bucket_owner ?id ~bucket ~payer ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ~bucket ~payer
    __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ~bucket ~payer __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
