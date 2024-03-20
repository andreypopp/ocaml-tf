(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_disk_pool_managed_disk_attachment = {
  disk_pool_id : string prop;  (** disk_pool_id *)
  id : string prop option; [@option]  (** id *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_managed_disk_attachment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_disk_pool_managed_disk_attachment ?id ?timeouts
    ~disk_pool_id ~managed_disk_id () :
    azurerm_disk_pool_managed_disk_attachment =
  { disk_pool_id; id; managed_disk_id; timeouts }

type t = {
  disk_pool_id : string prop;
  id : string prop;
  managed_disk_id : string prop;
}

let make ?id ?timeouts ~disk_pool_id ~managed_disk_id __id =
  let __type = "azurerm_disk_pool_managed_disk_attachment" in
  let __attrs =
    ({
       disk_pool_id = Prop.computed __type __id "disk_pool_id";
       id = Prop.computed __type __id "id";
       managed_disk_id = Prop.computed __type __id "managed_disk_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_disk_pool_managed_disk_attachment
        (azurerm_disk_pool_managed_disk_attachment ?id ?timeouts
           ~disk_pool_id ~managed_disk_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~disk_pool_id ~managed_disk_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~disk_pool_id ~managed_disk_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
