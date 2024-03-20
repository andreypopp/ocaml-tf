(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_bucket = {
  bucket : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket) -> ()

let yojson_of_aws_s3_bucket =
  (function
   | { bucket = v_bucket; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_s3_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket

[@@@deriving.end]

let aws_s3_bucket ?id ~bucket () : aws_s3_bucket = { bucket; id }

type t = {
  arn : string prop;
  bucket : string prop;
  bucket_domain_name : string prop;
  bucket_regional_domain_name : string prop;
  hosted_zone_id : string prop;
  id : string prop;
  region : string prop;
  website_domain : string prop;
  website_endpoint : string prop;
}

let make ?id ~bucket __id =
  let __type = "aws_s3_bucket" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       bucket_domain_name =
         Prop.computed __type __id "bucket_domain_name";
       bucket_regional_domain_name =
         Prop.computed __type __id "bucket_regional_domain_name";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
       website_domain = Prop.computed __type __id "website_domain";
       website_endpoint =
         Prop.computed __type __id "website_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_s3_bucket (aws_s3_bucket ?id ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket __id =
  let (r : _ Tf_core.resource) = make ?id ~bucket __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
