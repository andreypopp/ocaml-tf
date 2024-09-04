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

type azurerm_aadb2c_directory = {
  country_code : string prop option; [@option]
  data_residency_location : string prop;
  display_name : string prop option; [@option]
  domain_name : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_aadb2c_directory) -> ()

let yojson_of_azurerm_aadb2c_directory =
  (function
   | {
       country_code = v_country_code;
       data_residency_location = v_data_residency_location;
       display_name = v_display_name;
       domain_name = v_domain_name;
       id = v_id;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
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
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_residency_location
         in
         ("data_residency_location", arg) :: bnds
       in
       let bnds =
         match v_country_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_aadb2c_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_aadb2c_directory

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_aadb2c_directory ?country_code ?display_name ?id ?tags
    ?timeouts ~data_residency_location ~domain_name
    ~resource_group_name ~sku_name () : azurerm_aadb2c_directory =
  {
    country_code;
    data_residency_location;
    display_name;
    domain_name;
    id;
    resource_group_name;
    sku_name;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  billing_type : string prop;
  country_code : string prop;
  data_residency_location : string prop;
  display_name : string prop;
  domain_name : string prop;
  effective_start_date : string prop;
  id : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
  tenant_id : string prop;
}

let make ?country_code ?display_name ?id ?tags ?timeouts
    ~data_residency_location ~domain_name ~resource_group_name
    ~sku_name __id =
  let __type = "azurerm_aadb2c_directory" in
  let __attrs =
    ({
       tf_name = __id;
       billing_type = Prop.computed __type __id "billing_type";
       country_code = Prop.computed __type __id "country_code";
       data_residency_location =
         Prop.computed __type __id "data_residency_location";
       display_name = Prop.computed __type __id "display_name";
       domain_name = Prop.computed __type __id "domain_name";
       effective_start_date =
         Prop.computed __type __id "effective_start_date";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_aadb2c_directory
        (azurerm_aadb2c_directory ?country_code ?display_name ?id
           ?tags ?timeouts ~data_residency_location ~domain_name
           ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?country_code ?display_name ?id ?tags
    ?timeouts ~data_residency_location ~domain_name
    ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?country_code ?display_name ?id ?tags ?timeouts
      ~data_residency_location ~domain_name ~resource_group_name
      ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
