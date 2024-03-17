(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_efs_replication_configuration__destination = {
  availability_zone_name : string option; [@option]
      (** availability_zone_name *)
  file_system_id : string option; [@option]  (** file_system_id *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  region : string option; [@option]  (** region *)
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_efs_replication_configuration__destination *)

type aws_efs_replication_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_efs_replication_configuration__timeouts *)

type aws_efs_replication_configuration = {
  source_file_system_id : string;  (** source_file_system_id *)
  destination : aws_efs_replication_configuration__destination list;
  timeouts : aws_efs_replication_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_efs_replication_configuration *)

let aws_efs_replication_configuration ?timeouts
    ~source_file_system_id ~destination __resource_id =
  let __resource_type = "aws_efs_replication_configuration" in
  let __resource =
    { source_file_system_id; destination; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_replication_configuration __resource);
  ()
