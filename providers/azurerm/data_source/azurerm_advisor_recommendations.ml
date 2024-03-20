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

type recommendations = {
  category : string prop;
  description : string prop;
  impact : string prop;
  recommendation_name : string prop;
  recommendation_type_id : string prop;
  resource_name : string prop;
  resource_type : string prop;
  suppression_names : string prop list;
  updated_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recommendations) -> ()

let yojson_of_recommendations =
  (function
   | {
       category = v_category;
       description = v_description;
       impact = v_impact;
       recommendation_name = v_recommendation_name;
       recommendation_type_id = v_recommendation_type_id;
       resource_name = v_resource_name;
       resource_type = v_resource_type;
       suppression_names = v_suppression_names;
       updated_time = v_updated_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated_time in
         ("updated_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_suppression_names
         in
         ("suppression_names", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_name in
         ("resource_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recommendation_type_id
         in
         ("recommendation_type_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recommendation_name
         in
         ("recommendation_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_impact in
         ("impact", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       `Assoc bnds
    : recommendations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recommendations

[@@@deriving.end]

type azurerm_advisor_recommendations = {
  filter_by_category : string prop list option; [@option]
  filter_by_resource_groups : string prop list option; [@option]
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_advisor_recommendations) -> ()

let yojson_of_azurerm_advisor_recommendations =
  (function
   | {
       filter_by_category = v_filter_by_category;
       filter_by_resource_groups = v_filter_by_resource_groups;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_by_resource_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "filter_by_resource_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_by_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "filter_by_category", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_advisor_recommendations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_advisor_recommendations

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_advisor_recommendations ?filter_by_category
    ?filter_by_resource_groups ?id ?timeouts () :
    azurerm_advisor_recommendations =
  { filter_by_category; filter_by_resource_groups; id; timeouts }

type t = {
  filter_by_category : string list prop;
  filter_by_resource_groups : string list prop;
  id : string prop;
  recommendations : recommendations list prop;
}

let make ?filter_by_category ?filter_by_resource_groups ?id ?timeouts
    __id =
  let __type = "azurerm_advisor_recommendations" in
  let __attrs =
    ({
       filter_by_category =
         Prop.computed __type __id "filter_by_category";
       filter_by_resource_groups =
         Prop.computed __type __id "filter_by_resource_groups";
       id = Prop.computed __type __id "id";
       recommendations = Prop.computed __type __id "recommendations";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_advisor_recommendations
        (azurerm_advisor_recommendations ?filter_by_category
           ?filter_by_resource_groups ?id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?filter_by_category
    ?filter_by_resource_groups ?id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?filter_by_category ?filter_by_resource_groups ?id ?timeouts
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
