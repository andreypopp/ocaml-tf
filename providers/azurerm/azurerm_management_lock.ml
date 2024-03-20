(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_management_lock = {
  id : string prop option; [@option]  (** id *)
  lock_level : string prop;  (** lock_level *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  scope : string prop;  (** scope *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_lock *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_management_lock ?id ?notes ?timeouts ~lock_level ~name
    ~scope () : azurerm_management_lock =
  { id; lock_level; name; notes; scope; timeouts }

type t = {
  id : string prop;
  lock_level : string prop;
  name : string prop;
  notes : string prop;
  scope : string prop;
}

let make ?id ?notes ?timeouts ~lock_level ~name ~scope __id =
  let __type = "azurerm_management_lock" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       lock_level = Prop.computed __type __id "lock_level";
       name = Prop.computed __type __id "name";
       notes = Prop.computed __type __id "notes";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_management_lock
        (azurerm_management_lock ?id ?notes ?timeouts ~lock_level
           ~name ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?notes ?timeouts ~lock_level ~name ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?notes ?timeouts ~lock_level ~name ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
