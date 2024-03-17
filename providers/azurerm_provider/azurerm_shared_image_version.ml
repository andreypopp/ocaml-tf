(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_shared_image_version__target_region = {
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  exclude_from_latest_enabled : bool option; [@option]
      (** exclude_from_latest_enabled *)
  name : string;  (** name *)
  regional_replica_count : float;  (** regional_replica_count *)
  storage_account_type : string option; [@option]
      (** storage_account_type *)
}
[@@deriving yojson_of]
(** azurerm_shared_image_version__target_region *)

type azurerm_shared_image_version__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_shared_image_version__timeouts *)

type azurerm_shared_image_version = {
  blob_uri : string option; [@option]  (** blob_uri *)
  deletion_of_replicated_locations_enabled : bool option; [@option]
      (** deletion_of_replicated_locations_enabled *)
  end_of_life_date : string option; [@option]
      (** end_of_life_date *)
  exclude_from_latest : bool option; [@option]
      (** exclude_from_latest *)
  gallery_name : string;  (** gallery_name *)
  image_name : string;  (** image_name *)
  location : string;  (** location *)
  managed_image_id : string option; [@option]
      (** managed_image_id *)
  name : string;  (** name *)
  os_disk_snapshot_id : string option; [@option]
      (** os_disk_snapshot_id *)
  replication_mode : string option; [@option]
      (** replication_mode *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_id : string option; [@option]
      (** storage_account_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_region : azurerm_shared_image_version__target_region list;
  timeouts : azurerm_shared_image_version__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_shared_image_version *)

let azurerm_shared_image_version ?blob_uri
    ?deletion_of_replicated_locations_enabled ?end_of_life_date
    ?exclude_from_latest ?managed_image_id ?os_disk_snapshot_id
    ?replication_mode ?storage_account_id ?tags ?timeouts
    ~gallery_name ~image_name ~location ~name ~resource_group_name
    ~target_region __resource_id =
  let __resource_type = "azurerm_shared_image_version" in
  let __resource =
    {
      blob_uri;
      deletion_of_replicated_locations_enabled;
      end_of_life_date;
      exclude_from_latest;
      gallery_name;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_shared_image_version __resource);
  ()
