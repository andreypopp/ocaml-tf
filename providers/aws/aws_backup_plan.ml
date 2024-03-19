(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type advanced_backup_setting = {
  backup_options : (string * string prop) list;
      (** backup_options *)
  resource_type : string prop;  (** resource_type *)
}
[@@deriving yojson_of]
(** advanced_backup_setting *)

type rule__copy_action__lifecycle = {
  cold_storage_after : float prop option; [@option]
      (** cold_storage_after *)
  delete_after : float prop option; [@option]  (** delete_after *)
  opt_in_to_archive_for_supported_resources : bool prop option;
      [@option]
      (** opt_in_to_archive_for_supported_resources *)
}
[@@deriving yojson_of]
(** rule__copy_action__lifecycle *)

type rule__copy_action = {
  destination_vault_arn : string prop;  (** destination_vault_arn *)
  lifecycle : rule__copy_action__lifecycle list;
}
[@@deriving yojson_of]
(** rule__copy_action *)

type rule__lifecycle = {
  cold_storage_after : float prop option; [@option]
      (** cold_storage_after *)
  delete_after : float prop option; [@option]  (** delete_after *)
  opt_in_to_archive_for_supported_resources : bool prop option;
      [@option]
      (** opt_in_to_archive_for_supported_resources *)
}
[@@deriving yojson_of]
(** rule__lifecycle *)

type rule = {
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
  copy_action : rule__copy_action list;
  lifecycle : rule__lifecycle list;
}
[@@deriving yojson_of]
(** rule *)

type aws_backup_plan = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  advanced_backup_setting : advanced_backup_setting list;
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_backup_plan *)

let advanced_backup_setting ~backup_options ~resource_type () :
    advanced_backup_setting =
  { backup_options; resource_type }

let rule__copy_action__lifecycle ?cold_storage_after ?delete_after
    ?opt_in_to_archive_for_supported_resources () :
    rule__copy_action__lifecycle =
  {
    cold_storage_after;
    delete_after;
    opt_in_to_archive_for_supported_resources;
  }

let rule__copy_action ~destination_vault_arn ~lifecycle () :
    rule__copy_action =
  { destination_vault_arn; lifecycle }

let rule__lifecycle ?cold_storage_after ?delete_after
    ?opt_in_to_archive_for_supported_resources () : rule__lifecycle =
  {
    cold_storage_after;
    delete_after;
    opt_in_to_archive_for_supported_resources;
  }

let rule ?completion_window ?enable_continuous_backup
    ?recovery_point_tags ?schedule ?start_window ~rule_name
    ~target_vault_name ~copy_action ~lifecycle () : rule =
  {
    completion_window;
    enable_continuous_backup;
    recovery_point_tags;
    rule_name;
    schedule;
    start_window;
    target_vault_name;
    copy_action;
    lifecycle;
  }

let aws_backup_plan ?id ?tags ?tags_all ~name
    ~advanced_backup_setting ~rule () : aws_backup_plan =
  { id; name; tags; tags_all; advanced_backup_setting; rule }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let register ?tf_module ?id ?tags ?tags_all ~name
    ~advanced_backup_setting ~rule __resource_id =
  let __resource_type = "aws_backup_plan" in
  let __resource =
    aws_backup_plan ?id ?tags ?tags_all ~name
      ~advanced_backup_setting ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_plan __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
