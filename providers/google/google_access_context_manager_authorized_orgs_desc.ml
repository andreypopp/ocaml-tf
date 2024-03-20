(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_access_context_manager_authorized_orgs_desc = {
  asset_type : string prop option; [@option]
  authorization_direction : string prop option; [@option]
  authorization_type : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  orgs : string prop list option; [@option]
  parent : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_access_context_manager_authorized_orgs_desc) -> ()

let yojson_of_google_access_context_manager_authorized_orgs_desc =
  (function
   | {
       asset_type = v_asset_type;
       authorization_direction = v_authorization_direction;
       authorization_type = v_authorization_type;
       id = v_id;
       name = v_name;
       orgs = v_orgs;
       parent = v_parent;
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
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         match v_orgs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "orgs", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_direction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_asset_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "asset_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_access_context_manager_authorized_orgs_desc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_access_context_manager_authorized_orgs_desc

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_authorized_orgs_desc ?asset_type
    ?authorization_direction ?authorization_type ?id ?orgs ?timeouts
    ~name ~parent () :
    google_access_context_manager_authorized_orgs_desc =
  {
    asset_type;
    authorization_direction;
    authorization_type;
    id;
    name;
    orgs;
    parent;
    timeouts;
  }

type t = {
  asset_type : string prop;
  authorization_direction : string prop;
  authorization_type : string prop;
  create_time : string prop;
  id : string prop;
  name : string prop;
  orgs : string list prop;
  parent : string prop;
  update_time : string prop;
}

let make ?asset_type ?authorization_direction ?authorization_type ?id
    ?orgs ?timeouts ~name ~parent __id =
  let __type =
    "google_access_context_manager_authorized_orgs_desc"
  in
  let __attrs =
    ({
       asset_type = Prop.computed __type __id "asset_type";
       authorization_direction =
         Prop.computed __type __id "authorization_direction";
       authorization_type =
         Prop.computed __type __id "authorization_type";
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       orgs = Prop.computed __type __id "orgs";
       parent = Prop.computed __type __id "parent";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_authorized_orgs_desc
        (google_access_context_manager_authorized_orgs_desc
           ?asset_type ?authorization_direction ?authorization_type
           ?id ?orgs ?timeouts ~name ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?asset_type ?authorization_direction
    ?authorization_type ?id ?orgs ?timeouts ~name ~parent __id =
  let (r : _ Tf_core.resource) =
    make ?asset_type ?authorization_direction ?authorization_type ?id
      ?orgs ?timeouts ~name ~parent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
