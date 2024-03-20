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

type azurerm_dedicated_host = {
  auto_replace_on_failure : bool prop option; [@option]
      (** auto_replace_on_failure *)
  dedicated_host_group_id : string prop;
      (** dedicated_host_group_id *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  platform_fault_domain : float prop;  (** platform_fault_domain *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dedicated_host *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dedicated_host ?auto_replace_on_failure ?id ?license_type
    ?tags ?timeouts ~dedicated_host_group_id ~location ~name
    ~platform_fault_domain ~sku_name () : azurerm_dedicated_host =
  {
    auto_replace_on_failure;
    dedicated_host_group_id;
    id;
    license_type;
    location;
    name;
    platform_fault_domain;
    sku_name;
    tags;
    timeouts;
  }

type t = {
  auto_replace_on_failure : bool prop;
  dedicated_host_group_id : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain : float prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?auto_replace_on_failure ?id ?license_type ?tags ?timeouts
    ~dedicated_host_group_id ~location ~name ~platform_fault_domain
    ~sku_name __id =
  let __type = "azurerm_dedicated_host" in
  let __attrs =
    ({
       auto_replace_on_failure =
         Prop.computed __type __id "auto_replace_on_failure";
       dedicated_host_group_id =
         Prop.computed __type __id "dedicated_host_group_id";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       platform_fault_domain =
         Prop.computed __type __id "platform_fault_domain";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dedicated_host
        (azurerm_dedicated_host ?auto_replace_on_failure ?id
           ?license_type ?tags ?timeouts ~dedicated_host_group_id
           ~location ~name ~platform_fault_domain ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_replace_on_failure ?id ?license_type
    ?tags ?timeouts ~dedicated_host_group_id ~location ~name
    ~platform_fault_domain ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_replace_on_failure ?id ?license_type ?tags ?timeouts
      ~dedicated_host_group_id ~location ~name ~platform_fault_domain
      ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
