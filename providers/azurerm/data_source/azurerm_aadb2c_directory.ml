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

type azurerm_aadb2c_directory = {
  domain_name : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_aadb2c_directory) -> ()

let yojson_of_azurerm_aadb2c_directory =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       resource_group_name = v_resource_group_name;
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
       `Assoc bnds
    : azurerm_aadb2c_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_aadb2c_directory

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_aadb2c_directory ?id ?timeouts ~domain_name
    ~resource_group_name () : azurerm_aadb2c_directory =
  { domain_name; id; resource_group_name; timeouts }

type t = {
  tf_name : string;
  billing_type : string prop;
  data_residency_location : string prop;
  domain_name : string prop;
  effective_start_date : string prop;
  id : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

let make ?id ?timeouts ~domain_name ~resource_group_name __id =
  let __type = "azurerm_aadb2c_directory" in
  let __attrs =
    ({
       tf_name = __id;
       billing_type = Prop.computed __type __id "billing_type";
       data_residency_location =
         Prop.computed __type __id "data_residency_location";
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
        (azurerm_aadb2c_directory ?id ?timeouts ~domain_name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
