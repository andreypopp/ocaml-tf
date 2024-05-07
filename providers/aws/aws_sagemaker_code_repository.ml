(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type git_config = {
  branch : string prop option; [@option]
  repository_url : string prop;
  secret_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : git_config) -> ()

let yojson_of_git_config =
  (function
   | {
       branch = v_branch;
       repository_url = v_repository_url;
       secret_arn = v_secret_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_url
         in
         ("repository_url", arg) :: bnds
       in
       let bnds =
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : git_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_config

[@@@deriving.end]

type aws_sagemaker_code_repository = {
  code_repository_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  git_config : git_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_code_repository) -> ()

let yojson_of_aws_sagemaker_code_repository =
  (function
   | {
       code_repository_name = v_code_repository_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       git_config = v_git_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_git_config v_git_config
         in
         ("git_config", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_code_repository_name
         in
         ("code_repository_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_code_repository

[@@@deriving.end]

let git_config ?branch ?secret_arn ~repository_url () : git_config =
  { branch; repository_url; secret_arn }

let aws_sagemaker_code_repository ?id ?tags ?tags_all
    ~code_repository_name ~git_config () :
    aws_sagemaker_code_repository =
  { code_repository_name; id; tags; tags_all; git_config }

type t = {
  tf_name : string;
  arn : string prop;
  code_repository_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~code_repository_name ~git_config __id =
  let __type = "aws_sagemaker_code_repository" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       code_repository_name =
         Prop.computed __type __id "code_repository_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_code_repository
        (aws_sagemaker_code_repository ?id ?tags ?tags_all
           ~code_repository_name ~git_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~code_repository_name
    ~git_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~code_repository_name ~git_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
