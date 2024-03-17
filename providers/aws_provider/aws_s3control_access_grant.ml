(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_access_grant__access_grants_location_configuration = {
  s3_sub_prefix : string prop option; [@option]  (** s3_sub_prefix *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grant__access_grants_location_configuration *)

type aws_s3control_access_grant__grantee = {
  grantee_identifier : string prop;  (** grantee_identifier *)
  grantee_type : string prop;  (** grantee_type *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grant__grantee *)

type aws_s3control_access_grant = {
  access_grants_location_id : string prop;
      (** access_grants_location_id *)
  account_id : string prop option; [@option]  (** account_id *)
  permission : string prop;  (** permission *)
  s3_prefix_type : string prop option; [@option]
      (** s3_prefix_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  access_grants_location_configuration :
    aws_s3control_access_grant__access_grants_location_configuration
    list;
  grantee : aws_s3control_access_grant__grantee list;
}
[@@deriving yojson_of]
(** aws_s3control_access_grant *)

let aws_s3control_access_grant ?account_id ?s3_prefix_type ?tags
    ~access_grants_location_id ~permission
    ~access_grants_location_configuration ~grantee __resource_id =
  let __resource_type = "aws_s3control_access_grant" in
  let __resource =
    {
      access_grants_location_id;
      account_id;
      permission;
      s3_prefix_type;
      tags;
      access_grants_location_configuration;
      grantee;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grant __resource);
  ()
