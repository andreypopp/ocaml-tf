(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codeartifact_domain = {
  domain : string prop;
  encryption_key : string prop option; [@option]
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codeartifact_domain) -> ()

let yojson_of_aws_codeartifact_domain =
  (function
   | {
       domain = v_domain;
       encryption_key = v_encryption_key;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : aws_codeartifact_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codeartifact_domain

[@@@deriving.end]

let aws_codeartifact_domain ?encryption_key ?id ?tags ?tags_all
    ~domain () : aws_codeartifact_domain =
  { domain; encryption_key; id; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  asset_size_bytes : string prop;
  created_time : string prop;
  domain : string prop;
  encryption_key : string prop;
  id : string prop;
  owner : string prop;
  repository_count : float prop;
  s3_bucket_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?encryption_key ?id ?tags ?tags_all ~domain __id =
  let __type = "aws_codeartifact_domain" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       asset_size_bytes =
         Prop.computed __type __id "asset_size_bytes";
       created_time = Prop.computed __type __id "created_time";
       domain = Prop.computed __type __id "domain";
       encryption_key = Prop.computed __type __id "encryption_key";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       repository_count =
         Prop.computed __type __id "repository_count";
       s3_bucket_arn = Prop.computed __type __id "s3_bucket_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codeartifact_domain
        (aws_codeartifact_domain ?encryption_key ?id ?tags ?tags_all
           ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_key ?id ?tags ?tags_all ~domain
    __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_key ?id ?tags ?tags_all ~domain __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
