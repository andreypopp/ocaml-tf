(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_plan__advanced_backup_setting = {
  backup_options : (string * string prop) list;
      (** backup_options *)
  resource_type : string prop;  (** resource_type *)
}
[@@deriving yojson_of]
(** aws_backup_plan__advanced_backup_setting *)

type aws_backup_plan__rule__copy_action__lifecycle = {
  cold_storage_after : float prop option; [@option]
      (** cold_storage_after *)
  delete_after : float prop option; [@option]  (** delete_after *)
  opt_in_to_archive_for_supported_resources : bool prop option;
      [@option]
      (** opt_in_to_archive_for_supported_resources *)
}
[@@deriving yojson_of]
(** aws_backup_plan__rule__copy_action__lifecycle *)

type aws_backup_plan__rule__copy_action = {
  destination_vault_arn : string prop;  (** destination_vault_arn *)
  lifecycle : aws_backup_plan__rule__copy_action__lifecycle list;
}
[@@deriving yojson_of]
(** aws_backup_plan__rule__copy_action *)

type aws_backup_plan__rule__lifecycle = {
  cold_storage_after : float prop option; [@option]
      (** cold_storage_after *)
  delete_after : float prop option; [@option]  (** delete_after *)
  opt_in_to_archive_for_supported_resources : bool prop option;
      [@option]
      (** opt_in_to_archive_for_supported_resources *)
}
[@@deriving yojson_of]
(** aws_backup_plan__rule__lifecycle *)

type aws_backup_plan__rule = {
  completion_window : float prop option; [@option]
      (** completion_window *)
  enable_continuous_backup : bool prop option; [@option]
      (** enable_continuous_backup *)
  recovery_point_tags : (string * string prop) list option; [@option]
      (** recovery_point_tags *)
  rule_name : string prop;  (** rule_name *)
  schedule : string prop option; [@option]  (** schedule *)
  start_window : float prop option; [@option]  (** start_window *)
  target_vault_name : string prop;  (** target_vault_name *)
  copy_action : aws_backup_plan__rule__copy_action list;
  lifecycle : aws_backup_plan__rule__lifecycle list;
}
[@@deriving yojson_of]
(** aws_backup_plan__rule *)

type aws_backup_plan = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  advanced_backup_setting :
    aws_backup_plan__advanced_backup_setting list;
  rule : aws_backup_plan__rule list;
}
[@@deriving yojson_of]
(** aws_backup_plan *)

let aws_backup_plan ?id ?tags ?tags_all ~name
    ~advanced_backup_setting ~rule __resource_id =
  let __resource_type = "aws_backup_plan" in
  let __resource =
    { id; name; tags; tags_all; advanced_backup_setting; rule }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_plan __resource);
  ()
