(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type daily_schedule = {
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** daily_schedule *)

type hourly_schedule = {
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** hourly_schedule *)

type monthly_schedule = {
  days_of_month : float prop list;  (** days_of_month *)
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** monthly_schedule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type weekly_schedule = {
  days_of_week : string prop list;  (** days_of_week *)
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** weekly_schedule *)

type azurerm_netapp_snapshot_policy = {
  account_name : string prop;  (** account_name *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  daily_schedule : daily_schedule list;
  hourly_schedule : hourly_schedule list;
  monthly_schedule : monthly_schedule list;
  timeouts : timeouts option;
  weekly_schedule : weekly_schedule list;
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy *)

let daily_schedule ~hour ~minute ~snapshots_to_keep () :
    daily_schedule =
  { hour; minute; snapshots_to_keep }

let hourly_schedule ~minute ~snapshots_to_keep () : hourly_schedule =
  { minute; snapshots_to_keep }

let monthly_schedule ~days_of_month ~hour ~minute ~snapshots_to_keep
    () : monthly_schedule =
  { days_of_month; hour; minute; snapshots_to_keep }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let weekly_schedule ~days_of_week ~hour ~minute ~snapshots_to_keep ()
    : weekly_schedule =
  { days_of_week; hour; minute; snapshots_to_keep }

let azurerm_netapp_snapshot_policy ?id ?tags ?timeouts ~account_name
    ~enabled ~location ~name ~resource_group_name ~daily_schedule
    ~hourly_schedule ~monthly_schedule ~weekly_schedule () :
    azurerm_netapp_snapshot_policy =
  {
    account_name;
    enabled;
    id;
    location;
    name;
    resource_group_name;
    tags;
    daily_schedule;
    hourly_schedule;
    monthly_schedule;
    timeouts;
    weekly_schedule;
  }

type t = {
  account_name : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~account_name ~enabled ~location ~name
    ~resource_group_name ~daily_schedule ~hourly_schedule
    ~monthly_schedule ~weekly_schedule __id =
  let __type = "azurerm_netapp_snapshot_policy" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_netapp_snapshot_policy
        (azurerm_netapp_snapshot_policy ?id ?tags ?timeouts
           ~account_name ~enabled ~location ~name
           ~resource_group_name ~daily_schedule ~hourly_schedule
           ~monthly_schedule ~weekly_schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~account_name ~enabled
    ~location ~name ~resource_group_name ~daily_schedule
    ~hourly_schedule ~monthly_schedule ~weekly_schedule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~account_name ~enabled ~location ~name
      ~resource_group_name ~daily_schedule ~hourly_schedule
      ~monthly_schedule ~weekly_schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
