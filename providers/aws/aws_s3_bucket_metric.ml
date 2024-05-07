(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  access_point : string prop option; [@option]
  prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       access_point = v_access_point;
       prefix = v_prefix;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_point with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_point", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_s3_bucket_metric = {
  bucket : string prop;
  id : string prop option; [@option]
  name : string prop;
  filter : filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_metric) -> ()

let yojson_of_aws_s3_bucket_metric =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       name = v_name;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_s3_bucket_metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_metric

[@@@deriving.end]

let filter ?access_point ?prefix ?tags () : filter =
  { access_point; prefix; tags }

let aws_s3_bucket_metric ?id ?(filter = []) ~bucket ~name () :
    aws_s3_bucket_metric =
  { bucket; id; name; filter }

type t = {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?(filter = []) ~bucket ~name __id =
  let __type = "aws_s3_bucket_metric" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_metric
        (aws_s3_bucket_metric ?id ~filter ~bucket ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(filter = []) ~bucket ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~filter ~bucket ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
