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

type azurerm_virtual_wan = {
  allow_branch_to_branch_traffic : bool prop option; [@option]
      (** allow_branch_to_branch_traffic *)
  disable_vpn_encryption : bool prop option; [@option]
      (** disable_vpn_encryption *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  office365_local_breakout_category : string prop option; [@option]
      (** office365_local_breakout_category *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_wan *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_wan ?allow_branch_to_branch_traffic
    ?disable_vpn_encryption ?id ?office365_local_breakout_category
    ?tags ?type_ ?timeouts ~location ~name ~resource_group_name () :
    azurerm_virtual_wan =
  {
    allow_branch_to_branch_traffic;
    disable_vpn_encryption;
    id;
    location;
    name;
    office365_local_breakout_category;
    resource_group_name;
    tags;
    type_;
    timeouts;
  }

type t = {
  allow_branch_to_branch_traffic : bool prop;
  disable_vpn_encryption : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  office365_local_breakout_category : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

let make ?allow_branch_to_branch_traffic ?disable_vpn_encryption ?id
    ?office365_local_breakout_category ?tags ?type_ ?timeouts
    ~location ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_wan" in
  let __attrs =
    ({
       allow_branch_to_branch_traffic =
         Prop.computed __type __id "allow_branch_to_branch_traffic";
       disable_vpn_encryption =
         Prop.computed __type __id "disable_vpn_encryption";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       office365_local_breakout_category =
         Prop.computed __type __id
           "office365_local_breakout_category";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_wan
        (azurerm_virtual_wan ?allow_branch_to_branch_traffic
           ?disable_vpn_encryption ?id
           ?office365_local_breakout_category ?tags ?type_ ?timeouts
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_branch_to_branch_traffic
    ?disable_vpn_encryption ?id ?office365_local_breakout_category
    ?tags ?type_ ?timeouts ~location ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?allow_branch_to_branch_traffic ?disable_vpn_encryption ?id
      ?office365_local_breakout_category ?tags ?type_ ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
