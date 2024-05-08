(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type soa_record = {
  email : string prop;
  expire_time : float prop option; [@option]
  minimum_ttl : float prop option; [@option]
  refresh_time : float prop option; [@option]
  retry_time : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : soa_record) -> ()

let yojson_of_soa_record =
  (function
   | {
       email = v_email;
       expire_time = v_expire_time;
       minimum_ttl = v_minimum_ttl;
       refresh_time = v_refresh_time;
       retry_time = v_retry_time;
       tags = v_tags;
       ttl = v_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
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
         match v_retry_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_refresh_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "refresh_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expire_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expire_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : soa_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_soa_record

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

type azurerm_private_dns_zone = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  soa_record : soa_record list;
      [@default []] [@yojson_drop_default ( = )]
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
       soa_record = v_soa_record;
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
         if [] = v_soa_record then bnds
         else
           let arg =
             (yojson_of_list yojson_of_soa_record) v_soa_record
           in
           let bnd = "soa_record", arg in
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

let soa_record ?expire_time ?minimum_ttl ?refresh_time ?retry_time
    ?tags ?ttl ~email () : soa_record =
  {
    email;
    expire_time;
    minimum_ttl;
    refresh_time;
    retry_time;
    tags;
    ttl;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_zone ?id ?tags ?(soa_record = []) ?timeouts
    ~name ~resource_group_name () : azurerm_private_dns_zone =
  { id; name; resource_group_name; tags; soa_record; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  max_number_of_record_sets : float prop;
  max_number_of_virtual_network_links : float prop;
  max_number_of_virtual_network_links_with_registration : float prop;
  name : string prop;
  number_of_record_sets : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?(soa_record = []) ?timeouts ~name
    ~resource_group_name __id =
  let __type = "azurerm_private_dns_zone" in
  let __attrs =
    ({
       tf_name = __id;
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
        (azurerm_private_dns_zone ?id ?tags ~soa_record ?timeouts
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(soa_record = []) ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~soa_record ?timeouts ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
