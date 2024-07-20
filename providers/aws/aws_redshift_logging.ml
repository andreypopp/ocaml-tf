(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_logging = {
  bucket_name : string prop option; [@option]
  cluster_identifier : string prop;
  log_destination_type : string prop option; [@option]
  log_exports : string prop list option; [@option]
  s3_key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_logging) -> ()

let yojson_of_aws_redshift_logging =
  (function
   | {
       bucket_name = v_bucket_name;
       cluster_identifier = v_cluster_identifier;
       log_destination_type = v_log_destination_type;
       log_exports = v_log_exports;
       s3_key_prefix = v_s3_key_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_exports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "log_exports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_destination_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_destination_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_logging

[@@@deriving.end]

let aws_redshift_logging ?bucket_name ?log_destination_type
    ?log_exports ?s3_key_prefix ~cluster_identifier () :
    aws_redshift_logging =
  {
    bucket_name;
    cluster_identifier;
    log_destination_type;
    log_exports;
    s3_key_prefix;
  }

type t = {
  tf_name : string;
  bucket_name : string prop;
  cluster_identifier : string prop;
  id : string prop;
  log_destination_type : string prop;
  log_exports : string list prop;
  s3_key_prefix : string prop;
}

let make ?bucket_name ?log_destination_type ?log_exports
    ?s3_key_prefix ~cluster_identifier __id =
  let __type = "aws_redshift_logging" in
  let __attrs =
    ({
       tf_name = __id;
       bucket_name = Prop.computed __type __id "bucket_name";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       id = Prop.computed __type __id "id";
       log_destination_type =
         Prop.computed __type __id "log_destination_type";
       log_exports = Prop.computed __type __id "log_exports";
       s3_key_prefix = Prop.computed __type __id "s3_key_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_logging
        (aws_redshift_logging ?bucket_name ?log_destination_type
           ?log_exports ?s3_key_prefix ~cluster_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?bucket_name ?log_destination_type
    ?log_exports ?s3_key_prefix ~cluster_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?bucket_name ?log_destination_type ?log_exports
      ?s3_key_prefix ~cluster_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
