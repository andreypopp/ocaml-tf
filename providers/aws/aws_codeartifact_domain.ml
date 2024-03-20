(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codeartifact_domain = {
  domain : string prop;  (** domain *)
  encryption_key : string prop option; [@option]
      (** encryption_key *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codeartifact_domain *)

let aws_codeartifact_domain ?encryption_key ?id ?tags ?tags_all
    ~domain () : aws_codeartifact_domain =
  { domain; encryption_key; id; tags; tags_all }

type t = {
  arn : string prop;
  asset_size_bytes : string prop;
  created_time : string prop;
  domain : string prop;
  encryption_key : string prop;
  id : string prop;
  owner : string prop;
  repository_count : float prop;
  s3_bucket_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?encryption_key ?id ?tags ?tags_all ~domain __id =
  let __type = "aws_codeartifact_domain" in
  let __attrs =
    ({
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
