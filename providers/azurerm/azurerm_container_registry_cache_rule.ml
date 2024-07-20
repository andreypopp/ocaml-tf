(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_container_registry_cache_rule = {
  container_registry_id : string prop;
  credential_set_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  source_repo : string prop;
  target_repo : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_registry_cache_rule) -> ()

let yojson_of_azurerm_container_registry_cache_rule =
  (function
   | {
       container_registry_id = v_container_registry_id;
       credential_set_id = v_credential_set_id;
       id = v_id;
       name = v_name;
       source_repo = v_source_repo;
       target_repo = v_target_repo;
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
         let arg = yojson_of_prop yojson_of_string v_target_repo in
         ("target_repo", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_repo in
         ("source_repo", arg) :: bnds
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
         match v_credential_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credential_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_registry_id
         in
         ("container_registry_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_registry_cache_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_registry_cache_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry_cache_rule ?credential_set_id ?id
    ?timeouts ~container_registry_id ~name ~source_repo ~target_repo
    () : azurerm_container_registry_cache_rule =
  {
    container_registry_id;
    credential_set_id;
    id;
    name;
    source_repo;
    target_repo;
    timeouts;
  }

type t = {
  tf_name : string;
  container_registry_id : string prop;
  credential_set_id : string prop;
  id : string prop;
  name : string prop;
  source_repo : string prop;
  target_repo : string prop;
}

let make ?credential_set_id ?id ?timeouts ~container_registry_id
    ~name ~source_repo ~target_repo __id =
  let __type = "azurerm_container_registry_cache_rule" in
  let __attrs =
    ({
       tf_name = __id;
       container_registry_id =
         Prop.computed __type __id "container_registry_id";
       credential_set_id =
         Prop.computed __type __id "credential_set_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       source_repo = Prop.computed __type __id "source_repo";
       target_repo = Prop.computed __type __id "target_repo";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_cache_rule
        (azurerm_container_registry_cache_rule ?credential_set_id ?id
           ?timeouts ~container_registry_id ~name ~source_repo
           ~target_repo ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_set_id ?id ?timeouts
    ~container_registry_id ~name ~source_repo ~target_repo __id =
  let (r : _ Tf_core.resource) =
    make ?credential_set_id ?id ?timeouts ~container_registry_id
      ~name ~source_repo ~target_repo __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
