(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_disk = {
  blob_uri : string prop option; [@option]
  caching : string prop option; [@option]
  lun : float prop option; [@option]
  managed_disk_id : string prop option; [@option]
  size_gb : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_disk) -> ()

let yojson_of_data_disk =
  (function
   | {
       blob_uri = v_blob_uri;
       caching = v_caching;
       lun = v_lun;
       managed_disk_id = v_managed_disk_id;
       size_gb = v_size_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_disk_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_disk_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lun with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lun", arg in
             bnd :: bnds
       in
       let bnds =
         match v_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "caching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blob_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blob_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_disk

[@@@deriving.end]

type os_disk = {
  blob_uri : string prop option; [@option]
  caching : string prop option; [@option]
  disk_encryption_set_id : string prop option; [@option]
  managed_disk_id : string prop option; [@option]
  os_state : string prop option; [@option]
  os_type : string prop option; [@option]
  size_gb : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_disk) -> ()

let yojson_of_os_disk =
  (function
   | {
       blob_uri = v_blob_uri;
       caching = v_caching;
       disk_encryption_set_id = v_disk_encryption_set_id;
       managed_disk_id = v_managed_disk_id;
       os_state = v_os_state;
       os_type = v_os_type;
       size_gb = v_size_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_disk_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_disk_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "caching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blob_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blob_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_disk

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

type azurerm_image = {
  hyper_v_generation : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_virtual_machine_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  zone_resilient : bool prop option; [@option]
  data_disk : data_disk list;
  os_disk : os_disk list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_image) -> ()

let yojson_of_azurerm_image =
  (function
   | {
       hyper_v_generation = v_hyper_v_generation;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       source_virtual_machine_id = v_source_virtual_machine_id;
       tags = v_tags;
       zone_resilient = v_zone_resilient;
       data_disk = v_data_disk;
       os_disk = v_os_disk;
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
         let arg = yojson_of_list yojson_of_os_disk v_os_disk in
         ("os_disk", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_data_disk v_data_disk in
         ("data_disk", arg) :: bnds
       in
       let bnds =
         match v_zone_resilient with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_resilient", arg in
             bnd :: bnds
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
         match v_source_virtual_machine_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_virtual_machine_id", arg in
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
       let bnds =
         match v_hyper_v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hyper_v_generation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_image

[@@@deriving.end]

let data_disk ?blob_uri ?caching ?lun ?managed_disk_id ?size_gb () :
    data_disk =
  { blob_uri; caching; lun; managed_disk_id; size_gb }

let os_disk ?blob_uri ?caching ?disk_encryption_set_id
    ?managed_disk_id ?os_state ?os_type ?size_gb () : os_disk =
  {
    blob_uri;
    caching;
    disk_encryption_set_id;
    managed_disk_id;
    os_state;
    os_type;
    size_gb;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_image ?hyper_v_generation ?id ?source_virtual_machine_id
    ?tags ?zone_resilient ?timeouts ~location ~name
    ~resource_group_name ~data_disk ~os_disk () : azurerm_image =
  {
    hyper_v_generation;
    id;
    location;
    name;
    resource_group_name;
    source_virtual_machine_id;
    tags;
    zone_resilient;
    data_disk;
    os_disk;
    timeouts;
  }

type t = {
  hyper_v_generation : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_virtual_machine_id : string prop;
  tags : (string * string) list prop;
  zone_resilient : bool prop;
}

let make ?hyper_v_generation ?id ?source_virtual_machine_id ?tags
    ?zone_resilient ?timeouts ~location ~name ~resource_group_name
    ~data_disk ~os_disk __id =
  let __type = "azurerm_image" in
  let __attrs =
    ({
       hyper_v_generation =
         Prop.computed __type __id "hyper_v_generation";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_virtual_machine_id =
         Prop.computed __type __id "source_virtual_machine_id";
       tags = Prop.computed __type __id "tags";
       zone_resilient = Prop.computed __type __id "zone_resilient";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_image
        (azurerm_image ?hyper_v_generation ?id
           ?source_virtual_machine_id ?tags ?zone_resilient ?timeouts
           ~location ~name ~resource_group_name ~data_disk ~os_disk
           ());
    attrs = __attrs;
  }

let register ?tf_module ?hyper_v_generation ?id
    ?source_virtual_machine_id ?tags ?zone_resilient ?timeouts
    ~location ~name ~resource_group_name ~data_disk ~os_disk __id =
  let (r : _ Tf_core.resource) =
    make ?hyper_v_generation ?id ?source_virtual_machine_id ?tags
      ?zone_resilient ?timeouts ~location ~name ~resource_group_name
      ~data_disk ~os_disk __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
