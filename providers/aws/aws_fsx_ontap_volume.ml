(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type snaplock_configuration__autocommit_period = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** snaplock_configuration__autocommit_period *)

type snaplock_configuration__retention_period__default_retention = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** snaplock_configuration__retention_period__default_retention *)

type snaplock_configuration__retention_period__maximum_retention = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** snaplock_configuration__retention_period__maximum_retention *)

type snaplock_configuration__retention_period__minimum_retention = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** snaplock_configuration__retention_period__minimum_retention *)

type snaplock_configuration__retention_period = {
  default_retention :
    snaplock_configuration__retention_period__default_retention list;
  maximum_retention :
    snaplock_configuration__retention_period__maximum_retention list;
  minimum_retention :
    snaplock_configuration__retention_period__minimum_retention list;
}
[@@deriving yojson_of]
(** snaplock_configuration__retention_period *)

type snaplock_configuration = {
  audit_log_volume : bool prop option; [@option]
      (** audit_log_volume *)
  privileged_delete : string prop option; [@option]
      (** privileged_delete *)
  snaplock_type : string prop;  (** snaplock_type *)
  volume_append_mode_enabled : bool prop option; [@option]
      (** volume_append_mode_enabled *)
  autocommit_period : snaplock_configuration__autocommit_period list;
  retention_period : snaplock_configuration__retention_period list;
}
[@@deriving yojson_of]
(** snaplock_configuration *)

type tiering_policy = {
  cooling_period : float prop option; [@option]
      (** cooling_period *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** tiering_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fsx_ontap_volume = {
  bypass_snaplock_enterprise_retention : bool prop option; [@option]
      (** bypass_snaplock_enterprise_retention *)
  copy_tags_to_backups : bool prop option; [@option]
      (** copy_tags_to_backups *)
  id : string prop option; [@option]  (** id *)
  junction_path : string prop option; [@option]  (** junction_path *)
  name : string prop;  (** name *)
  ontap_volume_type : string prop option; [@option]
      (** ontap_volume_type *)
  security_style : string prop option; [@option]
      (** security_style *)
  size_in_megabytes : float prop;  (** size_in_megabytes *)
  skip_final_backup : bool prop option; [@option]
      (** skip_final_backup *)
  snapshot_policy : string prop option; [@option]
      (** snapshot_policy *)
  storage_efficiency_enabled : bool prop option; [@option]
      (** storage_efficiency_enabled *)
  storage_virtual_machine_id : string prop;
      (** storage_virtual_machine_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_type : string prop option; [@option]  (** volume_type *)
  snaplock_configuration : snaplock_configuration list;
  tiering_policy : tiering_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_volume *)

let snaplock_configuration__autocommit_period ?type_ ?value () :
    snaplock_configuration__autocommit_period =
  { type_; value }

let snaplock_configuration__retention_period__default_retention
    ?type_ ?value () :
    snaplock_configuration__retention_period__default_retention =
  { type_; value }

let snaplock_configuration__retention_period__maximum_retention
    ?type_ ?value () :
    snaplock_configuration__retention_period__maximum_retention =
  { type_; value }

let snaplock_configuration__retention_period__minimum_retention
    ?type_ ?value () :
    snaplock_configuration__retention_period__minimum_retention =
  { type_; value }

let snaplock_configuration__retention_period ~default_retention
    ~maximum_retention ~minimum_retention () :
    snaplock_configuration__retention_period =
  { default_retention; maximum_retention; minimum_retention }

let snaplock_configuration ?audit_log_volume ?privileged_delete
    ?volume_append_mode_enabled ~snaplock_type ~autocommit_period
    ~retention_period () : snaplock_configuration =
  {
    audit_log_volume;
    privileged_delete;
    snaplock_type;
    volume_append_mode_enabled;
    autocommit_period;
    retention_period;
  }

let tiering_policy ?cooling_period ?name () : tiering_policy =
  { cooling_period; name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_ontap_volume ?bypass_snaplock_enterprise_retention
    ?copy_tags_to_backups ?id ?junction_path ?ontap_volume_type
    ?security_style ?skip_final_backup ?snapshot_policy
    ?storage_efficiency_enabled ?tags ?tags_all ?volume_type
    ?timeouts ~name ~size_in_megabytes ~storage_virtual_machine_id
    ~snaplock_configuration ~tiering_policy () : aws_fsx_ontap_volume
    =
  {
    bypass_snaplock_enterprise_retention;
    copy_tags_to_backups;
    id;
    junction_path;
    name;
    ontap_volume_type;
    security_style;
    size_in_megabytes;
    skip_final_backup;
    snapshot_policy;
    storage_efficiency_enabled;
    storage_virtual_machine_id;
    tags;
    tags_all;
    volume_type;
    snaplock_configuration;
    tiering_policy;
    timeouts;
  }

type t = {
  arn : string prop;
  bypass_snaplock_enterprise_retention : bool prop;
  copy_tags_to_backups : bool prop;
  file_system_id : string prop;
  flexcache_endpoint_type : string prop;
  id : string prop;
  junction_path : string prop;
  name : string prop;
  ontap_volume_type : string prop;
  security_style : string prop;
  size_in_megabytes : float prop;
  skip_final_backup : bool prop;
  snapshot_policy : string prop;
  storage_efficiency_enabled : bool prop;
  storage_virtual_machine_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uuid : string prop;
  volume_type : string prop;
}

let make ?bypass_snaplock_enterprise_retention ?copy_tags_to_backups
    ?id ?junction_path ?ontap_volume_type ?security_style
    ?skip_final_backup ?snapshot_policy ?storage_efficiency_enabled
    ?tags ?tags_all ?volume_type ?timeouts ~name ~size_in_megabytes
    ~storage_virtual_machine_id ~snaplock_configuration
    ~tiering_policy __id =
  let __type = "aws_fsx_ontap_volume" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bypass_snaplock_enterprise_retention =
         Prop.computed __type __id
           "bypass_snaplock_enterprise_retention";
       copy_tags_to_backups =
         Prop.computed __type __id "copy_tags_to_backups";
       file_system_id = Prop.computed __type __id "file_system_id";
       flexcache_endpoint_type =
         Prop.computed __type __id "flexcache_endpoint_type";
       id = Prop.computed __type __id "id";
       junction_path = Prop.computed __type __id "junction_path";
       name = Prop.computed __type __id "name";
       ontap_volume_type =
         Prop.computed __type __id "ontap_volume_type";
       security_style = Prop.computed __type __id "security_style";
       size_in_megabytes =
         Prop.computed __type __id "size_in_megabytes";
       skip_final_backup =
         Prop.computed __type __id "skip_final_backup";
       snapshot_policy = Prop.computed __type __id "snapshot_policy";
       storage_efficiency_enabled =
         Prop.computed __type __id "storage_efficiency_enabled";
       storage_virtual_machine_id =
         Prop.computed __type __id "storage_virtual_machine_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uuid = Prop.computed __type __id "uuid";
       volume_type = Prop.computed __type __id "volume_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_ontap_volume
        (aws_fsx_ontap_volume ?bypass_snaplock_enterprise_retention
           ?copy_tags_to_backups ?id ?junction_path
           ?ontap_volume_type ?security_style ?skip_final_backup
           ?snapshot_policy ?storage_efficiency_enabled ?tags
           ?tags_all ?volume_type ?timeouts ~name ~size_in_megabytes
           ~storage_virtual_machine_id ~snaplock_configuration
           ~tiering_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_snaplock_enterprise_retention
    ?copy_tags_to_backups ?id ?junction_path ?ontap_volume_type
    ?security_style ?skip_final_backup ?snapshot_policy
    ?storage_efficiency_enabled ?tags ?tags_all ?volume_type
    ?timeouts ~name ~size_in_megabytes ~storage_virtual_machine_id
    ~snaplock_configuration ~tiering_policy __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_snaplock_enterprise_retention ?copy_tags_to_backups
      ?id ?junction_path ?ontap_volume_type ?security_style
      ?skip_final_backup ?snapshot_policy ?storage_efficiency_enabled
      ?tags ?tags_all ?volume_type ?timeouts ~name ~size_in_megabytes
      ~storage_virtual_machine_id ~snaplock_configuration
      ~tiering_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
