(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monthly_occurrence = {
  day : string prop;  (** day *)
  occurrence : float prop;  (** occurrence *)
}
[@@deriving yojson_of]
(** monthly_occurrence *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_schedule = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  expiry_time : string prop option; [@option]  (** expiry_time *)
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  interval : float prop option; [@option]  (** interval *)
  month_days : float prop list option; [@option]  (** month_days *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  start_time : string prop option; [@option]  (** start_time *)
  timezone : string prop option; [@option]  (** timezone *)
  week_days : string prop list option; [@option]  (** week_days *)
  monthly_occurrence : monthly_occurrence list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_schedule *)

let monthly_occurrence ~day ~occurrence () : monthly_occurrence =
  { day; occurrence }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_schedule ?description ?expiry_time ?id
    ?interval ?month_days ?start_time ?timezone ?week_days ?timeouts
    ~automation_account_name ~frequency ~name ~resource_group_name
    ~monthly_occurrence () : azurerm_automation_schedule =
  {
    automation_account_name;
    description;
    expiry_time;
    frequency;
    id;
    interval;
    month_days;
    name;
    resource_group_name;
    start_time;
    timezone;
    week_days;
    monthly_occurrence;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  description : string prop;
  expiry_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  month_days : float list prop;
  name : string prop;
  resource_group_name : string prop;
  start_time : string prop;
  timezone : string prop;
  week_days : string list prop;
}

let make ?description ?expiry_time ?id ?interval ?month_days
    ?start_time ?timezone ?week_days ?timeouts
    ~automation_account_name ~frequency ~name ~resource_group_name
    ~monthly_occurrence __id =
  let __type = "azurerm_automation_schedule" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       description = Prop.computed __type __id "description";
       expiry_time = Prop.computed __type __id "expiry_time";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       month_days = Prop.computed __type __id "month_days";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       start_time = Prop.computed __type __id "start_time";
       timezone = Prop.computed __type __id "timezone";
       week_days = Prop.computed __type __id "week_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_schedule
        (azurerm_automation_schedule ?description ?expiry_time ?id
           ?interval ?month_days ?start_time ?timezone ?week_days
           ?timeouts ~automation_account_name ~frequency ~name
           ~resource_group_name ~monthly_occurrence ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?expiry_time ?id ?interval
    ?month_days ?start_time ?timezone ?week_days ?timeouts
    ~automation_account_name ~frequency ~name ~resource_group_name
    ~monthly_occurrence __id =
  let (r : _ Tf_core.resource) =
    make ?description ?expiry_time ?id ?interval ?month_days
      ?start_time ?timezone ?week_days ?timeouts
      ~automation_account_name ~frequency ~name ~resource_group_name
      ~monthly_occurrence __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
