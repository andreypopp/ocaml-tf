(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_efs_replication_configuration__destination = {
  availability_zone_name : string prop option; [@option]
      (** availability_zone_name *)
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  region : string prop option; [@option]  (** region *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_efs_replication_configuration__destination *)

type aws_efs_replication_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_efs_replication_configuration__timeouts *)

type aws_efs_replication_configuration = {
  id : string prop option; [@option]  (** id *)
  source_file_system_id : string prop;  (** source_file_system_id *)
  destination : aws_efs_replication_configuration__destination list;
  timeouts : aws_efs_replication_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_efs_replication_configuration *)

type t = {
  creation_time : string prop;
  id : string prop;
  original_source_file_system_arn : string prop;
  source_file_system_arn : string prop;
  source_file_system_id : string prop;
  source_file_system_region : string prop;
}

let aws_efs_replication_configuration ?id ?timeouts
    ~source_file_system_id ~destination __resource_id =
  let __resource_type = "aws_efs_replication_configuration" in
  let __resource =
    ({ id; source_file_system_id; destination; timeouts }
      : aws_efs_replication_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_replication_configuration __resource);
  let __resource_attributes =
    ({
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       id = Prop.computed __resource_type __resource_id "id";
       original_source_file_system_arn =
         Prop.computed __resource_type __resource_id
           "original_source_file_system_arn";
       source_file_system_arn =
         Prop.computed __resource_type __resource_id
           "source_file_system_arn";
       source_file_system_id =
         Prop.computed __resource_type __resource_id
           "source_file_system_id";
       source_file_system_region =
         Prop.computed __resource_type __resource_id
           "source_file_system_region";
     }
      : t)
  in
  __resource_attributes
