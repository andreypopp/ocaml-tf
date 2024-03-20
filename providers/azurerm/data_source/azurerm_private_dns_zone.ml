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

type azurerm_private_dns_zone = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_private_dns_zone) -> ()

let yojson_of_azurerm_private_dns_zone =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
    : azurerm_private_dns_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_private_dns_zone

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_private_dns_zone ?id ?resource_group_name ?tags ?timeouts
    ~name () : azurerm_private_dns_zone =
  { id; name; resource_group_name; tags; timeouts }

type t = {
  id : string prop;
  max_number_of_record_sets : float prop;
  max_number_of_virtual_network_links : float prop;
  max_number_of_virtual_network_links_with_registration : float prop;
  name : string prop;
  number_of_record_sets : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?resource_group_name ?tags ?timeouts ~name __id =
  let __type = "azurerm_private_dns_zone" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       max_number_of_record_sets =
         Prop.computed __type __id "max_number_of_record_sets";
       max_number_of_virtual_network_links =
         Prop.computed __type __id
           "max_number_of_virtual_network_links";
       max_number_of_virtual_network_links_with_registration =
         Prop.computed __type __id
           "max_number_of_virtual_network_links_with_registration";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_private_dns_zone
        (azurerm_private_dns_zone ?id ?resource_group_name ?tags
           ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_group_name ?tags ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_group_name ?tags ?timeouts ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
