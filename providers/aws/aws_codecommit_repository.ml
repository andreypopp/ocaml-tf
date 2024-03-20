(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codecommit_repository = {
  default_branch : string prop option; [@option]
      (** default_branch *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  repository_name : string prop;  (** repository_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codecommit_repository *)

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
