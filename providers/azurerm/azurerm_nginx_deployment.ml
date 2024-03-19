(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type frontend_private = {
  allocation_method : string prop;  (** allocation_method *)
  ip_address : string prop;  (** ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** frontend_private *)

type frontend_public = {
  ip_address : string prop list option; [@option]  (** ip_address *)
}
[@@deriving yojson_of]
(** frontend_public *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type logging_storage_account = {
  container_name : string prop option; [@option]
      (** container_name *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** logging_storage_account *)

type network_interface = {
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** network_interface *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_nginx_deployment = {
  automatic_upgrade_channel : string prop option; [@option]
      (** automatic_upgrade_channel *)
  capacity : float prop option; [@option]  (** capacity *)
  diagnose_support_enabled : bool prop option; [@option]
      (** diagnose_support_enabled *)
  email : string prop option; [@option]  (** email *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_resource_group : string prop option; [@option]
      (** managed_resource_group *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  frontend_private : frontend_private list;
  frontend_public : frontend_public list;
  identity : identity list;
  logging_storage_account : logging_storage_account list;
  network_interface : network_interface list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment *)

let frontend_private ~allocation_method ~ip_address ~subnet_id () :
    frontend_private =
  { allocation_method; ip_address; subnet_id }

let frontend_public ?ip_address () : frontend_public = { ip_address }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let logging_storage_account ?container_name ?name () :
    logging_storage_account =
  { container_name; name }

let network_interface ~subnet_id () : network_interface =
  { subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_nginx_deployment ?automatic_upgrade_channel ?capacity
    ?diagnose_support_enabled ?email ?id ?managed_resource_group
    ?tags ?timeouts ~location ~name ~resource_group_name ~sku
    ~frontend_private ~frontend_public ~identity
    ~logging_storage_account ~network_interface () :
    azurerm_nginx_deployment =
  {
    automatic_upgrade_channel;
    capacity;
    diagnose_support_enabled;
    email;
    id;
    location;
    managed_resource_group;
    name;
    resource_group_name;
    sku;
    tags;
    frontend_private;
    frontend_public;
    identity;
    logging_storage_account;
    network_interface;
    timeouts;
  }

type t = {
  automatic_upgrade_channel : string prop;
  capacity : float prop;
  diagnose_support_enabled : bool prop;
  email : string prop;
  id : string prop;
  ip_address : string prop;
  location : string prop;
  managed_resource_group : string prop;
  name : string prop;
  nginx_version : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?automatic_upgrade_channel ?capacity
    ?diagnose_support_enabled ?email ?id ?managed_resource_group
    ?tags ?timeouts ~location ~name ~resource_group_name ~sku
    ~frontend_private ~frontend_public ~identity
    ~logging_storage_account ~network_interface __resource_id =
  let __resource_type = "azurerm_nginx_deployment" in
  let __resource =
    azurerm_nginx_deployment ?automatic_upgrade_channel ?capacity
      ?diagnose_support_enabled ?email ?id ?managed_resource_group
      ?tags ?timeouts ~location ~name ~resource_group_name ~sku
      ~frontend_private ~frontend_public ~identity
      ~logging_storage_account ~network_interface ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nginx_deployment __resource);
  let __resource_attributes =
    ({
       automatic_upgrade_channel =
         Prop.computed __resource_type __resource_id
           "automatic_upgrade_channel";
       capacity =
         Prop.computed __resource_type __resource_id "capacity";
       diagnose_support_enabled =
         Prop.computed __resource_type __resource_id
           "diagnose_support_enabled";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_resource_group =
         Prop.computed __resource_type __resource_id
           "managed_resource_group";
       name = Prop.computed __resource_type __resource_id "name";
       nginx_version =
         Prop.computed __resource_type __resource_id "nginx_version";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
