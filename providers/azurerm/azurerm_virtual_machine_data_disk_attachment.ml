(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_machine_data_disk_attachment = {
  caching : string prop;  (** caching *)
  create_option : string prop option; [@option]  (** create_option *)
  id : string prop option; [@option]  (** id *)
  lun : float prop;  (** lun *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_data_disk_attachment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine_data_disk_attachment ?create_option ?id
    ?write_accelerator_enabled ?timeouts ~caching ~lun
    ~managed_disk_id ~virtual_machine_id () :
    azurerm_virtual_machine_data_disk_attachment =
  {
    caching;
    create_option;
    id;
    lun;
    managed_disk_id;
    virtual_machine_id;
    write_accelerator_enabled;
    timeouts;
  }

type t = {
  caching : string prop;
  create_option : string prop;
  id : string prop;
  lun : float prop;
  managed_disk_id : string prop;
  virtual_machine_id : string prop;
  write_accelerator_enabled : bool prop;
}

let make ?create_option ?id ?write_accelerator_enabled ?timeouts
    ~caching ~lun ~managed_disk_id ~virtual_machine_id __id =
  let __type = "azurerm_virtual_machine_data_disk_attachment" in
  let __attrs =
    ({
       caching = Prop.computed __type __id "caching";
       create_option = Prop.computed __type __id "create_option";
       id = Prop.computed __type __id "id";
       lun = Prop.computed __type __id "lun";
       managed_disk_id = Prop.computed __type __id "managed_disk_id";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
       write_accelerator_enabled =
         Prop.computed __type __id "write_accelerator_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_data_disk_attachment
        (azurerm_virtual_machine_data_disk_attachment ?create_option
           ?id ?write_accelerator_enabled ?timeouts ~caching ~lun
           ~managed_disk_id ~virtual_machine_id ());
    attrs = __attrs;
  }

let register ?tf_module ?create_option ?id ?write_accelerator_enabled
    ?timeouts ~caching ~lun ~managed_disk_id ~virtual_machine_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?create_option ?id ?write_accelerator_enabled ?timeouts
      ~caching ~lun ~managed_disk_id ~virtual_machine_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
