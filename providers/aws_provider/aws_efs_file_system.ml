(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_efs_file_system__lifecycle_policy = {
  transition_to_archive : string option; [@option]
      (** transition_to_archive *)
  transition_to_ia : string option; [@option]
      (** transition_to_ia *)
  transition_to_primary_storage_class : string option; [@option]
      (** transition_to_primary_storage_class *)
}
[@@deriving yojson_of]
(** aws_efs_file_system__lifecycle_policy *)

type aws_efs_file_system__protection = {
  replication_overwrite : string option; [@option]
      (** replication_overwrite *)
}
[@@deriving yojson_of]
(** aws_efs_file_system__protection *)

type aws_efs_file_system__size_in_bytes = {
  value : float;  (** value *)
  value_in_ia : float;  (** value_in_ia *)
  value_in_standard : float;  (** value_in_standard *)
}
[@@deriving yojson_of]

type aws_efs_file_system = {
  provisioned_throughput_in_mibps : float option; [@option]
      (** provisioned_throughput_in_mibps *)
  tags : (string * string) list option; [@option]  (** tags *)
  throughput_mode : string option; [@option]  (** throughput_mode *)
  lifecycle_policy : aws_efs_file_system__lifecycle_policy list;
  protection : aws_efs_file_system__protection list;
}
[@@deriving yojson_of]
(** aws_efs_file_system *)

let aws_efs_file_system ?provisioned_throughput_in_mibps ?tags
    ?throughput_mode ~lifecycle_policy ~protection __resource_id =
  let __resource_type = "aws_efs_file_system" in
  let __resource =
    {
      provisioned_throughput_in_mibps;
      tags;
      throughput_mode;
      lifecycle_policy;
      protection;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_file_system __resource);
  ()
