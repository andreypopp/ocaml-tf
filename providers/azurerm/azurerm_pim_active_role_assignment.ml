(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type schedule__expiration = {
  duration_days : float prop option; [@option]
  duration_hours : float prop option; [@option]
  end_date_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__expiration) -> ()

let yojson_of_schedule__expiration =
  (function
   | {
       duration_days = v_duration_days;
       duration_hours = v_duration_hours;
       end_date_time = v_end_date_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_end_date_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_date_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "duration_hours", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "duration_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule__expiration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__expiration

[@@@deriving.end]

type schedule = {
  start_date_time : string prop option; [@option]
  expiration : schedule__expiration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       start_date_time = v_start_date_time;
       expiration = v_expiration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule__expiration v_expiration
         in
         ("expiration", arg) :: bnds
       in
       let bnds =
         match v_start_date_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_date_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type ticket = {
  number : string prop option; [@option]
  system : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ticket) -> ()

let yojson_of_ticket =
  (function
   | { number = v_number; system = v_system } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "system", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "number", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ticket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ticket

[@@@deriving.end]

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

type azurerm_pim_active_role_assignment = {
  id : string prop option; [@option]
  justification : string prop option; [@option]
  principal_id : string prop;
  role_definition_id : string prop;
  scope : string prop;
  schedule : schedule list;
  ticket : ticket list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_pim_active_role_assignment) -> ()

let yojson_of_azurerm_pim_active_role_assignment =
  (function
   | {
       id = v_id;
       justification = v_justification;
       principal_id = v_principal_id;
       role_definition_id = v_role_definition_id;
       scope = v_scope;
       schedule = v_schedule;
       ticket = v_ticket;
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
         let arg = yojson_of_list yojson_of_ticket v_ticket in
         ("ticket", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_schedule v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_role_definition_id
         in
         ("role_definition_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         match v_justification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "justification", arg in
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
    : azurerm_pim_active_role_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_pim_active_role_assignment

[@@@deriving.end]

let schedule__expiration ?duration_days ?duration_hours
    ?end_date_time () : schedule__expiration =
  { duration_days; duration_hours; end_date_time }

let schedule ?start_date_time ~expiration () : schedule =
  { start_date_time; expiration }

let ticket ?number ?system () : ticket = { number; system }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_pim_active_role_assignment ?id ?justification ?timeouts
    ~principal_id ~role_definition_id ~scope ~schedule ~ticket () :
    azurerm_pim_active_role_assignment =
  {
    id;
    justification;
    principal_id;
    role_definition_id;
    scope;
    schedule;
    ticket;
    timeouts;
  }

type t = {
  id : string prop;
  justification : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

let make ?id ?justification ?timeouts ~principal_id
    ~role_definition_id ~scope ~schedule ~ticket __id =
  let __type = "azurerm_pim_active_role_assignment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       justification = Prop.computed __type __id "justification";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_pim_active_role_assignment
        (azurerm_pim_active_role_assignment ?id ?justification
           ?timeouts ~principal_id ~role_definition_id ~scope
           ~schedule ~ticket ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?justification ?timeouts ~principal_id
    ~role_definition_id ~scope ~schedule ~ticket __id =
  let (r : _ Tf_core.resource) =
    make ?id ?justification ?timeouts ~principal_id
      ~role_definition_id ~scope ~schedule ~ticket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
