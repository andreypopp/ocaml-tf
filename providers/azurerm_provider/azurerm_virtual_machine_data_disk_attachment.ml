(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_machine_data_disk_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_data_disk_attachment__timeouts *)

type azurerm_virtual_machine_data_disk_attachment = {
  caching : string prop;  (** caching *)
  create_option : string prop option; [@option]  (** create_option *)
  id : string prop option; [@option]  (** id *)
  lun : float prop;  (** lun *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
  timeouts :
    azurerm_virtual_machine_data_disk_attachment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_data_disk_attachment *)

type t = {
  caching : string prop;
  create_option : string prop;
  id : string prop;
  lun : float prop;
  managed_disk_id : string prop;
  virtual_machine_id : string prop;
  write_accelerator_enabled : bool prop;
}

let azurerm_virtual_machine_data_disk_attachment ?create_option ?id
    ?write_accelerator_enabled ?timeouts ~caching ~lun
    ~managed_disk_id ~virtual_machine_id __resource_id =
  let __resource_type =
    "azurerm_virtual_machine_data_disk_attachment"
  in
  let __resource =
    ({
       caching;
       create_option;
       id;
       lun;
       managed_disk_id;
       virtual_machine_id;
       write_accelerator_enabled;
       timeouts;
     }
      : azurerm_virtual_machine_data_disk_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_data_disk_attachment
       __resource);
  let __resource_attributes =
    ({
       caching =
         Prop.computed __resource_type __resource_id "caching";
       create_option =
         Prop.computed __resource_type __resource_id "create_option";
       id = Prop.computed __resource_type __resource_id "id";
       lun = Prop.computed __resource_type __resource_id "lun";
       managed_disk_id =
         Prop.computed __resource_type __resource_id
           "managed_disk_id";
       virtual_machine_id =
         Prop.computed __resource_type __resource_id
           "virtual_machine_id";
       write_accelerator_enabled =
         Prop.computed __resource_type __resource_id
           "write_accelerator_enabled";
     }
      : t)
  in
  __resource_attributes
