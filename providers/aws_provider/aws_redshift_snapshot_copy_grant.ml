(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_snapshot_copy_grant = {
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  snapshot_copy_grant_name : string prop;
      (** snapshot_copy_grant_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_copy_grant *)

type t = {
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  snapshot_copy_grant_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_redshift_snapshot_copy_grant ?id ?kms_key_id ?tags ?tags_all
    ~snapshot_copy_grant_name __resource_id =
  let __resource_type = "aws_redshift_snapshot_copy_grant" in
  let __resource =
    ({ id; kms_key_id; snapshot_copy_grant_name; tags; tags_all }
      : aws_redshift_snapshot_copy_grant)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_snapshot_copy_grant __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       snapshot_copy_grant_name =
         Prop.computed __resource_type __resource_id
           "snapshot_copy_grant_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
