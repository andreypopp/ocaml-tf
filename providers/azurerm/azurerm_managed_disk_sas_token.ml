(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_managed_disk_sas_token = {
  access_level : string prop;  (** access_level *)
  duration_in_seconds : float prop;  (** duration_in_seconds *)
  id : string prop option; [@option]  (** id *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_disk_sas_token *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_managed_disk_sas_token ?id ?timeouts ~access_level
    ~duration_in_seconds ~managed_disk_id () :
    azurerm_managed_disk_sas_token =
  {
    access_level;
    duration_in_seconds;
    id;
    managed_disk_id;
    timeouts;
  }

type t = {
  access_level : string prop;
  duration_in_seconds : float prop;
  id : string prop;
  managed_disk_id : string prop;
  sas_url : string prop;
}

let make ?id ?timeouts ~access_level ~duration_in_seconds
    ~managed_disk_id __id =
  let __type = "azurerm_managed_disk_sas_token" in
  let __attrs =
    ({
       access_level = Prop.computed __type __id "access_level";
       duration_in_seconds =
         Prop.computed __type __id "duration_in_seconds";
       id = Prop.computed __type __id "id";
       managed_disk_id = Prop.computed __type __id "managed_disk_id";
       sas_url = Prop.computed __type __id "sas_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_managed_disk_sas_token
        (azurerm_managed_disk_sas_token ?id ?timeouts ~access_level
           ~duration_in_seconds ~managed_disk_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_level
    ~duration_in_seconds ~managed_disk_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_level ~duration_in_seconds
      ~managed_disk_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
