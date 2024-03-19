(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type access_control_policy__grant__grantee = {
  email_address : string prop option; [@option]  (** email_address *)
  id : string prop option; [@option]  (** id *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** access_control_policy__grant__grantee *)

type access_control_policy__grant = {
  permission : string prop;  (** permission *)
  grantee : access_control_policy__grant__grantee list;
}
[@@deriving yojson_of]
(** access_control_policy__grant *)

type access_control_policy__owner = {
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** access_control_policy__owner *)

type access_control_policy = {
  grant : access_control_policy__grant list;
  owner : access_control_policy__owner list;
}
[@@deriving yojson_of]
(** access_control_policy *)

type aws_s3_bucket_acl = {
  acl : string prop option; [@option]  (** acl *)
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  access_control_policy : access_control_policy list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_acl *)

let access_control_policy__grant__grantee ?email_address ?id ?uri
    ~type_ () : access_control_policy__grant__grantee =
  { email_address; id; type_; uri }

let access_control_policy__grant ~permission ~grantee () :
    access_control_policy__grant =
  { permission; grantee }

let access_control_policy__owner ?display_name ~id () :
    access_control_policy__owner =
  { display_name; id }

let access_control_policy ~grant ~owner () : access_control_policy =
  { grant; owner }

let aws_s3_bucket_acl ?acl ?expected_bucket_owner ?id ~bucket
    ~access_control_policy () : aws_s3_bucket_acl =
  { acl; bucket; expected_bucket_owner; id; access_control_policy }

type t = {
  acl : string prop;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let register ?tf_module ?acl ?expected_bucket_owner ?id ~bucket
    ~access_control_policy __resource_id =
  let __resource_type = "aws_s3_bucket_acl" in
  let __resource =
    aws_s3_bucket_acl ?acl ?expected_bucket_owner ?id ~bucket
      ~access_control_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_acl __resource);
  let __resource_attributes =
    ({
       acl = Prop.computed __resource_type __resource_id "acl";
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
