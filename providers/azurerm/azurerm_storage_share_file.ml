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

type azurerm_storage_share_file = {
  content_disposition : string prop option; [@option]
  content_encoding : string prop option; [@option]
  content_md5 : string prop option; [@option]
  content_type : string prop option; [@option]
  id : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  path : string prop option; [@option]
  source : string prop option; [@option]
  storage_share_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_share_file) -> ()

let yojson_of_azurerm_storage_share_file =
  (function
   | {
       content_disposition = v_content_disposition;
       content_encoding = v_content_encoding;
       content_md5 = v_content_md5;
       content_type = v_content_type;
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       path = v_path;
       source = v_source;
       storage_share_id = v_storage_share_id;
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
           yojson_of_prop yojson_of_string v_storage_share_id
         in
         ("storage_share_id", arg) :: bnds
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
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
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_md5 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_md5", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_disposition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_share_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_share_file

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_share_file ?content_disposition ?content_encoding
    ?content_md5 ?content_type ?id ?metadata ?path ?source ?timeouts
    ~name ~storage_share_id () : azurerm_storage_share_file =
  {
    content_disposition;
    content_encoding;
    content_md5;
    content_type;
    id;
    metadata;
    name;
    path;
    source;
    storage_share_id;
    timeouts;
  }

type t = {
  tf_name : string;
  content_disposition : string prop;
  content_encoding : string prop;
  content_length : float prop;
  content_md5 : string prop;
  content_type : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  path : string prop;
  source : string prop;
  storage_share_id : string prop;
}

let make ?content_disposition ?content_encoding ?content_md5
    ?content_type ?id ?metadata ?path ?source ?timeouts ~name
    ~storage_share_id __id =
  let __type = "azurerm_storage_share_file" in
  let __attrs =
    ({
       tf_name = __id;
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_length = Prop.computed __type __id "content_length";
       content_md5 = Prop.computed __type __id "content_md5";
       content_type = Prop.computed __type __id "content_type";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       source = Prop.computed __type __id "source";
       storage_share_id =
         Prop.computed __type __id "storage_share_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_share_file
        (azurerm_storage_share_file ?content_disposition
           ?content_encoding ?content_md5 ?content_type ?id ?metadata
           ?path ?source ?timeouts ~name ~storage_share_id ());
    attrs = __attrs;
  }

let register ?tf_module ?content_disposition ?content_encoding
    ?content_md5 ?content_type ?id ?metadata ?path ?source ?timeouts
    ~name ~storage_share_id __id =
  let (r : _ Tf_core.resource) =
    make ?content_disposition ?content_encoding ?content_md5
      ?content_type ?id ?metadata ?path ?source ?timeouts ~name
      ~storage_share_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
