(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption = {
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** encryption *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type network_rule = {
  action : string prop option; [@option]  (** action *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** network_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_elastic_san_volume_group = {
  elastic_san_id : string prop;  (** elastic_san_id *)
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  protocol_type : string prop option; [@option]  (** protocol_type *)
  encryption : encryption list;
  identity : identity list;
  network_rule : network_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group *)

let encryption ?user_assigned_identity_id ~key_vault_key_id () :
    encryption =
  { key_vault_key_id; user_assigned_identity_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_rule ?action ~subnet_id () : network_rule =
  { action; subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_elastic_san_volume_group ?encryption_type ?id
    ?protocol_type ?timeouts ~elastic_san_id ~name ~encryption
    ~identity ~network_rule () : azurerm_elastic_san_volume_group =
  {
    elastic_san_id;
    encryption_type;
    id;
    name;
    protocol_type;
    encryption;
    identity;
    network_rule;
    timeouts;
  }

type t = {
  elastic_san_id : string prop;
  encryption_type : string prop;
  id : string prop;
  name : string prop;
  protocol_type : string prop;
}

let make ?encryption_type ?id ?protocol_type ?timeouts
    ~elastic_san_id ~name ~encryption ~identity ~network_rule __id =
  let __type = "azurerm_elastic_san_volume_group" in
  let __attrs =
    ({
       elastic_san_id = Prop.computed __type __id "elastic_san_id";
       encryption_type = Prop.computed __type __id "encryption_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       protocol_type = Prop.computed __type __id "protocol_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_elastic_san_volume_group
        (azurerm_elastic_san_volume_group ?encryption_type ?id
           ?protocol_type ?timeouts ~elastic_san_id ~name ~encryption
           ~identity ~network_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_type ?id ?protocol_type ?timeouts
    ~elastic_san_id ~name ~encryption ~identity ~network_rule __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_type ?id ?protocol_type ?timeouts
      ~elastic_san_id ~name ~encryption ~identity ~network_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
