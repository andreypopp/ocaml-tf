(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type links = {
  bandwidth_mhz : float prop;
  center_frequency_mhz : float prop;
  direction : string prop;
  name : string prop;
  polarization : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : links) -> ()

let yojson_of_links =
  (function
   | {
       bandwidth_mhz = v_bandwidth_mhz;
       center_frequency_mhz = v_center_frequency_mhz;
       direction = v_direction;
       name = v_name;
       polarization = v_polarization;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_polarization in
         ("polarization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_center_frequency_mhz
         in
         ("center_frequency_mhz", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bandwidth_mhz in
         ("bandwidth_mhz", arg) :: bnds
       in
       `Assoc bnds
    : links -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_links

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

type azurerm_orbital_spacecraft = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  norad_id : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  title_line : string prop;
  two_line_elements : string prop list;
  links : links list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_orbital_spacecraft) -> ()

let yojson_of_azurerm_orbital_spacecraft =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       norad_id = v_norad_id;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       title_line = v_title_line;
       two_line_elements = v_two_line_elements;
       links = v_links;
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
         let arg = yojson_of_list yojson_of_links v_links in
         ("links", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_two_line_elements
         in
         ("two_line_elements", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title_line in
         ("title_line", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_norad_id in
         ("norad_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_orbital_spacecraft -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_orbital_spacecraft

[@@@deriving.end]

let links ~bandwidth_mhz ~center_frequency_mhz ~direction ~name
    ~polarization () : links =
  {
    bandwidth_mhz;
    center_frequency_mhz;
    direction;
    name;
    polarization;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_orbital_spacecraft ?id ?tags ?timeouts ~location ~name
    ~norad_id ~resource_group_name ~title_line ~two_line_elements
    ~links () : azurerm_orbital_spacecraft =
  {
    id;
    location;
    name;
    norad_id;
    resource_group_name;
    tags;
    title_line;
    two_line_elements;
    links;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  norad_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  title_line : string prop;
  two_line_elements : string list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~norad_id
    ~resource_group_name ~title_line ~two_line_elements ~links __id =
  let __type = "azurerm_orbital_spacecraft" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       norad_id = Prop.computed __type __id "norad_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       title_line = Prop.computed __type __id "title_line";
       two_line_elements =
         Prop.computed __type __id "two_line_elements";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_orbital_spacecraft
        (azurerm_orbital_spacecraft ?id ?tags ?timeouts ~location
           ~name ~norad_id ~resource_group_name ~title_line
           ~two_line_elements ~links ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name ~norad_id
    ~resource_group_name ~title_line ~two_line_elements ~links __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~norad_id
      ~resource_group_name ~title_line ~two_line_elements ~links __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
