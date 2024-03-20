(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter__dimension = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** filter__dimension *)

type filter__not__dimension = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** filter__not__dimension *)

type filter__not__tag = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** filter__not__tag *)

type filter__not = {
  dimension : filter__not__dimension list;
  tag : filter__not__tag list;
}
[@@deriving yojson_of]
(** filter__not *)

type filter__tag = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** filter__tag *)

type filter = {
  dimension : filter__dimension list;
  not : filter__not list;
  tag : filter__tag list;
}
[@@deriving yojson_of]
(** filter *)

type notification = {
  contact_emails : string prop list;  (** contact_emails *)
  enabled : bool prop option; [@option]  (** enabled *)
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
  threshold_type : string prop option; [@option]
      (** threshold_type *)
}
[@@deriving yojson_of]
(** notification *)

type time_period = {
  end_date : string prop option; [@option]  (** end_date *)
  start_date : string prop;  (** start_date *)
}
[@@deriving yojson_of]
(** time_period *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_consumption_budget_management_group = {
  amount : float prop;  (** amount *)
  etag : string prop option; [@option]  (** etag *)
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop;  (** management_group_id *)
  name : string prop;  (** name *)
  time_grain : string prop option; [@option]  (** time_grain *)
  filter : filter list;
  notification : notification list;
  time_period : time_period list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_consumption_budget_management_group *)

let filter__dimension ?operator ~name ~values () : filter__dimension
    =
  { name; operator; values }

let filter__not__dimension ?operator ~name ~values () :
    filter__not__dimension =
  { name; operator; values }

let filter__not__tag ?operator ~name ~values () : filter__not__tag =
  { name; operator; values }

let filter__not ~dimension ~tag () : filter__not = { dimension; tag }

let filter__tag ?operator ~name ~values () : filter__tag =
  { name; operator; values }

let filter ~dimension ~not ~tag () : filter = { dimension; not; tag }

let notification ?enabled ?threshold_type ~contact_emails ~operator
    ~threshold () : notification =
  { contact_emails; enabled; operator; threshold; threshold_type }

let time_period ?end_date ~start_date () : time_period =
  { end_date; start_date }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_consumption_budget_management_group ?etag ?id ?time_grain
    ?timeouts ~amount ~management_group_id ~name ~filter
    ~notification ~time_period () :
    azurerm_consumption_budget_management_group =
  {
    amount;
    etag;
    id;
    management_group_id;
    name;
    time_grain;
    filter;
    notification;
    time_period;
    timeouts;
  }

type t = {
  amount : float prop;
  etag : string prop;
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  time_grain : string prop;
}

let make ?etag ?id ?time_grain ?timeouts ~amount ~management_group_id
    ~name ~filter ~notification ~time_period __id =
  let __type = "azurerm_consumption_budget_management_group" in
  let __attrs =
    ({
       amount = Prop.computed __type __id "amount";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       name = Prop.computed __type __id "name";
       time_grain = Prop.computed __type __id "time_grain";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_consumption_budget_management_group
        (azurerm_consumption_budget_management_group ?etag ?id
           ?time_grain ?timeouts ~amount ~management_group_id ~name
           ~filter ~notification ~time_period ());
    attrs = __attrs;
  }

let register ?tf_module ?etag ?id ?time_grain ?timeouts ~amount
    ~management_group_id ~name ~filter ~notification ~time_period
    __id =
  let (r : _ Tf_core.resource) =
    make ?etag ?id ?time_grain ?timeouts ~amount ~management_group_id
      ~name ~filter ~notification ~time_period __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
