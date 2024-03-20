(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type git_config = {
  branch : string prop option; [@option]  (** branch *)
  repository_url : string prop;  (** repository_url *)
  secret_arn : string prop option; [@option]  (** secret_arn *)
}
[@@deriving yojson_of]
(** git_config *)

type aws_sagemaker_code_repository = {
  code_repository_name : string prop;  (** code_repository_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  git_config : git_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_code_repository *)

let git_config ?branch ?secret_arn ~repository_url () : git_config =
  { branch; repository_url; secret_arn }

let aws_sagemaker_code_repository ?id ?tags ?tags_all
    ~code_repository_name ~git_config () :
    aws_sagemaker_code_repository =
  { code_repository_name; id; tags; tags_all; git_config }

type t = {
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
