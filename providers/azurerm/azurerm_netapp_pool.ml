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

type azurerm_netapp_pool = {
  account_name : string prop;  (** account_name *)
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  qos_type : string prop option; [@option]  (** qos_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_level : string prop;  (** service_level *)
  size_in_tb : float prop;  (** size_in_tb *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_pool *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_netapp_pool ?encryption_type ?id ?qos_type ?tags
    ?timeouts ~account_name ~location ~name ~resource_group_name
    ~service_level ~size_in_tb () : azurerm_netapp_pool =
  {
    account_name;
    encryption_type;
    id;
    location;
    name;
    qos_type;
    resource_group_name;
    service_level;
    size_in_tb;
    tags;
    timeouts;
  }

type t = {
  account_name : string prop;
  encryption_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  qos_type : string prop;
  resource_group_name : string prop;
  service_level : string prop;
  size_in_tb : float prop;
  tags : (string * string) list prop;
}

let make ?encryption_type ?id ?qos_type ?tags ?timeouts ~account_name
    ~location ~name ~resource_group_name ~service_level ~size_in_tb
    __id =
  let __type = "azurerm_netapp_pool" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       encryption_type = Prop.computed __type __id "encryption_type";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       qos_type = Prop.computed __type __id "qos_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_level = Prop.computed __type __id "service_level";
       size_in_tb = Prop.computed __type __id "size_in_tb";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_pool
        (azurerm_netapp_pool ?encryption_type ?id ?qos_type ?tags
           ?timeouts ~account_name ~location ~name
           ~resource_group_name ~service_level ~size_in_tb ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_type ?id ?qos_type ?tags
    ?timeouts ~account_name ~location ~name ~resource_group_name
    ~service_level ~size_in_tb __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_type ?id ?qos_type ?tags ?timeouts ~account_name
      ~location ~name ~resource_group_name ~service_level ~size_in_tb
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
