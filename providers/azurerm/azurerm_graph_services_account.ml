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

type azurerm_graph_services_account = {
  application_id : string prop;  (** application_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_graph_services_account *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_graph_services_account ?id ?tags ?timeouts
    ~application_id ~name ~resource_group_name () :
    azurerm_graph_services_account =
  { application_id; id; name; resource_group_name; tags; timeouts }

type t = {
  application_id : string prop;
  billing_plan_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~application_id ~name
    ~resource_group_name __id =
  let __type = "azurerm_graph_services_account" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       billing_plan_id = Prop.computed __type __id "billing_plan_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_graph_services_account
        (azurerm_graph_services_account ?id ?tags ?timeouts
           ~application_id ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~application_id ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~application_id ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
