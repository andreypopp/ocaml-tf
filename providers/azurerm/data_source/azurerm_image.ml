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

type data_disk = {
  blob_uri : string prop;
  caching : string prop;
  lun : float prop;
  managed_disk_id : string prop;
  size_gb : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_size_gb in
         ("size_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_disk_id
         in
         ("managed_disk_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching in
         ("caching", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blob_uri in
         ("blob_uri", arg) :: bnds
       in
       `Assoc bnds
    : data_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_disk

[@@@deriving.end]

type os_disk = {
  blob_uri : string prop;
  caching : string prop;
  managed_disk_id : string prop;
  os_state : string prop;
  os_type : string prop;
  size_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_disk) -> ()

let yojson_of_os_disk =
  (function
   | {
       blob_uri = v_blob_uri;
       caching = v_caching;
       managed_disk_id = v_managed_disk_id;
       os_state = v_os_state;
       os_type = v_os_type;
       size_gb = v_size_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_gb in
         ("size_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_type in
         ("os_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_state in
         ("os_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_disk_id
         in
         ("managed_disk_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching in
         ("caching", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blob_uri in
         ("blob_uri", arg) :: bnds
       in
       `Assoc bnds
    : os_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_disk

[@@@deriving.end]

type azurerm_image = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_regex : string prop option; [@option]
  resource_group_name : string prop;
  sort_descending : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_image) -> ()

let yojson_of_azurerm_image =
  (function
   | {
       id = v_id;
       name = v_name;
       name_regex = v_name_regex;
       resource_group_name = v_resource_group_name;
       sort_descending = v_sort_descending;
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
         match v_sort_descending with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sort_descending", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_name_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : azurerm_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_image

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_image ?id ?name ?name_regex ?sort_descending ?timeouts
    ~resource_group_name () : azurerm_image =
  {
    id;
    name;
    name_regex;
    resource_group_name;
    sort_descending;
    timeouts;
  }

type t = {
  tf_name : string;
  data_disk : data_disk list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  name_regex : string prop;
  os_disk : os_disk list prop;
  resource_group_name : string prop;
  sort_descending : bool prop;
  tags : string Tf_core.assoc prop;
  zone_resilient : bool prop;
}

let make ?id ?name ?name_regex ?sort_descending ?timeouts
    ~resource_group_name __id =
  let __type = "azurerm_image" in
  let __attrs =
    ({
       tf_name = __id;
       data_disk = Prop.computed __type __id "data_disk";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       name_regex = Prop.computed __type __id "name_regex";
       os_disk = Prop.computed __type __id "os_disk";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sort_descending = Prop.computed __type __id "sort_descending";
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
        (azurerm_image ?id ?name ?name_regex ?sort_descending
           ?timeouts ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_regex ?sort_descending
    ?timeouts ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_regex ?sort_descending ?timeouts
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
