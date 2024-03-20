(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?encryption_key_url ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name ~identity __id =
  let __type = "azurerm_mobile_network_sim_group" in
  let __attrs =
    ({
       encryption_key_url =
         Prop.computed __type __id "encryption_key_url";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_id =
         Prop.computed __type __id "mobile_network_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_sim_group
        (azurerm_mobile_network_sim_group ?encryption_key_url ?id
           ?tags ?timeouts ~location ~mobile_network_id ~name
           ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_key_url ?id ?tags ?timeouts
    ~location ~mobile_network_id ~name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_key_url ?id ?tags ?timeouts ~location
      ~mobile_network_id ~name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
