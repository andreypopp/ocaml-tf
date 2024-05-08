(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kms_key_details = {
  encryption_option : string prop option; [@option]
  kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kms_key_details) -> ()

let yojson_of_kms_key_details =
  (function
   | {
       encryption_option = v_encryption_option;
       kms_key_id = v_kms_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_option", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kms_key_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kms_key_details

[@@@deriving.end]

type repository__bitbucket = {
  connection_arn : string prop;
  name : string prop;
  owner : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository__bitbucket) -> ()

let yojson_of_repository__bitbucket =
  (function
   | {
       connection_arn = v_connection_arn;
       name = v_name;
       owner = v_owner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_arn
         in
         ("connection_arn", arg) :: bnds
       in
       `Assoc bnds
    : repository__bitbucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository__bitbucket

[@@@deriving.end]

type repository__codecommit = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : repository__codecommit) -> ()

let yojson_of_repository__codecommit =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : repository__codecommit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository__codecommit

[@@@deriving.end]

type repository__github_enterprise_server = {
  connection_arn : string prop;
  name : string prop;
  owner : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository__github_enterprise_server) -> ()

let yojson_of_repository__github_enterprise_server =
  (function
   | {
       connection_arn = v_connection_arn;
       name = v_name;
       owner = v_owner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_arn
         in
         ("connection_arn", arg) :: bnds
       in
       `Assoc bnds
    : repository__github_enterprise_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository__github_enterprise_server

[@@@deriving.end]

type repository__s3_bucket = {
  bucket_name : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository__s3_bucket) -> ()

let yojson_of_repository__s3_bucket =
  (function
   | { bucket_name = v_bucket_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : repository__s3_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository__s3_bucket

[@@@deriving.end]

type repository = {
  bitbucket : repository__bitbucket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  codecommit : repository__codecommit list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github_enterprise_server :
    repository__github_enterprise_server list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_bucket : repository__s3_bucket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository) -> ()

let yojson_of_repository =
  (function
   | {
       bitbucket = v_bitbucket;
       codecommit = v_codecommit;
       github_enterprise_server = v_github_enterprise_server;
       s3_bucket = v_s3_bucket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_bucket then bnds
         else
           let arg =
             (yojson_of_list yojson_of_repository__s3_bucket)
               v_s3_bucket
           in
           let bnd = "s3_bucket", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github_enterprise_server then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_repository__github_enterprise_server)
               v_github_enterprise_server
           in
           let bnd = "github_enterprise_server", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_codecommit then bnds
         else
           let arg =
             (yojson_of_list yojson_of_repository__codecommit)
               v_codecommit
           in
           let bnd = "codecommit", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bitbucket then bnds
         else
           let arg =
             (yojson_of_list yojson_of_repository__bitbucket)
               v_bitbucket
           in
           let bnd = "bitbucket", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type s3_repository_details__code_artifacts = {
  build_artifacts_object_key : string prop;
  source_code_artifacts_object_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_repository_details__code_artifacts) -> ()

let yojson_of_s3_repository_details__code_artifacts =
  (function
   | {
       build_artifacts_object_key = v_build_artifacts_object_key;
       source_code_artifacts_object_key =
         v_source_code_artifacts_object_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_code_artifacts_object_key
         in
         ("source_code_artifacts_object_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_build_artifacts_object_key
         in
         ("build_artifacts_object_key", arg) :: bnds
       in
       `Assoc bnds
    : s3_repository_details__code_artifacts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_repository_details__code_artifacts

[@@@deriving.end]

type s3_repository_details = {
  bucket_name : string prop;
  code_artifacts : s3_repository_details__code_artifacts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_repository_details) -> ()

let yojson_of_s3_repository_details =
  (function
   | {
       bucket_name = v_bucket_name;
       code_artifacts = v_code_artifacts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_code_artifacts then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_s3_repository_details__code_artifacts)
               v_code_artifacts
           in
           let bnd = "code_artifacts", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : s3_repository_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_repository_details

[@@@deriving.end]

type aws_codegurureviewer_repository_association = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  kms_key_details : kms_key_details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  repository : repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codegurureviewer_repository_association) -> ()

let yojson_of_aws_codegurureviewer_repository_association =
  (function
   | {
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       kms_key_details = v_kms_key_details;
       repository = v_repository;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_repository then bnds
         else
           let arg =
             (yojson_of_list yojson_of_repository) v_repository
           in
           let bnd = "repository", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kms_key_details then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kms_key_details)
               v_kms_key_details
           in
           let bnd = "kms_key_details", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codegurureviewer_repository_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codegurureviewer_repository_association

[@@@deriving.end]

let kms_key_details ?encryption_option ?kms_key_id () :
    kms_key_details =
  { encryption_option; kms_key_id }

let repository__bitbucket ~connection_arn ~name ~owner () :
    repository__bitbucket =
  { connection_arn; name; owner }

let repository__codecommit ~name () : repository__codecommit =
  { name }

let repository__github_enterprise_server ~connection_arn ~name ~owner
    () : repository__github_enterprise_server =
  { connection_arn; name; owner }

let repository__s3_bucket ~bucket_name ~name () :
    repository__s3_bucket =
  { bucket_name; name }

let repository ?(bitbucket = []) ?(codecommit = [])
    ?(github_enterprise_server = []) ?(s3_bucket = []) () :
    repository =
  { bitbucket; codecommit; github_enterprise_server; s3_bucket }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_codegurureviewer_repository_association ?id ?tags ?tags_all
    ?(kms_key_details = []) ?timeouts ~repository () :
    aws_codegurureviewer_repository_association =
  { id; tags; tags_all; kms_key_details; repository; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  association_id : string prop;
  connection_arn : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  provider_type : string prop;
  s3_repository_details : s3_repository_details list prop;
  state : string prop;
  state_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(kms_key_details = []) ?timeouts
    ~repository __id =
  let __type = "aws_codegurureviewer_repository_association" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       association_id = Prop.computed __type __id "association_id";
       connection_arn = Prop.computed __type __id "connection_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       provider_type = Prop.computed __type __id "provider_type";
       s3_repository_details =
         Prop.computed __type __id "s3_repository_details";
       state = Prop.computed __type __id "state";
       state_reason = Prop.computed __type __id "state_reason";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codegurureviewer_repository_association
        (aws_codegurureviewer_repository_association ?id ?tags
           ?tags_all ~kms_key_details ?timeouts ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?(kms_key_details = [])
    ?timeouts ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~kms_key_details ?timeouts ~repository
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
