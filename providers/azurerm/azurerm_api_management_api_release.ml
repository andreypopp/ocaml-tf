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

type azurerm_api_management_api_release = {
  api_id : string prop;  (** api_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_release *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_release ?id ?notes ?timeouts ~api_id
    ~name () : azurerm_api_management_api_release =
  { api_id; id; name; notes; timeouts }

type t = {
  api_id : string prop;
  id : string prop;
  name : string prop;
  notes : string prop;
}

let make ?id ?notes ?timeouts ~api_id ~name __id =
  let __type = "azurerm_api_management_api_release" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notes = Prop.computed __type __id "notes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_release
        (azurerm_api_management_api_release ?id ?notes ?timeouts
           ~api_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?notes ?timeouts ~api_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?notes ?timeouts ~api_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
