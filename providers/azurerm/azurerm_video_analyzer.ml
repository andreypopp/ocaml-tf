(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type storage_account = {
  id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account) -> ()

let yojson_of_storage_account =
  (function
   | {
       id = v_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_video_analyzer = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_video_analyzer) -> ()

let yojson_of_azurerm_video_analyzer =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       identity = v_identity;
       storage_account = v_storage_account;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_account v_storage_account
         in
         ("storage_account", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_video_analyzer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_video_analyzer

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
