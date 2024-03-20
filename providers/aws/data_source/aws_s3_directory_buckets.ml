(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_directory_buckets = unit [@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_directory_buckets) -> ()

let yojson_of_aws_s3_directory_buckets =
  (yojson_of_unit
    : aws_s3_directory_buckets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_directory_buckets

[@@@deriving.end]

let aws_s3_directory_buckets () = ()

type t = {
  arns : string list prop;
  buckets : string list prop;
  id : string prop;
}

let make __id =
  let __type = "aws_s3_directory_buckets" in
  let __attrs =
    ({
       arns = Prop.computed __type __id "arns";
       buckets = Prop.computed __type __id "buckets";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_directory_buckets
        (aws_s3_directory_buckets ());
    attrs = __attrs;
  }

let register ?tf_module __id =
  let (r : _ Tf_core.resource) = make __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
