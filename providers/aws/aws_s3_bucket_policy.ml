(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_bucket_policy = {
  bucket : string prop;
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_policy) -> ()

let yojson_of_aws_s3_bucket_policy =
  (function
   | { bucket = v_bucket; id = v_id; policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_policy

[@@@deriving.end]

let aws_s3_bucket_policy ?id ~bucket ~policy () :
    aws_s3_bucket_policy =
  { bucket; id; policy }

type t = {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~bucket ~policy __id =
  let __type = "aws_s3_bucket_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_aws_s3_bucket_policy
        (aws_s3_bucket_policy ?id ~bucket ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~policy __id =
  let (r : _ Tf_core.resource) = make ?id ~bucket ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
