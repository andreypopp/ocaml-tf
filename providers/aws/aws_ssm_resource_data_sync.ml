(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type s3_destination = {
  bucket_name : string prop;  (** bucket_name *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  prefix : string prop option; [@option]  (** prefix *)
  region : string prop;  (** region *)
  sync_format : string prop option; [@option]  (** sync_format *)
}
[@@deriving yojson_of]
(** s3_destination *)

type aws_ssm_resource_data_sync = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  s3_destination : s3_destination list;
}
[@@deriving yojson_of]
(** aws_ssm_resource_data_sync *)

let s3_destination ?kms_key_arn ?prefix ?sync_format ~bucket_name
    ~region () : s3_destination =
  { bucket_name; kms_key_arn; prefix; region; sync_format }

let aws_ssm_resource_data_sync ?id ~name ~s3_destination () :
    aws_ssm_resource_data_sync =
  { id; name; s3_destination }

type t = { id : string prop; name : string prop }

let register ?tf_module ?id ~name ~s3_destination __resource_id =
  let __resource_type = "aws_ssm_resource_data_sync" in
  let __resource =
    aws_ssm_resource_data_sync ?id ~name ~s3_destination ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_resource_data_sync __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
