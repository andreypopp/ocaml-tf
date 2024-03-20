(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type feature = {
  name : string prop;  (** name *)
  registered : bool prop;  (** registered *)
}
[@@deriving yojson_of]
(** feature *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_resource_provider_registration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  feature : feature list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_provider_registration *)

let feature ~name ~registered () : feature = { name; registered }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_provider_registration ?id ?timeouts ~name
    ~feature () : azurerm_resource_provider_registration =
  { id; name; feature; timeouts }

type t = { id : string prop; name : string prop }

let make ?id ?timeouts ~name ~feature __id =
  let __type = "azurerm_resource_provider_registration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_provider_registration
        (azurerm_resource_provider_registration ?id ?timeouts ~name
           ~feature ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~feature __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~feature __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
