(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type storage_account = {
  id : string prop;  (** id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** storage_account *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_video_analyzer = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_video_analyzer *)

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let storage_account ~id ~user_assigned_identity_id () :
    storage_account =
  { id; user_assigned_identity_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_video_analyzer ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity ~storage_account () :
    azurerm_video_analyzer =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    identity;
    storage_account;
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
    ~identity ~storage_account __id =
  let __type = "azurerm_video_analyzer" in
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
      yojson_of_azurerm_video_analyzer
        (azurerm_video_analyzer ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~identity ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~identity ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
