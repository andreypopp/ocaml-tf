(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type export_data_options = {
  time_frame : string prop;  (** time_frame *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** export_data_options *)

type export_data_storage_location = {
  container_id : string prop;  (** container_id *)
  root_folder_path : string prop;  (** root_folder_path *)
}
[@@deriving yojson_of]
(** export_data_storage_location *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_billing_account_cost_management_export = {
  active : bool prop option; [@option]  (** active *)
  billing_account_id : string prop;  (** billing_account_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recurrence_period_end_date : string prop;
      (** recurrence_period_end_date *)
  recurrence_period_start_date : string prop;
      (** recurrence_period_start_date *)
  recurrence_type : string prop;  (** recurrence_type *)
  export_data_options : export_data_options list;
  export_data_storage_location : export_data_storage_location list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_billing_account_cost_management_export *)

let export_data_options ~time_frame ~type_ () : export_data_options =
  { time_frame; type_ }

let export_data_storage_location ~container_id ~root_folder_path () :
    export_data_storage_location =
  { container_id; root_folder_path }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_billing_account_cost_management_export ?active ?id
    ?timeouts ~billing_account_id ~name ~recurrence_period_end_date
    ~recurrence_period_start_date ~recurrence_type
    ~export_data_options ~export_data_storage_location () :
    azurerm_billing_account_cost_management_export =
  {
    active;
    billing_account_id;
    id;
    name;
    recurrence_period_end_date;
    recurrence_period_start_date;
    recurrence_type;
    export_data_options;
    export_data_storage_location;
    timeouts;
  }

type t = {
  active : bool prop;
  billing_account_id : string prop;
  id : string prop;
  name : string prop;
  recurrence_period_end_date : string prop;
  recurrence_period_start_date : string prop;
  recurrence_type : string prop;
}

let make ?active ?id ?timeouts ~billing_account_id ~name
    ~recurrence_period_end_date ~recurrence_period_start_date
    ~recurrence_type ~export_data_options
    ~export_data_storage_location __id =
  let __type = "azurerm_billing_account_cost_management_export" in
  let __attrs =
    ({
       active = Prop.computed __type __id "active";
       billing_account_id =
         Prop.computed __type __id "billing_account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recurrence_period_end_date =
         Prop.computed __type __id "recurrence_period_end_date";
       recurrence_period_start_date =
         Prop.computed __type __id "recurrence_period_start_date";
       recurrence_type = Prop.computed __type __id "recurrence_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_billing_account_cost_management_export
        (azurerm_billing_account_cost_management_export ?active ?id
           ?timeouts ~billing_account_id ~name
           ~recurrence_period_end_date ~recurrence_period_start_date
           ~recurrence_type ~export_data_options
           ~export_data_storage_location ());
    attrs = __attrs;
  }

let register ?tf_module ?active ?id ?timeouts ~billing_account_id
    ~name ~recurrence_period_end_date ~recurrence_period_start_date
    ~recurrence_type ~export_data_options
    ~export_data_storage_location __id =
  let (r : _ Tf_core.resource) =
    make ?active ?id ?timeouts ~billing_account_id ~name
      ~recurrence_period_end_date ~recurrence_period_start_date
      ~recurrence_type ~export_data_options
      ~export_data_storage_location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
