(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type filter__tag = {
  name : string prop;
  operator : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter__tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__tag

[@@@deriving.end]

type filter__not__tag = {
  name : string prop;
  operator : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter__not__tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not__tag

[@@@deriving.end]

type filter__not__dimension = {
  name : string prop;
  operator : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter__not__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not__dimension

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

type filter__dimension = {
  name : string prop;
  operator : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__dimension

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
  contact_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  contact_roles : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enabled : bool prop;
  operator : string prop;
  threshold : float prop;
  threshold_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification) -> ()

let yojson_of_notification =
  (function
   | {
       contact_emails = v_contact_emails;
       contact_groups = v_contact_groups;
       contact_roles = v_contact_roles;
       enabled = v_enabled;
       operator = v_operator;
       threshold = v_threshold;
       threshold_type = v_threshold_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_threshold_type
         in
         ("threshold_type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_contact_roles then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_contact_roles
           in
           let bnd = "contact_roles", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_contact_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_contact_groups
           in
           let bnd = "contact_groups", arg in
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
  end_date : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_end_date in
         ("end_date", arg) :: bnds
       in
       `Assoc bnds
    : time_period -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_time_period

[@@@deriving.end]

type azurerm_consumption_budget_subscription = {
  id : string prop option; [@option]
  name : string prop;
  subscription_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_consumption_budget_subscription) -> ()

let yojson_of_azurerm_consumption_budget_subscription =
  (function
   | {
       id = v_id;
       name = v_name;
       subscription_id = v_subscription_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_subscription_id
         in
         ("subscription_id", arg) :: bnds
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
    : azurerm_consumption_budget_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_consumption_budget_subscription

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_consumption_budget_subscription ?id ?timeouts ~name
    ~subscription_id () : azurerm_consumption_budget_subscription =
  { id; name; subscription_id; timeouts }

type t = {
  tf_name : string;
  amount : float prop;
  filter : filter list prop;
  id : string prop;
  name : string prop;
  notification : notification list prop;
  subscription_id : string prop;
  time_grain : string prop;
  time_period : time_period list prop;
}

let make ?id ?timeouts ~name ~subscription_id __id =
  let __type = "azurerm_consumption_budget_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       amount = Prop.computed __type __id "amount";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notification = Prop.computed __type __id "notification";
       subscription_id = Prop.computed __type __id "subscription_id";
       time_grain = Prop.computed __type __id "time_grain";
       time_period = Prop.computed __type __id "time_period";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_consumption_budget_subscription
        (azurerm_consumption_budget_subscription ?id ?timeouts ~name
           ~subscription_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~subscription_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~subscription_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
