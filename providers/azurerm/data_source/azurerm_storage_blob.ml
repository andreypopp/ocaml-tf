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

type azurerm_storage_blob = {
  id : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_blob) -> ()

let yojson_of_azurerm_storage_blob =
  (function
   | {
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       storage_account_name = v_storage_account_name;
       storage_container_name = v_storage_container_name;
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
           yojson_of_prop yojson_of_string v_storage_container_name
         in
         ("storage_container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_blob -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_blob

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_storage_blob ?id ?metadata ?timeouts ~name
    ~storage_account_name ~storage_container_name () :
    azurerm_storage_blob =
  {
    id;
    metadata;
    name;
    storage_account_name;
    storage_container_name;
    timeouts;
  }

type t = {
  tf_name : string;
  access_tier : string prop;
  content_md5 : string prop;
  content_type : string prop;
  encryption_scope : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  type_ : string prop;
  url : string prop;
}

let make ?id ?metadata ?timeouts ~name ~storage_account_name
    ~storage_container_name __id =
  let __type = "azurerm_storage_blob" in
  let __attrs =
    ({
       tf_name = __id;
       access_tier = Prop.computed __type __id "access_tier";
       content_md5 = Prop.computed __type __id "content_md5";
       content_type = Prop.computed __type __id "content_type";
       encryption_scope =
         Prop.computed __type __id "encryption_scope";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_container_name =
         Prop.computed __type __id "storage_container_name";
       type_ = Prop.computed __type __id "type";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_blob
        (azurerm_storage_blob ?id ?metadata ?timeouts ~name
           ~storage_account_name ~storage_container_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?timeouts ~name
    ~storage_account_name ~storage_container_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?timeouts ~name ~storage_account_name
      ~storage_container_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
