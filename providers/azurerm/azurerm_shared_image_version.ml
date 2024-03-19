(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type target_region = {
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  exclude_from_latest_enabled : bool prop option; [@option]
      (** exclude_from_latest_enabled *)
  name : string prop;  (** name *)
  regional_replica_count : float prop;  (** regional_replica_count *)
  storage_account_type : string prop option; [@option]
      (** storage_account_type *)
}
[@@deriving yojson_of]
(** target_region *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_shared_image_version = {
  blob_uri : string prop option; [@option]  (** blob_uri *)
  deletion_of_replicated_locations_enabled : bool prop option;
      [@option]
      (** deletion_of_replicated_locations_enabled *)
  end_of_life_date : string prop option; [@option]
      (** end_of_life_date *)
  exclude_from_latest : bool prop option; [@option]
      (** exclude_from_latest *)
  gallery_name : string prop;  (** gallery_name *)
  id : string prop option; [@option]  (** id *)
  image_name : string prop;  (** image_name *)
  location : string prop;  (** location *)
  managed_image_id : string prop option; [@option]
      (** managed_image_id *)
  name : string prop;  (** name *)
  os_disk_snapshot_id : string prop option; [@option]
      (** os_disk_snapshot_id *)
  replication_mode : string prop option; [@option]
      (** replication_mode *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_region : target_region list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_shared_image_version *)

let target_region ?disk_encryption_set_id
    ?exclude_from_latest_enabled ?storage_account_type ~name
    ~regional_replica_count () : target_region =
  {
    disk_encryption_set_id;
    exclude_from_latest_enabled;
    name;
    regional_replica_count;
    storage_account_type;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_shared_image_version ?blob_uri
    ?deletion_of_replicated_locations_enabled ?end_of_life_date
    ?exclude_from_latest ?id ?managed_image_id ?os_disk_snapshot_id
    ?replication_mode ?storage_account_id ?tags ?timeouts
    ~gallery_name ~image_name ~location ~name ~resource_group_name
    ~target_region () : azurerm_shared_image_version =
  {
    blob_uri;
    deletion_of_replicated_locations_enabled;
    end_of_life_date;
    exclude_from_latest;
    gallery_name;
    id;
    image_name;
    location;
    managed_image_id;
    name;
    os_disk_snapshot_id;
    replication_mode;
    resource_group_name;
    storage_account_id;
    tags;
    target_region;
    timeouts;
  }

type t = {
  blob_uri : string prop;
  deletion_of_replicated_locations_enabled : bool prop;
  end_of_life_date : string prop;
  exclude_from_latest : bool prop;
  gallery_name : string prop;
  id : string prop;
  image_name : string prop;
  location : string prop;
  managed_image_id : string prop;
  name : string prop;
  os_disk_snapshot_id : string prop;
  replication_mode : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?blob_uri
    ?deletion_of_replicated_locations_enabled ?end_of_life_date
    ?exclude_from_latest ?id ?managed_image_id ?os_disk_snapshot_id
    ?replication_mode ?storage_account_id ?tags ?timeouts
    ~gallery_name ~image_name ~location ~name ~resource_group_name
    ~target_region __resource_id =
  let __resource_type = "azurerm_shared_image_version" in
  let __resource =
    azurerm_shared_image_version ?blob_uri
      ?deletion_of_replicated_locations_enabled ?end_of_life_date
      ?exclude_from_latest ?id ?managed_image_id ?os_disk_snapshot_id
      ?replication_mode ?storage_account_id ?tags ?timeouts
      ~gallery_name ~image_name ~location ~name ~resource_group_name
      ~target_region ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_shared_image_version __resource);
  let __resource_attributes =
    ({
       blob_uri =
         Prop.computed __resource_type __resource_id "blob_uri";
       deletion_of_replicated_locations_enabled =
         Prop.computed __resource_type __resource_id
           "deletion_of_replicated_locations_enabled";
       end_of_life_date =
         Prop.computed __resource_type __resource_id
           "end_of_life_date";
       exclude_from_latest =
         Prop.computed __resource_type __resource_id
           "exclude_from_latest";
       gallery_name =
         Prop.computed __resource_type __resource_id "gallery_name";
       id = Prop.computed __resource_type __resource_id "id";
       image_name =
         Prop.computed __resource_type __resource_id "image_name";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_image_id =
         Prop.computed __resource_type __resource_id
           "managed_image_id";
       name = Prop.computed __resource_type __resource_id "name";
       os_disk_snapshot_id =
         Prop.computed __resource_type __resource_id
           "os_disk_snapshot_id";
       replication_mode =
         Prop.computed __resource_type __resource_id
           "replication_mode";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
