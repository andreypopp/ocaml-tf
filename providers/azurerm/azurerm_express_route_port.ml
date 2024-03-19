(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type link1 = {
  admin_enabled : bool prop option; [@option]  (** admin_enabled *)
  macsec_cak_keyvault_secret_id : string prop option; [@option]
      (** macsec_cak_keyvault_secret_id *)
  macsec_cipher : string prop option; [@option]  (** macsec_cipher *)
  macsec_ckn_keyvault_secret_id : string prop option; [@option]
      (** macsec_ckn_keyvault_secret_id *)
  macsec_sci_enabled : bool prop option; [@option]
      (** macsec_sci_enabled *)
}
[@@deriving yojson_of]
(** link1 *)

type link2 = {
  admin_enabled : bool prop option; [@option]  (** admin_enabled *)
  macsec_cak_keyvault_secret_id : string prop option; [@option]
      (** macsec_cak_keyvault_secret_id *)
  macsec_cipher : string prop option; [@option]  (** macsec_cipher *)
  macsec_ckn_keyvault_secret_id : string prop option; [@option]
      (** macsec_ckn_keyvault_secret_id *)
  macsec_sci_enabled : bool prop option; [@option]
      (** macsec_sci_enabled *)
}
[@@deriving yojson_of]
(** link2 *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_express_route_port = {
  bandwidth_in_gbps : float prop;  (** bandwidth_in_gbps *)
  billing_type : string prop option; [@option]  (** billing_type *)
  encapsulation : string prop;  (** encapsulation *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  peering_location : string prop;  (** peering_location *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  link1 : link1 list;
  link2 : link2 list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_port *)

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let link1 ?admin_enabled ?macsec_cak_keyvault_secret_id
    ?macsec_cipher ?macsec_ckn_keyvault_secret_id ?macsec_sci_enabled
    () : link1 =
  {
    admin_enabled;
    macsec_cak_keyvault_secret_id;
    macsec_cipher;
    macsec_ckn_keyvault_secret_id;
    macsec_sci_enabled;
  }

let link2 ?admin_enabled ?macsec_cak_keyvault_secret_id
    ?macsec_cipher ?macsec_ckn_keyvault_secret_id ?macsec_sci_enabled
    () : link2 =
  {
    admin_enabled;
    macsec_cak_keyvault_secret_id;
    macsec_cipher;
    macsec_ckn_keyvault_secret_id;
    macsec_sci_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_port ?billing_type ?id ?tags ?timeouts
    ~bandwidth_in_gbps ~encapsulation ~location ~name
    ~peering_location ~resource_group_name ~identity ~link1 ~link2 ()
    : azurerm_express_route_port =
  {
    bandwidth_in_gbps;
    billing_type;
    encapsulation;
    id;
    location;
    name;
    peering_location;
    resource_group_name;
    tags;
    identity;
    link1;
    link2;
    timeouts;
  }

type t = {
  bandwidth_in_gbps : float prop;
  billing_type : string prop;
  encapsulation : string prop;
  ethertype : string prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  mtu : string prop;
  name : string prop;
  peering_location : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?billing_type ?id ?tags ?timeouts
    ~bandwidth_in_gbps ~encapsulation ~location ~name
    ~peering_location ~resource_group_name ~identity ~link1 ~link2
    __resource_id =
  let __resource_type = "azurerm_express_route_port" in
  let __resource =
    azurerm_express_route_port ?billing_type ?id ?tags ?timeouts
      ~bandwidth_in_gbps ~encapsulation ~location ~name
      ~peering_location ~resource_group_name ~identity ~link1 ~link2
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_express_route_port __resource);
  let __resource_attributes =
    ({
       bandwidth_in_gbps =
         Prop.computed __resource_type __resource_id
           "bandwidth_in_gbps";
       billing_type =
         Prop.computed __resource_type __resource_id "billing_type";
       encapsulation =
         Prop.computed __resource_type __resource_id "encapsulation";
       ethertype =
         Prop.computed __resource_type __resource_id "ethertype";
       guid = Prop.computed __resource_type __resource_id "guid";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mtu = Prop.computed __resource_type __resource_id "mtu";
       name = Prop.computed __resource_type __resource_id "name";
       peering_location =
         Prop.computed __resource_type __resource_id
           "peering_location";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
