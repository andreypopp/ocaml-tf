(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__actions__base_blob = {
  auto_tier_to_hot_from_cool_enabled : bool prop option; [@option]
      (** auto_tier_to_hot_from_cool_enabled *)
  delete_after_days_since_creation_greater_than : float prop option;
      [@option]
      (** delete_after_days_since_creation_greater_than *)
  delete_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
      (** delete_after_days_since_last_access_time_greater_than *)
  delete_after_days_since_modification_greater_than :
    float prop option;
      [@option]
      (** delete_after_days_since_modification_greater_than *)
  tier_to_archive_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_creation_greater_than *)
  tier_to_archive_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_last_access_time_greater_than *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_archive_after_days_since_modification_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_modification_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_creation_greater_than *)
  tier_to_cold_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_last_access_time_greater_than *)
  tier_to_cold_after_days_since_modification_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_modification_greater_than *)
  tier_to_cool_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_cool_after_days_since_creation_greater_than *)
  tier_to_cool_after_days_since_last_access_time_greater_than :
    float prop option;
      [@option]
      (** tier_to_cool_after_days_since_last_access_time_greater_than *)
  tier_to_cool_after_days_since_modification_greater_than :
    float prop option;
      [@option]
      (** tier_to_cool_after_days_since_modification_greater_than *)
}
[@@deriving yojson_of]
(** rule__actions__base_blob *)

type rule__actions__snapshot = {
  change_tier_to_archive_after_days_since_creation :
    float prop option;
      [@option]
      (** change_tier_to_archive_after_days_since_creation *)
  change_tier_to_cool_after_days_since_creation : float prop option;
      [@option]
      (** change_tier_to_cool_after_days_since_creation *)
  delete_after_days_since_creation_greater_than : float prop option;
      [@option]
      (** delete_after_days_since_creation_greater_than *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_creation_greater_than *)
}
[@@deriving yojson_of]
(** rule__actions__snapshot *)

type rule__actions__version = {
  change_tier_to_archive_after_days_since_creation :
    float prop option;
      [@option]
      (** change_tier_to_archive_after_days_since_creation *)
  change_tier_to_cool_after_days_since_creation : float prop option;
      [@option]
      (** change_tier_to_cool_after_days_since_creation *)
  delete_after_days_since_creation : float prop option; [@option]
      (** delete_after_days_since_creation *)
  tier_to_archive_after_days_since_last_tier_change_greater_than :
    float prop option;
      [@option]
      (** tier_to_archive_after_days_since_last_tier_change_greater_than *)
  tier_to_cold_after_days_since_creation_greater_than :
    float prop option;
      [@option]
      (** tier_to_cold_after_days_since_creation_greater_than *)
}
[@@deriving yojson_of]
(** rule__actions__version *)

type rule__actions = {
  base_blob : rule__actions__base_blob list;
  snapshot : rule__actions__snapshot list;
  version : rule__actions__version list;
}
[@@deriving yojson_of]
(** rule__actions *)

type rule__filters__match_blob_index_tag = {
  name : string prop;  (** name *)
  operation : string prop option; [@option]  (** operation *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** rule__filters__match_blob_index_tag *)

type rule__filters = {
  blob_types : string prop list;  (** blob_types *)
  prefix_match : string prop list option; [@option]
      (** prefix_match *)
  match_blob_index_tag : rule__filters__match_blob_index_tag list;
}
[@@deriving yojson_of]
(** rule__filters *)

type rule = {
  enabled : bool prop;  (** enabled *)
  name : string prop;  (** name *)
  actions : rule__actions list;
  filters : rule__filters list;
}
[@@deriving yojson_of]
(** rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_management_policy = {
  id : string prop option; [@option]  (** id *)
  storage_account_id : string prop;  (** storage_account_id *)
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_management_policy *)

let rule__actions__base_blob ?auto_tier_to_hot_from_cool_enabled
    ?delete_after_days_since_creation_greater_than
    ?delete_after_days_since_last_access_time_greater_than
    ?delete_after_days_since_modification_greater_than
    ?tier_to_archive_after_days_since_creation_greater_than
    ?tier_to_archive_after_days_since_last_access_time_greater_than
    ?tier_to_archive_after_days_since_last_tier_change_greater_than
    ?tier_to_archive_after_days_since_modification_greater_than
    ?tier_to_cold_after_days_since_creation_greater_than
    ?tier_to_cold_after_days_since_last_access_time_greater_than
    ?tier_to_cold_after_days_since_modification_greater_than
    ?tier_to_cool_after_days_since_creation_greater_than
    ?tier_to_cool_after_days_since_last_access_time_greater_than
    ?tier_to_cool_after_days_since_modification_greater_than () :
    rule__actions__base_blob =
  {
    auto_tier_to_hot_from_cool_enabled;
    delete_after_days_since_creation_greater_than;
    delete_after_days_since_last_access_time_greater_than;
    delete_after_days_since_modification_greater_than;
    tier_to_archive_after_days_since_creation_greater_than;
    tier_to_archive_after_days_since_last_access_time_greater_than;
    tier_to_archive_after_days_since_last_tier_change_greater_than;
    tier_to_archive_after_days_since_modification_greater_than;
    tier_to_cold_after_days_since_creation_greater_than;
    tier_to_cold_after_days_since_last_access_time_greater_than;
    tier_to_cold_after_days_since_modification_greater_than;
    tier_to_cool_after_days_since_creation_greater_than;
    tier_to_cool_after_days_since_last_access_time_greater_than;
    tier_to_cool_after_days_since_modification_greater_than;
  }

let rule__actions__snapshot
    ?change_tier_to_archive_after_days_since_creation
    ?change_tier_to_cool_after_days_since_creation
    ?delete_after_days_since_creation_greater_than
    ?tier_to_archive_after_days_since_last_tier_change_greater_than
    ?tier_to_cold_after_days_since_creation_greater_than () :
    rule__actions__snapshot =
  {
    change_tier_to_archive_after_days_since_creation;
    change_tier_to_cool_after_days_since_creation;
    delete_after_days_since_creation_greater_than;
    tier_to_archive_after_days_since_last_tier_change_greater_than;
    tier_to_cold_after_days_since_creation_greater_than;
  }

let rule__actions__version
    ?change_tier_to_archive_after_days_since_creation
    ?change_tier_to_cool_after_days_since_creation
    ?delete_after_days_since_creation
    ?tier_to_archive_after_days_since_last_tier_change_greater_than
    ?tier_to_cold_after_days_since_creation_greater_than () :
    rule__actions__version =
  {
    change_tier_to_archive_after_days_since_creation;
    change_tier_to_cool_after_days_since_creation;
    delete_after_days_since_creation;
    tier_to_archive_after_days_since_last_tier_change_greater_than;
    tier_to_cold_after_days_since_creation_greater_than;
  }

let rule__actions ~base_blob ~snapshot ~version () : rule__actions =
  { base_blob; snapshot; version }

let rule__filters__match_blob_index_tag ?operation ~name ~value () :
    rule__filters__match_blob_index_tag =
  { name; operation; value }

let rule__filters ?prefix_match ~blob_types ~match_blob_index_tag ()
    : rule__filters =
  { blob_types; prefix_match; match_blob_index_tag }

let rule ~enabled ~name ~actions ~filters () : rule =
  { enabled; name; actions; filters }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_management_policy ?id ?timeouts
    ~storage_account_id ~rule () : azurerm_storage_management_policy
    =
  { id; storage_account_id; rule; timeouts }

type t = { id : string prop; storage_account_id : string prop }

let make ?id ?timeouts ~storage_account_id ~rule __id =
  let __type = "azurerm_storage_management_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_management_policy
        (azurerm_storage_management_policy ?id ?timeouts
           ~storage_account_id ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~storage_account_id ~rule __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~storage_account_id ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
