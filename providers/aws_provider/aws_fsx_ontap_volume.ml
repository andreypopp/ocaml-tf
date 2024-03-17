(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_fsx_ontap_volume__snaplock_configuration__autocommit_period = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : float option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume__snaplock_configuration__autocommit_period *)

type aws_fsx_ontap_volume__snaplock_configuration__retention_period__default_retention = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : float option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume__snaplock_configuration__retention_period__default_retention *)

type aws_fsx_ontap_volume__snaplock_configuration__retention_period__maximum_retention = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : float option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume__snaplock_configuration__retention_period__maximum_retention *)

type aws_fsx_ontap_volume__snaplock_configuration__retention_period__minimum_retention = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : float option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume__snaplock_configuration__retention_period__minimum_retention *)

type aws_fsx_ontap_volume__snaplock_configuration__retention_period = {
  default_retention :
    aws_fsx_ontap_volume__snaplock_configuration__retention_period__default_retention
    list;
  maximum_retention :
    aws_fsx_ontap_volume__snaplock_configuration__retention_period__maximum_retention
    list;
  minimum_retention :
    aws_fsx_ontap_volume__snaplock_configuration__retention_period__minimum_retention
    list;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume__snaplock_configuration__retention_period *)

type aws_fsx_ontap_volume__snaplock_configuration = {
  audit_log_volume : bool option; [@option]  (** audit_log_volume *)
  privileged_delete : string option; [@option]
      (** privileged_delete *)
  snaplock_type : string;  (** snaplock_type *)
  volume_append_mode_enabled : bool option; [@option]
      (** volume_append_mode_enabled *)
  autocommit_period :
    aws_fsx_ontap_volume__snaplock_configuration__autocommit_period
    list;
  retention_period :
    aws_fsx_ontap_volume__snaplock_configuration__retention_period
    list;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume__snaplock_configuration *)

type aws_fsx_ontap_volume__tiering_policy = {
  cooling_period : float option; [@option]  (** cooling_period *)
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume__tiering_policy *)

type aws_fsx_ontap_volume__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume__timeouts *)

type aws_fsx_ontap_volume = {
  bypass_snaplock_enterprise_retention : bool option; [@option]
      (** bypass_snaplock_enterprise_retention *)
  copy_tags_to_backups : bool option; [@option]
      (** copy_tags_to_backups *)
  junction_path : string option; [@option]  (** junction_path *)
  name : string;  (** name *)
  size_in_megabytes : float;  (** size_in_megabytes *)
  skip_final_backup : bool option; [@option]
      (** skip_final_backup *)
  storage_efficiency_enabled : bool option; [@option]
      (** storage_efficiency_enabled *)
  storage_virtual_machine_id : string;
      (** storage_virtual_machine_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  volume_type : string option; [@option]  (** volume_type *)
  snaplock_configuration :
    aws_fsx_ontap_volume__snaplock_configuration list;
  tiering_policy : aws_fsx_ontap_volume__tiering_policy list;
  timeouts : aws_fsx_ontap_volume__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume *)

let aws_fsx_ontap_volume ?bypass_snaplock_enterprise_retention
    ?copy_tags_to_backups ?junction_path ?skip_final_backup
    ?storage_efficiency_enabled ?tags ?volume_type ?timeouts ~name
    ~size_in_megabytes ~storage_virtual_machine_id
    ~snaplock_configuration ~tiering_policy __resource_id =
  let __resource_type = "aws_fsx_ontap_volume" in
  let __resource =
    {
      bypass_snaplock_enterprise_retention;
      copy_tags_to_backups;
      junction_path;
      name;
      size_in_megabytes;
      skip_final_backup;
      storage_efficiency_enabled;
      storage_virtual_machine_id;
      tags;
      volume_type;
      snaplock_configuration;
      tiering_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_ontap_volume __resource);
  ()
