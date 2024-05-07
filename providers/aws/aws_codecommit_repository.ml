(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codecommit_repository = {
  default_branch : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  repository_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codecommit_repository) -> ()

let yojson_of_aws_codecommit_repository =
  (function
   | {
       default_branch = v_default_branch;
       description = v_description;
       id = v_id;
       kms_key_id = v_kms_key_id;
       repository_name = v_repository_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_branch", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codecommit_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codecommit_repository

[@@@deriving.end]

let aws_codecommit_repository ?default_branch ?description ?id
    ?kms_key_id ?tags ?tags_all ~repository_name () :
    aws_codecommit_repository =
  {
    default_branch;
    description;
    id;
    kms_key_id;
    repository_name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  clone_url_http : string prop;
  clone_url_ssh : string prop;
  default_branch : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  repository_id : string prop;
  repository_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?default_branch ?description ?id ?kms_key_id ?tags ?tags_all
    ~repository_name __id =
  let __type = "aws_codecommit_repository" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       clone_url_http = Prop.computed __type __id "clone_url_http";
       clone_url_ssh = Prop.computed __type __id "clone_url_ssh";
       default_branch = Prop.computed __type __id "default_branch";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       repository_id = Prop.computed __type __id "repository_id";
       repository_name = Prop.computed __type __id "repository_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecommit_repository
        (aws_codecommit_repository ?default_branch ?description ?id
           ?kms_key_id ?tags ?tags_all ~repository_name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_branch ?description ?id ?kms_key_id
    ?tags ?tags_all ~repository_name __id =
  let (r : _ Tf_core.resource) =
    make ?default_branch ?description ?id ?kms_key_id ?tags ?tags_all
      ~repository_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
