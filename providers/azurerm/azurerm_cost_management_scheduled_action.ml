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

type azurerm_cost_management_scheduled_action = {
  day_of_month : float prop option; [@option]
  days_of_week : string prop list option; [@option]
  display_name : string prop;
  email_address_sender : string prop;
  email_addresses : string prop list;
  email_subject : string prop;
  end_date : string prop;
  frequency : string prop;
  hour_of_day : float prop option; [@option]
  id : string prop option; [@option]
  message : string prop option; [@option]
  name : string prop;
  start_date : string prop;
  view_id : string prop;
  weeks_of_month : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cost_management_scheduled_action) -> ()

let yojson_of_azurerm_cost_management_scheduled_action =
  (function
   | {
       day_of_month = v_day_of_month;
       days_of_week = v_days_of_week;
       display_name = v_display_name;
       email_address_sender = v_email_address_sender;
       email_addresses = v_email_addresses;
       email_subject = v_email_subject;
       end_date = v_end_date;
       frequency = v_frequency;
       hour_of_day = v_hour_of_day;
       id = v_id;
       message = v_message;
       name = v_name;
       start_date = v_start_date;
       view_id = v_view_id;
       weeks_of_month = v_weeks_of_month;
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
         match v_weeks_of_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "weeks_of_month", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_view_id in
         ("view_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_date in
         ("start_date", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
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
       let bnds =
         match v_hour_of_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hour_of_day", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_date in
         ("end_date", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_subject in
         ("email_subject", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_email_addresses
         in
         ("email_addresses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_email_address_sender
         in
         ("email_address_sender", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_days_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "days_of_week", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day_of_month", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cost_management_scheduled_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cost_management_scheduled_action

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cost_management_scheduled_action ?day_of_month
    ?days_of_week ?hour_of_day ?id ?message ?weeks_of_month ?timeouts
    ~display_name ~email_address_sender ~email_addresses
    ~email_subject ~end_date ~frequency ~name ~start_date ~view_id ()
    : azurerm_cost_management_scheduled_action =
  {
    day_of_month;
    days_of_week;
    display_name;
    email_address_sender;
    email_addresses;
    email_subject;
    end_date;
    frequency;
    hour_of_day;
    id;
    message;
    name;
    start_date;
    view_id;
    weeks_of_month;
    timeouts;
  }

type t = {
  day_of_month : float prop;
  days_of_week : string list prop;
  display_name : string prop;
  email_address_sender : string prop;
  email_addresses : string list prop;
  email_subject : string prop;
  end_date : string prop;
  frequency : string prop;
  hour_of_day : float prop;
  id : string prop;
  message : string prop;
  name : string prop;
  start_date : string prop;
  view_id : string prop;
  weeks_of_month : string list prop;
}

let make ?day_of_month ?days_of_week ?hour_of_day ?id ?message
    ?weeks_of_month ?timeouts ~display_name ~email_address_sender
    ~email_addresses ~email_subject ~end_date ~frequency ~name
    ~start_date ~view_id __id =
  let __type = "azurerm_cost_management_scheduled_action" in
  let __attrs =
    ({
       day_of_month = Prop.computed __type __id "day_of_month";
       days_of_week = Prop.computed __type __id "days_of_week";
       display_name = Prop.computed __type __id "display_name";
       email_address_sender =
         Prop.computed __type __id "email_address_sender";
       email_addresses = Prop.computed __type __id "email_addresses";
       email_subject = Prop.computed __type __id "email_subject";
       end_date = Prop.computed __type __id "end_date";
       frequency = Prop.computed __type __id "frequency";
       hour_of_day = Prop.computed __type __id "hour_of_day";
       id = Prop.computed __type __id "id";
       message = Prop.computed __type __id "message";
       name = Prop.computed __type __id "name";
       start_date = Prop.computed __type __id "start_date";
       view_id = Prop.computed __type __id "view_id";
       weeks_of_month = Prop.computed __type __id "weeks_of_month";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cost_management_scheduled_action
        (azurerm_cost_management_scheduled_action ?day_of_month
           ?days_of_week ?hour_of_day ?id ?message ?weeks_of_month
           ?timeouts ~display_name ~email_address_sender
           ~email_addresses ~email_subject ~end_date ~frequency ~name
           ~start_date ~view_id ());
    attrs = __attrs;
  }

let register ?tf_module ?day_of_month ?days_of_week ?hour_of_day ?id
    ?message ?weeks_of_month ?timeouts ~display_name
    ~email_address_sender ~email_addresses ~email_subject ~end_date
    ~frequency ~name ~start_date ~view_id __id =
  let (r : _ Tf_core.resource) =
    make ?day_of_month ?days_of_week ?hour_of_day ?id ?message
      ?weeks_of_month ?timeouts ~display_name ~email_address_sender
      ~email_addresses ~email_subject ~end_date ~frequency ~name
      ~start_date ~view_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
