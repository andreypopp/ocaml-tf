(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type versioning_configuration = {
  mfa_delete : string prop option; [@option]
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : versioning_configuration) -> ()

let yojson_of_versioning_configuration =
  (function
   | { mfa_delete = v_mfa_delete; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         match v_mfa_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mfa_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : versioning_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_versioning_configuration

[@@@deriving.end]

type aws_s3_bucket_versioning = {
  bucket : string prop;
  expected_bucket_owner : string prop option; [@option]
  id : string prop option; [@option]
  mfa : string prop option; [@option]
  versioning_configuration : versioning_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_versioning) -> ()

let yojson_of_aws_s3_bucket_versioning =
  (function
   | {
       bucket = v_bucket;
       expected_bucket_owner = v_expected_bucket_owner;
       id = v_id;
       mfa = v_mfa;
       versioning_configuration = v_versioning_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_versioning_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_versioning_configuration)
               v_versioning_configuration
           in
           let bnd = "versioning_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_mfa with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mfa", arg in
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
    : aws_s3_bucket_versioning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_versioning

[@@@deriving.end]

let versioning_configuration ?mfa_delete ~status () :
    versioning_configuration =
  { mfa_delete; status }

let aws_s3_bucket_versioning ?expected_bucket_owner ?id ?mfa ~bucket
    ~versioning_configuration () : aws_s3_bucket_versioning =
  {
    bucket;
    expected_bucket_owner;
    id;
    mfa;
    versioning_configuration;
  }

type t = {
  tf_name : string;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  mfa : string prop;
}

let make ?expected_bucket_owner ?id ?mfa ~bucket
    ~versioning_configuration __id =
  let __type = "aws_s3_bucket_versioning" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       mfa = Prop.computed __type __id "mfa";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_versioning
        (aws_s3_bucket_versioning ?expected_bucket_owner ?id ?mfa
           ~bucket ~versioning_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ?mfa ~bucket
    ~versioning_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ?mfa ~bucket
      ~versioning_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
