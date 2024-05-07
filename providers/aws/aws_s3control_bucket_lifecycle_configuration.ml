(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__abort_incomplete_multipart_upload = {
  days_after_initiation : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__abort_incomplete_multipart_upload) -> ()

let yojson_of_rule__abort_incomplete_multipart_upload =
  (function
   | { days_after_initiation = v_days_after_initiation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_days_after_initiation
         in
         ("days_after_initiation", arg) :: bnds
       in
       `Assoc bnds
    : rule__abort_incomplete_multipart_upload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__abort_incomplete_multipart_upload

[@@@deriving.end]

type rule__expiration = {
  date : string prop option; [@option]
  days : float prop option; [@option]
  expired_object_delete_marker : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__expiration) -> ()

let yojson_of_rule__expiration =
  (function
   | {
       date = v_date;
       days = v_days;
       expired_object_delete_marker = v_expired_object_delete_marker;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_expired_object_delete_marker with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "expired_object_delete_marker", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__expiration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__expiration

[@@@deriving.end]

type rule__filter = {
  prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filter) -> ()

let yojson_of_rule__filter =
  (function
   | { prefix = v_prefix; tags = v_tags } ->
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
       `Assoc bnds
    : rule__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filter

[@@@deriving.end]

type rule = {
  id : string prop;
  status : string prop option; [@option]
  abort_incomplete_multipart_upload :
    rule__abort_incomplete_multipart_upload list;
  expiration : rule__expiration list;
  filter : rule__filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       id = v_id;
       status = v_status;
       abort_incomplete_multipart_upload =
         v_abort_incomplete_multipart_upload;
       expiration = v_expiration;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rule__filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rule__expiration v_expiration
         in
         ("expiration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rule__abort_incomplete_multipart_upload
             v_abort_incomplete_multipart_upload
         in
         ("abort_incomplete_multipart_upload", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_s3control_bucket_lifecycle_configuration = {
  bucket : string prop;
  id : string prop option; [@option]
  rule : rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_bucket_lifecycle_configuration) -> ()

let yojson_of_aws_s3control_bucket_lifecycle_configuration =
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
    : aws_s3control_bucket_lifecycle_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_bucket_lifecycle_configuration

[@@@deriving.end]

let rule__abort_incomplete_multipart_upload ~days_after_initiation ()
    : rule__abort_incomplete_multipart_upload =
  { days_after_initiation }

let rule__expiration ?date ?days ?expired_object_delete_marker () :
    rule__expiration =
  { date; days; expired_object_delete_marker }

let rule__filter ?prefix ?tags () : rule__filter = { prefix; tags }

let rule ?status ?(abort_incomplete_multipart_upload = [])
    ?(expiration = []) ?(filter = []) ~id () : rule =
  {
    id;
    status;
    abort_incomplete_multipart_upload;
    expiration;
    filter;
  }

let aws_s3control_bucket_lifecycle_configuration ?id ~bucket ~rule ()
    : aws_s3control_bucket_lifecycle_configuration =
  { bucket; id; rule }

type t = { tf_name : string; bucket : string prop; id : string prop }

let make ?id ~bucket ~rule __id =
  let __type = "aws_s3control_bucket_lifecycle_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_bucket_lifecycle_configuration
        (aws_s3control_bucket_lifecycle_configuration ?id ~bucket
           ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~rule __id =
  let (r : _ Tf_core.resource) = make ?id ~bucket ~rule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
