(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type diagnostic_storage_account = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** diagnostic_storage_account *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iothub_device_update_instance = {
  device_update_account_id : string prop;
      (** device_update_account_id *)
  diagnostic_enabled : bool prop option; [@option]
      (** diagnostic_enabled *)
  id : string prop option; [@option]  (** id *)
  iothub_id : string prop;  (** iothub_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  diagnostic_storage_account : diagnostic_storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_instance *)

let diagnostic_storage_account ~connection_string ~id () :
    diagnostic_storage_account =
  { connection_string; id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_device_update_instance ?diagnostic_enabled ?id
    ?tags ?timeouts ~device_update_account_id ~iothub_id ~name
    ~diagnostic_storage_account () :
    azurerm_iothub_device_update_instance =
  {
    device_update_account_id;
    diagnostic_enabled;
    id;
    iothub_id;
    name;
    tags;
    diagnostic_storage_account;
    timeouts;
  }

type t = {
  device_update_account_id : string prop;
  diagnostic_enabled : bool prop;
  id : string prop;
  iothub_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?diagnostic_enabled ?id ?tags ?timeouts
    ~device_update_account_id ~iothub_id ~name
    ~diagnostic_storage_account __id =
  let __type = "azurerm_iothub_device_update_instance" in
  let __attrs =
    ({
       device_update_account_id =
         Prop.computed __type __id "device_update_account_id";
       diagnostic_enabled =
         Prop.computed __type __id "diagnostic_enabled";
       id = Prop.computed __type __id "id";
       iothub_id = Prop.computed __type __id "iothub_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_device_update_instance
        (azurerm_iothub_device_update_instance ?diagnostic_enabled
           ?id ?tags ?timeouts ~device_update_account_id ~iothub_id
           ~name ~diagnostic_storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?diagnostic_enabled ?id ?tags ?timeouts
    ~device_update_account_id ~iothub_id ~name
    ~diagnostic_storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?diagnostic_enabled ?id ?tags ?timeouts
      ~device_update_account_id ~iothub_id ~name
      ~diagnostic_storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
