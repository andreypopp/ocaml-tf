(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_image__data_disk = {
  blob_uri : string prop option; [@option]  (** blob_uri *)
  caching : string prop option; [@option]  (** caching *)
  lun : float prop option; [@option]  (** lun *)
  managed_disk_id : string prop option; [@option]
      (** managed_disk_id *)
  size_gb : float prop option; [@option]  (** size_gb *)
}
[@@deriving yojson_of]
(** azurerm_image__data_disk *)

type azurerm_image__os_disk = {
  blob_uri : string prop option; [@option]  (** blob_uri *)
  caching : string prop option; [@option]  (** caching *)
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  managed_disk_id : string prop option; [@option]
      (** managed_disk_id *)
  os_state : string prop option; [@option]  (** os_state *)
  os_type : string prop option; [@option]  (** os_type *)
  size_gb : float prop option; [@option]  (** size_gb *)
}
[@@deriving yojson_of]
(** azurerm_image__os_disk *)

type azurerm_image__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_image__timeouts *)

type azurerm_image = {
  hyper_v_generation : string prop option; [@option]
      (** hyper_v_generation *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_virtual_machine_id : string prop option; [@option]
      (** source_virtual_machine_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_resilient : bool prop option; [@option]  (** zone_resilient *)
  data_disk : azurerm_image__data_disk list;
  os_disk : azurerm_image__os_disk list;
  timeouts : azurerm_image__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_image *)

let azurerm_image ?hyper_v_generation ?id ?source_virtual_machine_id
    ?tags ?zone_resilient ?timeouts ~location ~name
    ~resource_group_name ~data_disk ~os_disk __resource_id =
  let __resource_type = "azurerm_image" in
  let __resource =
    {
      hyper_v_generation;
      id;
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
