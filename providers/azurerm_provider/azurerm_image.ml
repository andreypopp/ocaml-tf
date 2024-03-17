(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_image__data_disk = {
  blob_uri : string option; [@option]  (** blob_uri *)
  caching : string option; [@option]  (** caching *)
  lun : float option; [@option]  (** lun *)
  managed_disk_id : string option; [@option]  (** managed_disk_id *)
  size_gb : float option; [@option]  (** size_gb *)
}
[@@deriving yojson_of]
(** azurerm_image__data_disk *)

type azurerm_image__os_disk = {
  blob_uri : string option; [@option]  (** blob_uri *)
  caching : string option; [@option]  (** caching *)
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  managed_disk_id : string option; [@option]  (** managed_disk_id *)
  os_state : string option; [@option]  (** os_state *)
  os_type : string option; [@option]  (** os_type *)
  size_gb : float option; [@option]  (** size_gb *)
}
[@@deriving yojson_of]
(** azurerm_image__os_disk *)

type azurerm_image__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_image__timeouts *)

type azurerm_image = {
  hyper_v_generation : string option; [@option]
      (** hyper_v_generation *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  source_virtual_machine_id : string option; [@option]
      (** source_virtual_machine_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_resilient : bool option; [@option]  (** zone_resilient *)
  data_disk : azurerm_image__data_disk list;
  os_disk : azurerm_image__os_disk list;
  timeouts : azurerm_image__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_image *)

let azurerm_image ?hyper_v_generation ?source_virtual_machine_id
    ?tags ?zone_resilient ?timeouts ~location ~name
    ~resource_group_name ~data_disk ~os_disk __resource_id =
  let __resource_type = "azurerm_image" in
  let __resource =
    {
      hyper_v_generation;
      location;
      name;
      resource_group_name;
      source_virtual_machine_id;
      tags;
      zone_resilient;
      data_disk;
      os_disk;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_image __resource);
  ()
