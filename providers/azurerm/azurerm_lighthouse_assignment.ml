(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_lighthouse_assignment = {
  id : string prop option; [@option]  (** id *)
  lighthouse_definition_id : string prop;
      (** lighthouse_definition_id *)
  name : string prop option; [@option]  (** name *)
  scope : string prop;  (** scope *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lighthouse_assignment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_lighthouse_assignment ?id ?name ?timeouts
    ~lighthouse_definition_id ~scope () :
    azurerm_lighthouse_assignment =
  { id; lighthouse_definition_id; name; scope; timeouts }

type t = {
  id : string prop;
  lighthouse_definition_id : string prop;
  name : string prop;
  scope : string prop;
}

let make ?id ?name ?timeouts ~lighthouse_definition_id ~scope __id =
  let __type = "azurerm_lighthouse_assignment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       lighthouse_definition_id =
         Prop.computed __type __id "lighthouse_definition_id";
       name = Prop.computed __type __id "name";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lighthouse_assignment
        (azurerm_lighthouse_assignment ?id ?name ?timeouts
           ~lighthouse_definition_id ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~lighthouse_definition_id
    ~scope __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~lighthouse_definition_id ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
