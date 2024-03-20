(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_configuration = {
  name : string prop;  (** name *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** ip_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_bastion_host = {
  copy_paste_enabled : bool prop option; [@option]
      (** copy_paste_enabled *)
  file_copy_enabled : bool prop option; [@option]
      (** file_copy_enabled *)
  id : string prop option; [@option]  (** id *)
  ip_connect_enabled : bool prop option; [@option]
      (** ip_connect_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scale_units : float prop option; [@option]  (** scale_units *)
  shareable_link_enabled : bool prop option; [@option]
      (** shareable_link_enabled *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tunneling_enabled : bool prop option; [@option]
      (** tunneling_enabled *)
  ip_configuration : ip_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bastion_host *)

let ip_configuration ~name ~public_ip_address_id ~subnet_id () :
    ip_configuration =
  { name; public_ip_address_id; subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bastion_host ?copy_paste_enabled ?file_copy_enabled ?id
    ?ip_connect_enabled ?scale_units ?shareable_link_enabled ?sku
    ?tags ?tunneling_enabled ?timeouts ~location ~name
    ~resource_group_name ~ip_configuration () : azurerm_bastion_host
    =
  {
    copy_paste_enabled;
    file_copy_enabled;
    id;
    ip_connect_enabled;
    location;
    name;
    resource_group_name;
    scale_units;
    shareable_link_enabled;
    sku;
    tags;
    tunneling_enabled;
    ip_configuration;
    timeouts;
  }

type t = {
  copy_paste_enabled : bool prop;
  dns_name : string prop;
  file_copy_enabled : bool prop;
  id : string prop;
  ip_connect_enabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  shareable_link_enabled : bool prop;
  sku : string prop;
  tags : (string * string) list prop;
  tunneling_enabled : bool prop;
}

let make ?copy_paste_enabled ?file_copy_enabled ?id
    ?ip_connect_enabled ?scale_units ?shareable_link_enabled ?sku
    ?tags ?tunneling_enabled ?timeouts ~location ~name
    ~resource_group_name ~ip_configuration __id =
  let __type = "azurerm_bastion_host" in
  let __attrs =
    ({
       copy_paste_enabled =
         Prop.computed __type __id "copy_paste_enabled";
       dns_name = Prop.computed __type __id "dns_name";
       file_copy_enabled =
         Prop.computed __type __id "file_copy_enabled";
       id = Prop.computed __type __id "id";
       ip_connect_enabled =
         Prop.computed __type __id "ip_connect_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scale_units = Prop.computed __type __id "scale_units";
       shareable_link_enabled =
         Prop.computed __type __id "shareable_link_enabled";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       tunneling_enabled =
         Prop.computed __type __id "tunneling_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bastion_host
        (azurerm_bastion_host ?copy_paste_enabled ?file_copy_enabled
           ?id ?ip_connect_enabled ?scale_units
           ?shareable_link_enabled ?sku ?tags ?tunneling_enabled
           ?timeouts ~location ~name ~resource_group_name
           ~ip_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?copy_paste_enabled ?file_copy_enabled ?id
    ?ip_connect_enabled ?scale_units ?shareable_link_enabled ?sku
    ?tags ?tunneling_enabled ?timeouts ~location ~name
    ~resource_group_name ~ip_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?copy_paste_enabled ?file_copy_enabled ?id
      ?ip_connect_enabled ?scale_units ?shareable_link_enabled ?sku
      ?tags ?tunneling_enabled ?timeouts ~location ~name
      ~resource_group_name ~ip_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
