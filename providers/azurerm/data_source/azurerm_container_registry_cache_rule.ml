(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_container_registry_cache_rule = {
  container_registry_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_registry_cache_rule) -> ()

let yojson_of_azurerm_container_registry_cache_rule =
  (function
   | {
       container_registry_id = v_container_registry_id;
       id = v_id;
       name = v_name;
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

let timeouts ?read () : timeouts = { read }

let azurerm_container_registry_cache_rule ?id ?timeouts
    ~container_registry_id ~name () :
    azurerm_container_registry_cache_rule =
  { container_registry_id; id; name; timeouts }

type t = {
  tf_name : string;
  container_registry_id : string prop;
  credential_set_id : string prop;
  id : string prop;
  name : string prop;
  source_repo : string prop;
  target_repo : string prop;
}

let make ?id ?timeouts ~container_registry_id ~name __id =
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
        (azurerm_container_registry_cache_rule ?id ?timeouts
           ~container_registry_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~container_registry_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~container_registry_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
