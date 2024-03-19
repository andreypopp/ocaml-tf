(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~active_directory ~identity __resource_id =
  let __resource_type = "azurerm_netapp_account" in
  let __resource =
    azurerm_netapp_account ?id ?tags ?timeouts ~location ~name
      ~resource_group_name ~active_directory ~identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_account __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
