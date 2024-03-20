(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type active_directory = {
  dns_servers : string prop list;  (** dns_servers *)
  domain : string prop;  (** domain *)
  organizational_unit : string prop option; [@option]
      (** organizational_unit *)
  password : string prop;  (** password *)
  smb_server_name : string prop;  (** smb_server_name *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** active_directory *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_netapp_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  active_directory : active_directory list;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_account *)

let active_directory ?organizational_unit ~dns_servers ~domain
    ~password ~smb_server_name ~username () : active_directory =
  {
    dns_servers;
    domain;
    organizational_unit;
    password;
    smb_server_name;
    username;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_netapp_account ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~active_directory ~identity () :
    azurerm_netapp_account =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    active_directory;
    identity;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~active_directory ~identity __id =
  let __type = "azurerm_netapp_account" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
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
      yojson_of_azurerm_netapp_account
        (azurerm_netapp_account ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~active_directory ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~active_directory ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~active_directory ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
