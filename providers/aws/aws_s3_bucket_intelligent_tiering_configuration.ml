(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  prefix : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type tiering = { access_tier : string prop; days : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : tiering) -> ()

let yojson_of_tiering =
  (function
   | { access_tier = v_access_tier; days = v_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_days in
         ("days", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_tier in
         ("access_tier", arg) :: bnds
       in
       `Assoc bnds
    : tiering -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tiering

[@@@deriving.end]

type aws_s3_bucket_intelligent_tiering_configuration = {
  bucket : string prop;
  id : string prop option; [@option]
  name : string prop;
  status : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tiering : tiering list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_s3_bucket_intelligent_tiering_configuration) -> ()

let yojson_of_aws_s3_bucket_intelligent_tiering_configuration =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       name = v_name;
       status = v_status;
       filter = v_filter;
       tiering = v_tiering;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tiering then bnds
         else
           let arg = (yojson_of_list yojson_of_tiering) v_tiering in
           let bnd = "tiering", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
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
    : aws_s3_bucket_intelligent_tiering_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_intelligent_tiering_configuration

[@@@deriving.end]

let filter ?prefix ?tags () : filter = { prefix; tags }
let tiering ~access_tier ~days () : tiering = { access_tier; days }

let aws_s3_bucket_intelligent_tiering_configuration ?id ?status
    ?(filter = []) ~bucket ~name ~tiering () :
    aws_s3_bucket_intelligent_tiering_configuration =
  { bucket; id; name; status; filter; tiering }

type t = {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let make ?id ?status ?(filter = []) ~bucket ~name ~tiering __id =
  let __type = "aws_s3_bucket_intelligent_tiering_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_intelligent_tiering_configuration
        (aws_s3_bucket_intelligent_tiering_configuration ?id ?status
           ~filter ~bucket ~name ~tiering ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ?(filter = []) ~bucket ~name
    ~tiering __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~filter ~bucket ~name ~tiering __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
