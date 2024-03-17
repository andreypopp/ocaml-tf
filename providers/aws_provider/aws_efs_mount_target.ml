(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_efs_mount_target__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_efs_mount_target__timeouts *)

type aws_efs_mount_target = {
  file_system_id : string;  (** file_system_id *)
  id : string option; [@option]  (** id *)
  ip_address : string option; [@option]  (** ip_address *)
  security_groups : string list option; [@option]
      (** security_groups *)
  subnet_id : string;  (** subnet_id *)
  timeouts : aws_efs_mount_target__timeouts option;
}
[@@deriving yojson_of]
(** aws_efs_mount_target *)

let aws_efs_mount_target ?id ?ip_address ?security_groups ?timeouts
    ~file_system_id ~subnet_id __resource_id =
  let __resource_type = "aws_efs_mount_target" in
  let __resource =
    {
      file_system_id;
      id;
      ip_address;
      security_groups;
      subnet_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_mount_target __resource);
  ()
