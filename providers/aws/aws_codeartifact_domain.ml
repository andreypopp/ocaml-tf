(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_codeartifact_domain ?encryption_key ?id ?tags ?tags_all
    ~domain __resource_id =
  let __resource_type = "aws_codeartifact_domain" in
  let __resource =
    ({ domain; encryption_key; id; tags; tags_all }
      : aws_codeartifact_domain)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeartifact_domain __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       asset_size_bytes =
         Prop.computed __resource_type __resource_id
           "asset_size_bytes";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       domain = Prop.computed __resource_type __resource_id "domain";
       encryption_key =
         Prop.computed __resource_type __resource_id "encryption_key";
       id = Prop.computed __resource_type __resource_id "id";
       owner = Prop.computed __resource_type __resource_id "owner";
       repository_count =
         Prop.computed __resource_type __resource_id
           "repository_count";
       s3_bucket_arn =
         Prop.computed __resource_type __resource_id "s3_bucket_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
