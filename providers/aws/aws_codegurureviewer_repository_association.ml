(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kms_key_details = {
  encryption_option : string prop option; [@option]
      (** encryption_option *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** kms_key_details *)

type repository__bitbucket = {
  connection_arn : string prop;  (** connection_arn *)
  name : string prop;  (** name *)
  owner : string prop;  (** owner *)
}
[@@deriving yojson_of]
(** repository__bitbucket *)

type repository__codecommit = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** repository__codecommit *)

type repository__github_enterprise_server = {
  connection_arn : string prop;  (** connection_arn *)
  name : string prop;  (** name *)
  owner : string prop;  (** owner *)
}
[@@deriving yojson_of]
(** repository__github_enterprise_server *)

type repository__s3_bucket = {
  bucket_name : string prop;  (** bucket_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** repository__s3_bucket *)

type repository = {
  bitbucket : repository__bitbucket list;
  codecommit : repository__codecommit list;
  github_enterprise_server :
    repository__github_enterprise_server list;
  s3_bucket : repository__s3_bucket list;
}
[@@deriving yojson_of]
(** repository *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type s3_repository_details__code_artifacts = {
  build_artifacts_object_key : string prop;
      (** build_artifacts_object_key *)
  source_code_artifacts_object_key : string prop;
      (** source_code_artifacts_object_key *)
}
[@@deriving yojson_of]

type s3_repository_details = {
  bucket_name : string prop;  (** bucket_name *)
  code_artifacts : s3_repository_details__code_artifacts list;
      (** code_artifacts *)
}
[@@deriving yojson_of]

type aws_codegurureviewer_repository_association = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  kms_key_details : kms_key_details list;
  repository : repository list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association *)

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

let repository ~bitbucket ~codecommit ~github_enterprise_server
    ~s3_bucket () : repository =
  { bitbucket; codecommit; github_enterprise_server; s3_bucket }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_codegurureviewer_repository_association ?id ?tags ?tags_all
    ?timeouts ~kms_key_details ~repository () :
    aws_codegurureviewer_repository_association =
  { id; tags; tags_all; kms_key_details; repository; timeouts }

type t = {
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

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~kms_key_details ~repository __resource_id =
  let __resource_type =
    "aws_codegurureviewer_repository_association"
  in
  let __resource =
    aws_codegurureviewer_repository_association ?id ?tags ?tags_all
      ?timeouts ~kms_key_details ~repository ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codegurureviewer_repository_association __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       association_id =
         Prop.computed __resource_type __resource_id "association_id";
       connection_arn =
         Prop.computed __resource_type __resource_id "connection_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       owner = Prop.computed __resource_type __resource_id "owner";
       provider_type =
         Prop.computed __resource_type __resource_id "provider_type";
       s3_repository_details =
         Prop.computed __resource_type __resource_id
           "s3_repository_details";
       state = Prop.computed __resource_type __resource_id "state";
       state_reason =
         Prop.computed __resource_type __resource_id "state_reason";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
