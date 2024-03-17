(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_plan__advanced_backup_setting = {
  backup_options : (string * string) list;  (** backup_options *)
  resource_type : string;  (** resource_type *)
}
[@@deriving yojson_of]
(** aws_backup_plan__advanced_backup_setting *)

type aws_backup_plan__rule__copy_action__lifecycle = {
  cold_storage_after : float option; [@option]
      (** cold_storage_after *)
  delete_after : float option; [@option]  (** delete_after *)
  opt_in_to_archive_for_supported_resources : bool option; [@option]
      (** opt_in_to_archive_for_supported_resources *)
}
[@@deriving yojson_of]
(** aws_backup_plan__rule__copy_action__lifecycle *)

type aws_backup_plan__rule__copy_action = {
  destination_vault_arn : string;  (** destination_vault_arn *)
  lifecycle : aws_backup_plan__rule__copy_action__lifecycle list;
}
[@@deriving yojson_of]
(** aws_backup_plan__rule__copy_action *)

type aws_backup_plan__rule__lifecycle = {
  cold_storage_after : float option; [@option]
      (** cold_storage_after *)
  delete_after : float option; [@option]  (** delete_after *)
  opt_in_to_archive_for_supported_resources : bool option; [@option]
      (** opt_in_to_archive_for_supported_resources *)
}
[@@deriving yojson_of]
(** aws_backup_plan__rule__lifecycle *)

type aws_backup_plan__rule = {
  completion_window : float option; [@option]
      (** completion_window *)
  enable_continuous_backup : bool option; [@option]
      (** enable_continuous_backup *)
  recovery_point_tags : (string * string) list option; [@option]
      (** recovery_point_tags *)
  rule_name : string;  (** rule_name *)
  schedule : string option; [@option]  (** schedule *)
  start_window : float option; [@option]  (** start_window *)
  target_vault_name : string;  (** target_vault_name *)
  copy_action : aws_backup_plan__rule__copy_action list;
  lifecycle : aws_backup_plan__rule__lifecycle list;
}
[@@deriving yojson_of]
(** aws_backup_plan__rule *)

type aws_backup_plan = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  advanced_backup_setting :
    aws_backup_plan__advanced_backup_setting list;
  rule : aws_backup_plan__rule list;
}
[@@deriving yojson_of]
(** aws_backup_plan *)

let aws_backup_plan ?tags ~name ~advanced_backup_setting ~rule
    __resource_id =
  let __resource_type = "aws_backup_plan" in
  let __resource = { name; tags; advanced_backup_setting; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_plan __resource);
  ()
