(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_masking_policy = { predefined_expression : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : data_masking_policy) -> ()

let yojson_of_data_masking_policy =
  (function
   | { predefined_expression = v_predefined_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_predefined_expression
         in
         ("predefined_expression", arg) :: bnds
       in
       `Assoc bnds
    : data_masking_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_masking_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_bigquery_datapolicy_data_policy = {
  data_policy_id : string prop;
  data_policy_type : string prop;
  id : string prop option; [@option]
  location : string prop;
  policy_tag : string prop;
  project : string prop option; [@option]
  data_masking_policy : data_masking_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_datapolicy_data_policy) -> ()

let yojson_of_google_bigquery_datapolicy_data_policy =
  (function
   | {
       data_policy_id = v_data_policy_id;
       data_policy_type = v_data_policy_type;
       id = v_id;
       location = v_location;
       policy_tag = v_policy_tag;
       project = v_project;
       data_masking_policy = v_data_masking_policy;
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
           yojson_of_list yojson_of_data_masking_policy
             v_data_masking_policy
         in
         ("data_masking_policy", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_tag in
         ("policy_tag", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_data_policy_type
         in
         ("data_policy_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_policy_id
         in
         ("data_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : google_bigquery_datapolicy_data_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_datapolicy_data_policy

[@@@deriving.end]

let data_masking_policy ~predefined_expression () :
    data_masking_policy =
  { predefined_expression }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_datapolicy_data_policy ?id ?project ?timeouts
    ~data_policy_id ~data_policy_type ~location ~policy_tag
    ~data_masking_policy () : google_bigquery_datapolicy_data_policy
    =
  {
    data_policy_id;
    data_policy_type;
    id;
    location;
    policy_tag;
    project;
    data_masking_policy;
    timeouts;
  }

type t = {
  data_policy_id : string prop;
  data_policy_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_tag : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~data_policy_id ~data_policy_type
    ~location ~policy_tag ~data_masking_policy __id =
  let __type = "google_bigquery_datapolicy_data_policy" in
  let __attrs =
    ({
       data_policy_id = Prop.computed __type __id "data_policy_id";
       data_policy_type =
         Prop.computed __type __id "data_policy_type";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       policy_tag = Prop.computed __type __id "policy_tag";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_datapolicy_data_policy
        (google_bigquery_datapolicy_data_policy ?id ?project
           ?timeouts ~data_policy_id ~data_policy_type ~location
           ~policy_tag ~data_masking_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~data_policy_id
    ~data_policy_type ~location ~policy_tag ~data_masking_policy __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~data_policy_id ~data_policy_type
      ~location ~policy_tag ~data_masking_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
