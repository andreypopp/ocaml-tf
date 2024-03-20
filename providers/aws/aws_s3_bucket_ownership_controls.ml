(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule = { object_ownership : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | { object_ownership = v_object_ownership } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_object_ownership
         in
         ("object_ownership", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_s3_bucket_ownership_controls = {
  bucket : string prop;
  id : string prop option; [@option]
  rule : rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_ownership_controls) -> ()

let yojson_of_aws_s3_bucket_ownership_controls =
  (function
   | { bucket = v_bucket; id = v_id; rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rule v_rule in
         ("rule", arg) :: bnds
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
    : aws_s3_bucket_ownership_controls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_ownership_controls

[@@@deriving.end]

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
