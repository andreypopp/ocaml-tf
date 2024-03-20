(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type content_config = {
  bucket : string prop option; [@option]  (** bucket *)
  storage_class : string prop option; [@option]  (** storage_class *)
}
[@@deriving yojson_of]
(** content_config *)

type content_config_permissions = {
  access : string prop list option; [@option]  (** access *)
  grantee : string prop option; [@option]  (** grantee *)
  grantee_type : string prop option; [@option]  (** grantee_type *)
}
[@@deriving yojson_of]
(** content_config_permissions *)

type notifications = {
  completed : string prop option; [@option]  (** completed *)
  error : string prop option; [@option]  (** error *)
  progressing : string prop option; [@option]  (** progressing *)
  warning : string prop option; [@option]  (** warning *)
}
[@@deriving yojson_of]
(** notifications *)

type thumbnail_config = {
  bucket : string prop option; [@option]  (** bucket *)
  storage_class : string prop option; [@option]  (** storage_class *)
}
[@@deriving yojson_of]
(** thumbnail_config *)

type thumbnail_config_permissions = {
  access : string prop list option; [@option]  (** access *)
  grantee : string prop option; [@option]  (** grantee *)
  grantee_type : string prop option; [@option]  (** grantee_type *)
}
[@@deriving yojson_of]
(** thumbnail_config_permissions *)

type aws_elastictranscoder_pipeline = {
  aws_kms_key_arn : string prop option; [@option]
      (** aws_kms_key_arn *)
  id : string prop option; [@option]  (** id *)
  input_bucket : string prop;  (** input_bucket *)
  name : string prop option; [@option]  (** name *)
  output_bucket : string prop option; [@option]  (** output_bucket *)
  role : string prop;  (** role *)
  content_config : content_config list;
  content_config_permissions : content_config_permissions list;
  notifications : notifications list;
  thumbnail_config : thumbnail_config list;
  thumbnail_config_permissions : thumbnail_config_permissions list;
}
[@@deriving yojson_of]
(** aws_elastictranscoder_pipeline *)

let content_config ?bucket ?storage_class () : content_config =
  { bucket; storage_class }

let content_config_permissions ?access ?grantee ?grantee_type () :
    content_config_permissions =
  { access; grantee; grantee_type }

let notifications ?completed ?error ?progressing ?warning () :
    notifications =
  { completed; error; progressing; warning }

let thumbnail_config ?bucket ?storage_class () : thumbnail_config =
  { bucket; storage_class }

let thumbnail_config_permissions ?access ?grantee ?grantee_type () :
    thumbnail_config_permissions =
  { access; grantee; grantee_type }

let aws_elastictranscoder_pipeline ?aws_kms_key_arn ?id ?name
    ?output_bucket ~input_bucket ~role ~content_config
    ~content_config_permissions ~notifications ~thumbnail_config
    ~thumbnail_config_permissions () : aws_elastictranscoder_pipeline
    =
  {
    aws_kms_key_arn;
    id;
    input_bucket;
    name;
    output_bucket;
    role;
    content_config;
    content_config_permissions;
    notifications;
    thumbnail_config;
    thumbnail_config_permissions;
  }

type t = {
  arn : string prop;
  aws_kms_key_arn : string prop;
  id : string prop;
  input_bucket : string prop;
  name : string prop;
  output_bucket : string prop;
  role : string prop;
}

let make ?aws_kms_key_arn ?id ?name ?output_bucket ~input_bucket
    ~role ~content_config ~content_config_permissions ~notifications
    ~thumbnail_config ~thumbnail_config_permissions __id =
  let __type = "aws_elastictranscoder_pipeline" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       aws_kms_key_arn = Prop.computed __type __id "aws_kms_key_arn";
       id = Prop.computed __type __id "id";
       input_bucket = Prop.computed __type __id "input_bucket";
       name = Prop.computed __type __id "name";
       output_bucket = Prop.computed __type __id "output_bucket";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastictranscoder_pipeline
        (aws_elastictranscoder_pipeline ?aws_kms_key_arn ?id ?name
           ?output_bucket ~input_bucket ~role ~content_config
           ~content_config_permissions ~notifications
           ~thumbnail_config ~thumbnail_config_permissions ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_kms_key_arn ?id ?name ?output_bucket
    ~input_bucket ~role ~content_config ~content_config_permissions
    ~notifications ~thumbnail_config ~thumbnail_config_permissions
    __id =
  let (r : _ Tf_core.resource) =
    make ?aws_kms_key_arn ?id ?name ?output_bucket ~input_bucket
      ~role ~content_config ~content_config_permissions
      ~notifications ~thumbnail_config ~thumbnail_config_permissions
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
