(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type access_grants_location_configuration = {
  s3_sub_prefix : string prop option; [@option]  (** s3_sub_prefix *)
}
[@@deriving yojson_of]
(** access_grants_location_configuration *)

type grantee = {
  grantee_identifier : string prop;  (** grantee_identifier *)
  grantee_type : string prop;  (** grantee_type *)
}
[@@deriving yojson_of]
(** grantee *)

type aws_s3control_access_grant = {
  access_grants_location_id : string prop;
      (** access_grants_location_id *)
  account_id : string prop option; [@option]  (** account_id *)
  permission : string prop;  (** permission *)
  s3_prefix_type : string prop option; [@option]
      (** s3_prefix_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  access_grants_location_configuration :
    access_grants_location_configuration list;
  grantee : grantee list;
}
[@@deriving yojson_of]
(** aws_s3control_access_grant *)

let access_grants_location_configuration ?s3_sub_prefix () :
    access_grants_location_configuration =
  { s3_sub_prefix }

let grantee ~grantee_identifier ~grantee_type () : grantee =
  { grantee_identifier; grantee_type }

let aws_s3control_access_grant ?account_id ?s3_prefix_type ?tags
    ~access_grants_location_id ~permission
    ~access_grants_location_configuration ~grantee () :
    aws_s3control_access_grant =
  {
    access_grants_location_id;
    account_id;
    permission;
    s3_prefix_type;
    tags;
    access_grants_location_configuration;
    grantee;
  }

type t = {
  access_grant_arn : string prop;
  access_grant_id : string prop;
  access_grants_location_id : string prop;
  account_id : string prop;
  grant_scope : string prop;
  id : string prop;
  permission : string prop;
  s3_prefix_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?account_id ?s3_prefix_type ?tags
    ~access_grants_location_id ~permission
    ~access_grants_location_configuration ~grantee __resource_id =
  let __resource_type = "aws_s3control_access_grant" in
  let __resource =
    aws_s3control_access_grant ?account_id ?s3_prefix_type ?tags
      ~access_grants_location_id ~permission
      ~access_grants_location_configuration ~grantee ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grant __resource);
  let __resource_attributes =
    ({
       access_grant_arn =
         Prop.computed __resource_type __resource_id
           "access_grant_arn";
       access_grant_id =
         Prop.computed __resource_type __resource_id
           "access_grant_id";
       access_grants_location_id =
         Prop.computed __resource_type __resource_id
           "access_grants_location_id";
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       grant_scope =
         Prop.computed __resource_type __resource_id "grant_scope";
       id = Prop.computed __resource_type __resource_id "id";
       permission =
         Prop.computed __resource_type __resource_id "permission";
       s3_prefix_type =
         Prop.computed __resource_type __resource_id "s3_prefix_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
