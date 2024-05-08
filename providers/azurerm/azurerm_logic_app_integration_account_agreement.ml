(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type guest_identity = {
  qualifier : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : guest_identity) -> ()

let yojson_of_guest_identity =
  (function
   | { qualifier = v_qualifier; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_qualifier in
         ("qualifier", arg) :: bnds
       in
       `Assoc bnds
    : guest_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_guest_identity

[@@@deriving.end]

type host_identity = { qualifier : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : host_identity) -> ()

let yojson_of_host_identity =
  (function
   | { qualifier = v_qualifier; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_qualifier in
         ("qualifier", arg) :: bnds
       in
       `Assoc bnds
    : host_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_host_identity

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

type azurerm_logic_app_integration_account_agreement = {
  agreement_type : string prop;
  content : string prop;
  guest_partner_name : string prop;
  host_partner_name : string prop;
  id : string prop option; [@option]
  integration_account_name : string prop;
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  resource_group_name : string prop;
  guest_identity : guest_identity list;
      [@default []] [@yojson_drop_default ( = )]
  host_identity : host_identity list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_logic_app_integration_account_agreement) -> ()

let yojson_of_azurerm_logic_app_integration_account_agreement =
  (function
   | {
       agreement_type = v_agreement_type;
       content = v_content;
       guest_partner_name = v_guest_partner_name;
       host_partner_name = v_host_partner_name;
       id = v_id;
       integration_account_name = v_integration_account_name;
       metadata = v_metadata;
       name = v_name;
       resource_group_name = v_resource_group_name;
       guest_identity = v_guest_identity;
       host_identity = v_host_identity;
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
         if [] = v_host_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_host_identity) v_host_identity
           in
           let bnd = "host_identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_guest_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_guest_identity)
               v_guest_identity
           in
           let bnd = "guest_identity", arg in
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
         match v_metadata with
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
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integration_account_name
         in
         ("integration_account_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_host_partner_name
         in
         ("host_partner_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_guest_partner_name
         in
         ("guest_partner_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_agreement_type
         in
         ("agreement_type", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_logic_app_integration_account_agreement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_integration_account_agreement

[@@@deriving.end]

let guest_identity ~qualifier ~value () : guest_identity =
  { qualifier; value }

let host_identity ~qualifier ~value () : host_identity =
  { qualifier; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_agreement ?id ?metadata
    ?timeouts ~agreement_type ~content ~guest_partner_name
    ~host_partner_name ~integration_account_name ~name
    ~resource_group_name ~guest_identity ~host_identity () :
    azurerm_logic_app_integration_account_agreement =
  {
    agreement_type;
    content;
    guest_partner_name;
    host_partner_name;
    id;
    integration_account_name;
    metadata;
    name;
    resource_group_name;
    guest_identity;
    host_identity;
    timeouts;
  }

type t = {
  tf_name : string;
  agreement_type : string prop;
  content : string prop;
  guest_partner_name : string prop;
  host_partner_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?metadata ?timeouts ~agreement_type ~content
    ~guest_partner_name ~host_partner_name ~integration_account_name
    ~name ~resource_group_name ~guest_identity ~host_identity __id =
  let __type = "azurerm_logic_app_integration_account_agreement" in
  let __attrs =
    ({
       tf_name = __id;
       agreement_type = Prop.computed __type __id "agreement_type";
       content = Prop.computed __type __id "content";
       guest_partner_name =
         Prop.computed __type __id "guest_partner_name";
       host_partner_name =
         Prop.computed __type __id "host_partner_name";
       id = Prop.computed __type __id "id";
       integration_account_name =
         Prop.computed __type __id "integration_account_name";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_integration_account_agreement
        (azurerm_logic_app_integration_account_agreement ?id
           ?metadata ?timeouts ~agreement_type ~content
           ~guest_partner_name ~host_partner_name
           ~integration_account_name ~name ~resource_group_name
           ~guest_identity ~host_identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?timeouts ~agreement_type
    ~content ~guest_partner_name ~host_partner_name
    ~integration_account_name ~name ~resource_group_name
    ~guest_identity ~host_identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?timeouts ~agreement_type ~content
      ~guest_partner_name ~host_partner_name
      ~integration_account_name ~name ~resource_group_name
      ~guest_identity ~host_identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
