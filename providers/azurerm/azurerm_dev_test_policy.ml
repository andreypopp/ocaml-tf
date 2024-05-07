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

type azurerm_dev_test_policy = {
  description : string prop option; [@option]
  evaluator_type : string prop;
  fact_data : string prop option; [@option]
  id : string prop option; [@option]
  lab_name : string prop;
  name : string prop;
  policy_set_name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  threshold : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_test_policy) -> ()

let yojson_of_azurerm_dev_test_policy =
  (function
   | {
       description = v_description;
       evaluator_type = v_evaluator_type;
       fact_data = v_fact_data;
       id = v_id;
       lab_name = v_lab_name;
       name = v_name;
       policy_set_name = v_policy_set_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       threshold = v_threshold;
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
         let arg = yojson_of_prop yojson_of_string v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_set_name
         in
         ("policy_set_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lab_name in
         ("lab_name", arg) :: bnds
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
         match v_fact_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fact_data", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_evaluator_type
         in
         ("evaluator_type", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_dev_test_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_test_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_test_policy ?description ?fact_data ?id ?tags
    ?timeouts ~evaluator_type ~lab_name ~name ~policy_set_name
    ~resource_group_name ~threshold () : azurerm_dev_test_policy =
  {
    description;
    evaluator_type;
    fact_data;
    id;
    lab_name;
    name;
    policy_set_name;
    resource_group_name;
    tags;
    threshold;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  evaluator_type : string prop;
  fact_data : string prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  policy_set_name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  threshold : string prop;
}

let make ?description ?fact_data ?id ?tags ?timeouts ~evaluator_type
    ~lab_name ~name ~policy_set_name ~resource_group_name ~threshold
    __id =
  let __type = "azurerm_dev_test_policy" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       evaluator_type = Prop.computed __type __id "evaluator_type";
       fact_data = Prop.computed __type __id "fact_data";
       id = Prop.computed __type __id "id";
       lab_name = Prop.computed __type __id "lab_name";
       name = Prop.computed __type __id "name";
       policy_set_name = Prop.computed __type __id "policy_set_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       threshold = Prop.computed __type __id "threshold";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_test_policy
        (azurerm_dev_test_policy ?description ?fact_data ?id ?tags
           ?timeouts ~evaluator_type ~lab_name ~name ~policy_set_name
           ~resource_group_name ~threshold ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?fact_data ?id ?tags ?timeouts
    ~evaluator_type ~lab_name ~name ~policy_set_name
    ~resource_group_name ~threshold __id =
  let (r : _ Tf_core.resource) =
    make ?description ?fact_data ?id ?tags ?timeouts ~evaluator_type
      ~lab_name ~name ~policy_set_name ~resource_group_name
      ~threshold __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
