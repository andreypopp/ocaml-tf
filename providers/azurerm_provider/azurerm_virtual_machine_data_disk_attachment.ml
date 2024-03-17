(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_machine_data_disk_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_data_disk_attachment__timeouts *)

type azurerm_virtual_machine_data_disk_attachment = {
  caching : string;  (** caching *)
  create_option : string option; [@option]  (** create_option *)
  lun : float;  (** lun *)
  managed_disk_id : string;  (** managed_disk_id *)
  virtual_machine_id : string;  (** virtual_machine_id *)
  write_accelerator_enabled : bool option; [@option]
      (** write_accelerator_enabled *)
  timeouts :
    azurerm_virtual_machine_data_disk_attachment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_data_disk_attachment *)

let azurerm_virtual_machine_data_disk_attachment ?create_option
    ?write_accelerator_enabled ?timeouts ~caching ~lun
    ~managed_disk_id ~virtual_machine_id __resource_id =
  let __resource_type =
    "azurerm_virtual_machine_data_disk_attachment"
  in
  let __resource =
    {
      caching;
      create_option;
      lun;
      managed_disk_id;
      virtual_machine_id;
      write_accelerator_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_data_disk_attachment
       __resource);
  ()
