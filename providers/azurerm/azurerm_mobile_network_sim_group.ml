(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
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

type azurerm_mobile_network_sim_group = {
  encryption_key_url : string prop option; [@option]
      (** encryption_key_url *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_id : string prop;  (** mobile_network_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_group *)

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_sim_group ?encryption_key_url ?id ?tags
    ?timeouts ~location ~mobile_network_id ~name ~identity () :
    azurerm_mobile_network_sim_group =
  {
    encryption_key_url;
    id;
    location;
    mobile_network_id;
    name;
    tags;
    identity;
    timeouts;
  }

type t = {
  encryption_key_url : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?encryption_key_url ?id ?tags ?timeouts
    ~location ~mobile_network_id ~name ~identity __resource_id =
  let __resource_type = "azurerm_mobile_network_sim_group" in
  let __resource =
    azurerm_mobile_network_sim_group ?encryption_key_url ?id ?tags
      ?timeouts ~location ~mobile_network_id ~name ~identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_sim_group __resource);
  let __resource_attributes =
    ({
       encryption_key_url =
         Prop.computed __resource_type __resource_id
           "encryption_key_url";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mobile_network_id =
         Prop.computed __resource_type __resource_id
           "mobile_network_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
