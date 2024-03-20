(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules = {
  copy_blobs_created_after : string prop option; [@option]
      (** copy_blobs_created_after *)
  destination_container_name : string prop;
      (** destination_container_name *)
  filter_out_blobs_with_prefix : string prop list option; [@option]
      (** filter_out_blobs_with_prefix *)
  source_container_name : string prop;  (** source_container_name *)
}
[@@deriving yojson_of]
(** rules *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_object_replication = {
  destination_storage_account_id : string prop;
      (** destination_storage_account_id *)
  id : string prop option; [@option]  (** id *)
  source_storage_account_id : string prop;
      (** source_storage_account_id *)
  rules : rules list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_object_replication *)

let rules ?copy_blobs_created_after ?filter_out_blobs_with_prefix
    ~destination_container_name ~source_container_name () : rules =
  {
    copy_blobs_created_after;
    destination_container_name;
    filter_out_blobs_with_prefix;
    source_container_name;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_object_replication ?id ?timeouts
    ~destination_storage_account_id ~source_storage_account_id ~rules
    () : azurerm_storage_object_replication =
  {
    destination_storage_account_id;
    id;
    source_storage_account_id;
    rules;
    timeouts;
  }

type t = {
  destination_object_replication_id : string prop;
  destination_storage_account_id : string prop;
  id : string prop;
  source_object_replication_id : string prop;
  source_storage_account_id : string prop;
}

let make ?id ?timeouts ~destination_storage_account_id
    ~source_storage_account_id ~rules __id =
  let __type = "azurerm_storage_object_replication" in
  let __attrs =
    ({
       destination_object_replication_id =
         Prop.computed __type __id
           "destination_object_replication_id";
       destination_storage_account_id =
         Prop.computed __type __id "destination_storage_account_id";
       id = Prop.computed __type __id "id";
       source_object_replication_id =
         Prop.computed __type __id "source_object_replication_id";
       source_storage_account_id =
         Prop.computed __type __id "source_storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_object_replication
        (azurerm_storage_object_replication ?id ?timeouts
           ~destination_storage_account_id ~source_storage_account_id
           ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~destination_storage_account_id
    ~source_storage_account_id ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~destination_storage_account_id
      ~source_storage_account_id ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
