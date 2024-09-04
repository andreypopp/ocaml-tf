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

type azurerm_dns_ptr_record = {
  id : string prop option; [@option]
  name : string prop;
  records : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  ttl : float prop;
  zone_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dns_ptr_record) -> ()

let yojson_of_azurerm_dns_ptr_record =
  (function
   | {
       id = v_id;
       name = v_name;
       records = v_records;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       ttl = v_ttl;
       zone_name = v_zone_name;
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
         let arg = yojson_of_prop yojson_of_string v_zone_name in
         ("zone_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_records then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_records
           in
           let bnd = "records", arg in
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
    : azurerm_dns_ptr_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dns_ptr_record

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dns_ptr_record ?id ?tags ?timeouts ~name ~records
    ~resource_group_name ~ttl ~zone_name () : azurerm_dns_ptr_record
    =
  {
    id;
    name;
    records;
    resource_group_name;
    tags;
    ttl;
    zone_name;
    timeouts;
  }

type t = {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  records : string list prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  ttl : float prop;
  zone_name : string prop;
}

let make ?id ?tags ?timeouts ~name ~records ~resource_group_name ~ttl
    ~zone_name __id =
  let __type = "azurerm_dns_ptr_record" in
  let __attrs =
    ({
       tf_name = __id;
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       records = Prop.computed __type __id "records";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       ttl = Prop.computed __type __id "ttl";
       zone_name = Prop.computed __type __id "zone_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dns_ptr_record
        (azurerm_dns_ptr_record ?id ?tags ?timeouts ~name ~records
           ~resource_group_name ~ttl ~zone_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~name ~records
    ~resource_group_name ~ttl ~zone_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~name ~records ~resource_group_name ~ttl
      ~zone_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
