(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_destination = {
  bucket_name : string prop;
  kms_key_arn : string prop option; [@option]
  prefix : string prop option; [@option]
  region : string prop;
  sync_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_destination) -> ()

let yojson_of_s3_destination =
  (function
   | {
       bucket_name = v_bucket_name;
       kms_key_arn = v_kms_key_arn;
       prefix = v_prefix;
       region = v_region;
       sync_format = v_sync_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sync_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_format", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
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
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : s3_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_destination

[@@@deriving.end]

type aws_ssm_resource_data_sync = {
  id : string prop option; [@option]
  name : string prop;
  s3_destination : s3_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_resource_data_sync) -> ()

let yojson_of_aws_ssm_resource_data_sync =
  (function
   | { id = v_id; name = v_name; s3_destination = v_s3_destination }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_s3_destination v_s3_destination
         in
         ("s3_destination", arg) :: bnds
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
       `Assoc bnds
    : aws_ssm_resource_data_sync -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_resource_data_sync

[@@@deriving.end]

let s3_destination ?kms_key_arn ?prefix ?sync_format ~bucket_name
    ~region () : s3_destination =
  { bucket_name; kms_key_arn; prefix; region; sync_format }

let aws_ssm_resource_data_sync ?id ~name ~s3_destination () :
    aws_ssm_resource_data_sync =
  { id; name; s3_destination }

type t = { tf_name : string; id : string prop; name : string prop }

let make ?id ~name ~s3_destination __id =
  let __type = "aws_ssm_resource_data_sync" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_resource_data_sync
        (aws_ssm_resource_data_sync ?id ~name ~s3_destination ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~s3_destination __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~s3_destination __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
