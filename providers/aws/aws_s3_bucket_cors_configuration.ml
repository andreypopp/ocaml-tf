(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_rule = {
  allowed_headers : string prop list option; [@option]
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expose_headers : string prop list option; [@option]
  id : string prop option; [@option]
  max_age_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_rule) -> ()

let yojson_of_cors_rule =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       expose_headers = v_expose_headers;
       id = v_id;
       max_age_seconds = v_max_age_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_seconds", arg in
             bnd :: bnds
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
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_origins
           in
           let bnd = "allowed_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_methods
           in
           let bnd = "allowed_methods", arg in
           bnd :: bnds
       in
       let bnds =
         match v_allowed_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_rule

[@@@deriving.end]

type aws_s3_bucket_cors_configuration = {
  bucket : string prop;
  expected_bucket_owner : string prop option; [@option]
  id : string prop option; [@option]
  cors_rule : cors_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_cors_configuration) -> ()

let yojson_of_aws_s3_bucket_cors_configuration =
  (function
   | {
       bucket = v_bucket;
       expected_bucket_owner = v_expected_bucket_owner;
       id = v_id;
       cors_rule = v_cors_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cors_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cors_rule) v_cors_rule
           in
           let bnd = "cors_rule", arg in
           bnd :: bnds
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
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_cors_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_cors_configuration

[@@@deriving.end]

let cors_rule ?allowed_headers ?expose_headers ?id ?max_age_seconds
    ~allowed_methods ~allowed_origins () : cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    expose_headers;
    id;
    max_age_seconds;
  }

let aws_s3_bucket_cors_configuration ?expected_bucket_owner ?id
    ~bucket ~cors_rule () : aws_s3_bucket_cors_configuration =
  { bucket; expected_bucket_owner; id; cors_rule }

type t = {
  tf_name : string;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let make ?expected_bucket_owner ?id ~bucket ~cors_rule __id =
  let __type = "aws_s3_bucket_cors_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_cors_configuration
        (aws_s3_bucket_cors_configuration ?expected_bucket_owner ?id
           ~bucket ~cors_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ~bucket ~cors_rule
    __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ~bucket ~cors_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
