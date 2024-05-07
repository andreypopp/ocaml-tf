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

type azurerm_dns_zone = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dns_zone) -> ()

let yojson_of_azurerm_dns_zone =
  (function
   | {
       id = v_id;
       name = v_name;
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
         match v_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_name", arg in
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
       `Assoc bnds
    : azurerm_dns_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dns_zone

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_dns_zone ?id ?resource_group_name ?timeouts ~name () :
    azurerm_dns_zone =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  max_number_of_record_sets : float prop;
  name : string prop;
  name_servers : string list prop;
  number_of_record_sets : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?resource_group_name ?timeouts ~name __id =
  let __type = "azurerm_dns_zone" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       max_number_of_record_sets =
         Prop.computed __type __id "max_number_of_record_sets";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       number_of_record_sets =
         Prop.computed __type __id "number_of_record_sets";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dns_zone
        (azurerm_dns_zone ?id ?resource_group_name ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_group_name ?timeouts ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_group_name ?timeouts ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
