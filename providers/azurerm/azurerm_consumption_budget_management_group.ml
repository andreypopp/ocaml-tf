(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter__dimension = {
  name : string prop;
  operator : string prop option; [@option]
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__dimension) -> ()

let yojson_of_filter__dimension =
  (function
   | { name = v_name; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__dimension

[@@@deriving.end]

type filter__not__dimension = {
  name : string prop;
  operator : string prop option; [@option]
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__not__dimension) -> ()

let yojson_of_filter__not__dimension =
  (function
   | { name = v_name; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter__not__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not__dimension

[@@@deriving.end]

type filter__not__tag = {
  name : string prop;
  operator : string prop option; [@option]
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__not__tag) -> ()

let yojson_of_filter__not__tag =
  (function
   | { name = v_name; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter__not__tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not__tag

[@@@deriving.end]

type filter__not = {
  dimension : filter__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag : filter__not__tag list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__not) -> ()

let yojson_of_filter__not =
  (function
   | { dimension = v_dimension; tag = v_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__not__tag) v_tag
           in
           let bnd = "tag", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__not__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filter__not -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not

[@@@deriving.end]

type filter__tag = {
  name : string prop;
  operator : string prop option; [@option]
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__tag) -> ()

let yojson_of_filter__tag =
  (function
   | { name = v_name; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter__tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__tag

[@@@deriving.end]

type filter = {
  dimension : filter__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  not : filter__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag : filter__tag list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { dimension = v_dimension; not = v_not; tag = v_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag then bnds
         else
           let arg = (yojson_of_list yojson_of_filter__tag) v_tag in
           let bnd = "tag", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_not then bnds
         else
           let arg = (yojson_of_list yojson_of_filter__not) v_not in
           let bnd = "not", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__dimension) v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type notification = {
  contact_emails : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enabled : bool prop option; [@option]
  operator : string prop;
  threshold : float prop;
  threshold_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification) -> ()

let yojson_of_notification =
  (function
   | {
       contact_emails = v_contact_emails;
       enabled = v_enabled;
       operator = v_operator;
       threshold = v_threshold;
       threshold_type = v_threshold_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_threshold_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "threshold_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_contact_emails then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_contact_emails
           in
           let bnd = "contact_emails", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification

[@@@deriving.end]

type time_period = {
  end_date : string prop option; [@option]
  start_date : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : time_period) -> ()

let yojson_of_time_period =
  (function
   | { end_date = v_end_date; start_date = v_start_date } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_date in
         ("start_date", arg) :: bnds
       in
       let bnds =
         match v_end_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_date", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : time_period -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_time_period

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

type azurerm_consumption_budget_management_group = {
  amount : float prop;
  etag : string prop option; [@option]
  id : string prop option; [@option]
  management_group_id : string prop;
  name : string prop;
  time_grain : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notification : notification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  time_period : time_period list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_consumption_budget_management_group) -> ()

let yojson_of_azurerm_consumption_budget_management_group =
  (function
   | {
       amount = v_amount;
       etag = v_etag;
       id = v_id;
       management_group_id = v_management_group_id;
       name = v_name;
       time_grain = v_time_grain;
       filter = v_filter;
       notification = v_notification;
       time_period = v_time_period;
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
         if Stdlib.( = ) [] v_time_period then bnds
         else
           let arg =
             (yojson_of_list yojson_of_time_period) v_time_period
           in
           let bnd = "time_period", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_notification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification) v_notification
           in
           let bnd = "notification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_time_grain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_grain", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_management_group_id
         in
         ("management_group_id", arg) :: bnds
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
         match v_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etag", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_amount in
         ("amount", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_consumption_budget_management_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_consumption_budget_management_group

[@@@deriving.end]

let filter__dimension ?operator ~name ~values () : filter__dimension
    =
  { name; operator; values }

let filter__not__dimension ?operator ~name ~values () :
    filter__not__dimension =
  { name; operator; values }

let filter__not__tag ?operator ~name ~values () : filter__not__tag =
  { name; operator; values }

let filter__not ?(dimension = []) ?(tag = []) () : filter__not =
  { dimension; tag }

let filter__tag ?operator ~name ~values () : filter__tag =
  { name; operator; values }

let filter ?(not = []) ~dimension ~tag () : filter =
  { dimension; not; tag }

let notification ?enabled ?threshold_type ~contact_emails ~operator
    ~threshold () : notification =
  { contact_emails; enabled; operator; threshold; threshold_type }

let time_period ?end_date ~start_date () : time_period =
  { end_date; start_date }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_consumption_budget_management_group ?etag ?id ?time_grain
    ?(filter = []) ?timeouts ~amount ~management_group_id ~name
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
  tf_name : string;
  amount : float prop;
  etag : string prop;
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  time_grain : string prop;
}

let make ?etag ?id ?time_grain ?(filter = []) ?timeouts ~amount
    ~management_group_id ~name ~notification ~time_period __id =
  let __type = "azurerm_consumption_budget_management_group" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?time_grain ~filter ?timeouts ~amount ~management_group_id
           ~name ~notification ~time_period ());
    attrs = __attrs;
  }

let register ?tf_module ?etag ?id ?time_grain ?(filter = [])
    ?timeouts ~amount ~management_group_id ~name ~notification
    ~time_period __id =
  let (r : _ Tf_core.resource) =
    make ?etag ?id ?time_grain ~filter ?timeouts ~amount
      ~management_group_id ~name ~notification ~time_period __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
