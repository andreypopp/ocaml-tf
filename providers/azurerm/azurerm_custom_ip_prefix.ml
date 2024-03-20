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

type azurerm_custom_ip_prefix = {
  cidr : string prop;  (** cidr *)
  commissioning_enabled : bool prop option; [@option]
      (** commissioning_enabled *)
  id : string prop option; [@option]  (** id *)
  internet_advertising_disabled : bool prop option; [@option]
      (** internet_advertising_disabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  parent_custom_ip_prefix_id : string prop option; [@option]
      (** parent_custom_ip_prefix_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  roa_validity_end_date : string prop option; [@option]
      (** roa_validity_end_date *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  wan_validation_signed_message : string prop option; [@option]
      (** wan_validation_signed_message *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_custom_ip_prefix *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_custom_ip_prefix ?commissioning_enabled ?id
    ?internet_advertising_disabled ?parent_custom_ip_prefix_id
    ?roa_validity_end_date ?tags ?wan_validation_signed_message
    ?zones ?timeouts ~cidr ~location ~name ~resource_group_name () :
    azurerm_custom_ip_prefix =
  {
    cidr;
    commissioning_enabled;
    id;
    internet_advertising_disabled;
    location;
    name;
    parent_custom_ip_prefix_id;
    resource_group_name;
    roa_validity_end_date;
    tags;
    wan_validation_signed_message;
    zones;
    timeouts;
  }

type t = {
  cidr : string prop;
  commissioning_enabled : bool prop;
  id : string prop;
  internet_advertising_disabled : bool prop;
  location : string prop;
  name : string prop;
  parent_custom_ip_prefix_id : string prop;
  resource_group_name : string prop;
  roa_validity_end_date : string prop;
  tags : (string * string) list prop;
  wan_validation_signed_message : string prop;
  zones : string list prop;
}

let make ?commissioning_enabled ?id ?internet_advertising_disabled
    ?parent_custom_ip_prefix_id ?roa_validity_end_date ?tags
    ?wan_validation_signed_message ?zones ?timeouts ~cidr ~location
    ~name ~resource_group_name __id =
  let __type = "azurerm_custom_ip_prefix" in
  let __attrs =
    ({
       cidr = Prop.computed __type __id "cidr";
       commissioning_enabled =
         Prop.computed __type __id "commissioning_enabled";
       id = Prop.computed __type __id "id";
       internet_advertising_disabled =
         Prop.computed __type __id "internet_advertising_disabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent_custom_ip_prefix_id =
         Prop.computed __type __id "parent_custom_ip_prefix_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       roa_validity_end_date =
         Prop.computed __type __id "roa_validity_end_date";
       tags = Prop.computed __type __id "tags";
       wan_validation_signed_message =
         Prop.computed __type __id "wan_validation_signed_message";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_custom_ip_prefix
        (azurerm_custom_ip_prefix ?commissioning_enabled ?id
           ?internet_advertising_disabled ?parent_custom_ip_prefix_id
           ?roa_validity_end_date ?tags
           ?wan_validation_signed_message ?zones ?timeouts ~cidr
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?commissioning_enabled ?id
    ?internet_advertising_disabled ?parent_custom_ip_prefix_id
    ?roa_validity_end_date ?tags ?wan_validation_signed_message
    ?zones ?timeouts ~cidr ~location ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?commissioning_enabled ?id ?internet_advertising_disabled
      ?parent_custom_ip_prefix_id ?roa_validity_end_date ?tags
      ?wan_validation_signed_message ?zones ?timeouts ~cidr ~location
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
