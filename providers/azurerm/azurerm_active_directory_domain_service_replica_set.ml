(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_active_directory_domain_service_replica_set = {
  domain_service_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  subnet_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_active_directory_domain_service_replica_set) -> ()

let yojson_of_azurerm_active_directory_domain_service_replica_set =
  (function
   | {
       domain_service_id = v_domain_service_id;
       id = v_id;
       location = v_location;
       subnet_id = v_subnet_id;
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_domain_service_id
         in
         ("domain_service_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_active_directory_domain_service_replica_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_active_directory_domain_service_replica_set

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_active_directory_domain_service_replica_set ?id ?timeouts
    ~domain_service_id ~location ~subnet_id () :
    azurerm_active_directory_domain_service_replica_set =
  { domain_service_id; id; location; subnet_id; timeouts }

type t = {
  domain_controller_ip_addresses : string list prop;
  domain_service_id : string prop;
  external_access_ip_address : string prop;
  id : string prop;
  location : string prop;
  service_status : string prop;
  subnet_id : string prop;
}

let make ?id ?timeouts ~domain_service_id ~location ~subnet_id __id =
  let __type =
    "azurerm_active_directory_domain_service_replica_set"
  in
  let __attrs =
    ({
       domain_controller_ip_addresses =
         Prop.computed __type __id "domain_controller_ip_addresses";
       domain_service_id =
         Prop.computed __type __id "domain_service_id";
       external_access_ip_address =
         Prop.computed __type __id "external_access_ip_address";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       service_status = Prop.computed __type __id "service_status";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_active_directory_domain_service_replica_set
        (azurerm_active_directory_domain_service_replica_set ?id
           ?timeouts ~domain_service_id ~location ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_service_id ~location
    ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_service_id ~location ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
