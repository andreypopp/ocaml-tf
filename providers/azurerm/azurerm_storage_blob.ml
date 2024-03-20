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

type azurerm_storage_blob = {
  access_tier : string prop option; [@option]
  cache_control : string prop option; [@option]
  content_md5 : string prop option; [@option]
  content_type : string prop option; [@option]
  id : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  parallelism : float prop option; [@option]
  size : float prop option; [@option]
  source : string prop option; [@option]
  source_content : string prop option; [@option]
  source_uri : string prop option; [@option]
  storage_account_name : string prop;
  storage_container_name : string prop;
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_blob) -> ()

let yojson_of_azurerm_storage_blob =
  (function
   | {
       access_tier = v_access_tier;
       cache_control = v_cache_control;
       content_md5 = v_content_md5;
       content_type = v_content_type;
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       parallelism = v_parallelism;
       size = v_size;
       source = v_source;
       source_content = v_source_content;
       source_uri = v_source_uri;
       storage_account_name = v_storage_account_name;
       storage_container_name = v_storage_container_name;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_source_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_content", arg in
             bnd :: bnds
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
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelism", arg in
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
         match v_cache_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_tier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_blob -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_blob

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_blob ?access_tier ?cache_control ?content_md5
    ?content_type ?id ?metadata ?parallelism ?size ?source
    ?source_content ?source_uri ?timeouts ~name ~storage_account_name
    ~storage_container_name ~type_ () : azurerm_storage_blob =
  {
    access_tier;
    cache_control;
    content_md5;
    content_type;
    id;
    metadata;
    name;
    parallelism;
    size;
    source;
    source_content;
    source_uri;
    storage_account_name;
    storage_container_name;
    type_;
    timeouts;
  }

type t = {
  access_tier : string prop;
  cache_control : string prop;
  content_md5 : string prop;
  content_type : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  parallelism : float prop;
  size : float prop;
  source : string prop;
  source_content : string prop;
  source_uri : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  type_ : string prop;
  url : string prop;
}

let make ?access_tier ?cache_control ?content_md5 ?content_type ?id
    ?metadata ?parallelism ?size ?source ?source_content ?source_uri
    ?timeouts ~name ~storage_account_name ~storage_container_name
    ~type_ __id =
  let __type = "azurerm_storage_blob" in
  let __attrs =
    ({
       access_tier = Prop.computed __type __id "access_tier";
       cache_control = Prop.computed __type __id "cache_control";
       content_md5 = Prop.computed __type __id "content_md5";
       content_type = Prop.computed __type __id "content_type";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       parallelism = Prop.computed __type __id "parallelism";
       size = Prop.computed __type __id "size";
       source = Prop.computed __type __id "source";
       source_content = Prop.computed __type __id "source_content";
       source_uri = Prop.computed __type __id "source_uri";
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
        (azurerm_storage_blob ?access_tier ?cache_control
           ?content_md5 ?content_type ?id ?metadata ?parallelism
           ?size ?source ?source_content ?source_uri ?timeouts ~name
           ~storage_account_name ~storage_container_name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?access_tier ?cache_control ?content_md5
    ?content_type ?id ?metadata ?parallelism ?size ?source
    ?source_content ?source_uri ?timeouts ~name ~storage_account_name
    ~storage_container_name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?access_tier ?cache_control ?content_md5 ?content_type ?id
      ?metadata ?parallelism ?size ?source ?source_content
      ?source_uri ?timeouts ~name ~storage_account_name
      ~storage_container_name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
