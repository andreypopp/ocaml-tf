(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type module_link__hash = {
  algorithm : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : module_link__hash) -> ()

let yojson_of_module_link__hash =
  (function
   | { algorithm = v_algorithm; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : module_link__hash -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_module_link__hash

[@@@deriving.end]

type module_link = {
  uri : string prop;
  hash : module_link__hash list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : module_link) -> ()

let yojson_of_module_link =
  (function
   | { uri = v_uri; hash = v_hash } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_hash then bnds
         else
           let arg =
             (yojson_of_list yojson_of_module_link__hash) v_hash
           in
           let bnd = "hash", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : module_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_module_link

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

type azurerm_automation_powershell72_module = {
  automation_account_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  module_link : module_link list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_powershell72_module) -> ()

let yojson_of_azurerm_automation_powershell72_module =
  (function
   | {
       automation_account_id = v_automation_account_id;
       id = v_id;
       name = v_name;
       tags = v_tags;
       module_link = v_module_link;
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
         if Stdlib.( = ) [] v_module_link then bnds
         else
           let arg =
             (yojson_of_list yojson_of_module_link) v_module_link
           in
           let bnd = "module_link", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_id
         in
         ("automation_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_powershell72_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_powershell72_module

[@@@deriving.end]

let module_link__hash ~algorithm ~value () : module_link__hash =
  { algorithm; value }

let module_link ?(hash = []) ~uri () : module_link = { uri; hash }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_powershell72_module ?id ?tags ?timeouts
    ~automation_account_id ~name ~module_link () :
    azurerm_automation_powershell72_module =
  { automation_account_id; id; name; tags; module_link; timeouts }

type t = {
  tf_name : string;
  automation_account_id : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ?timeouts ~automation_account_id ~name
    ~module_link __id =
  let __type = "azurerm_automation_powershell72_module" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_id =
         Prop.computed __type __id "automation_account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_powershell72_module
        (azurerm_automation_powershell72_module ?id ?tags ?timeouts
           ~automation_account_id ~name ~module_link ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~automation_account_id
    ~name ~module_link __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~automation_account_id ~name
      ~module_link __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
