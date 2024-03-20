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

type azurerm_automation_certificate = {
  automation_account_name : string prop;
      (** automation_account_name *)
  base64 : string prop;  (** base64 *)
  description : string prop option; [@option]  (** description *)
  exportable : bool prop option; [@option]  (** exportable *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_certificate ?description ?exportable ?id
    ?timeouts ~automation_account_name ~base64 ~name
    ~resource_group_name () : azurerm_automation_certificate =
  {
    automation_account_name;
    base64;
    description;
    exportable;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  base64 : string prop;
  description : string prop;
  exportable : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
}

let make ?description ?exportable ?id ?timeouts
    ~automation_account_name ~base64 ~name ~resource_group_name __id
    =
  let __type = "azurerm_automation_certificate" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       base64 = Prop.computed __type __id "base64";
       description = Prop.computed __type __id "description";
       exportable = Prop.computed __type __id "exportable";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_certificate
        (azurerm_automation_certificate ?description ?exportable ?id
           ?timeouts ~automation_account_name ~base64 ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?exportable ?id ?timeouts
    ~automation_account_name ~base64 ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?exportable ?id ?timeouts
      ~automation_account_name ~base64 ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
