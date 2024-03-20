(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?account_id ?s3_prefix_type ?tags ~access_grants_location_id
    ~permission ~access_grants_location_configuration ~grantee __id =
  let __type = "aws_s3control_access_grant" in
  let __attrs =
    ({
       access_grant_arn =
         Prop.computed __type __id "access_grant_arn";
       access_grant_id = Prop.computed __type __id "access_grant_id";
       access_grants_location_id =
         Prop.computed __type __id "access_grants_location_id";
       account_id = Prop.computed __type __id "account_id";
       grant_scope = Prop.computed __type __id "grant_scope";
       id = Prop.computed __type __id "id";
       permission = Prop.computed __type __id "permission";
       s3_prefix_type = Prop.computed __type __id "s3_prefix_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_grant
        (aws_s3control_access_grant ?account_id ?s3_prefix_type ?tags
           ~access_grants_location_id ~permission
           ~access_grants_location_configuration ~grantee ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?s3_prefix_type ?tags
    ~access_grants_location_id ~permission
    ~access_grants_location_configuration ~grantee __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?s3_prefix_type ?tags ~access_grants_location_id
      ~permission ~access_grants_location_configuration ~grantee __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
