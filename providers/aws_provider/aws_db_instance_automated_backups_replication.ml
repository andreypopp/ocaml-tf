(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_instance_automated_backups_replication__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_db_instance_automated_backups_replication__timeouts *)

type aws_db_instance_automated_backups_replication = {
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  pre_signed_url : string prop option; [@option]
      (** pre_signed_url *)
  retention_period : float prop option; [@option]
      (** retention_period *)
  source_db_instance_arn : string prop;
      (** source_db_instance_arn *)
  timeouts :
    aws_db_instance_automated_backups_replication__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_instance_automated_backups_replication *)

type t = {
  id : string prop;
  kms_key_id : string prop;
  pre_signed_url : string prop;
  retention_period : float prop;
  source_db_instance_arn : string prop;
}

let aws_db_instance_automated_backups_replication ?id ?kms_key_id
    ?pre_signed_url ?retention_period ?timeouts
    ~source_db_instance_arn __resource_id =
  let __resource_type =
    "aws_db_instance_automated_backups_replication"
  in
  let __resource =
    ({
       id;
       kms_key_id;
       pre_signed_url;
       retention_period;
       source_db_instance_arn;
       timeouts;
     }
      : aws_db_instance_automated_backups_replication)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_instance_automated_backups_replication
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       pre_signed_url =
         Prop.computed __resource_type __resource_id "pre_signed_url";
       retention_period =
         Prop.computed __resource_type __resource_id
           "retention_period";
       source_db_instance_arn =
         Prop.computed __resource_type __resource_id
           "source_db_instance_arn";
     }
      : t)
  in
  __resource_attributes
