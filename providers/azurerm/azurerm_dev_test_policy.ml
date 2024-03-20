(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_test_policy = {
  description : string prop option; [@option]  (** description *)
  evaluator_type : string prop;  (** evaluator_type *)
  fact_data : string prop option; [@option]  (** fact_data *)
  id : string prop option; [@option]  (** id *)
  lab_name : string prop;  (** lab_name *)
  name : string prop;  (** name *)
  policy_set_name : string prop;  (** policy_set_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  threshold : string prop;  (** threshold *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_policy *)

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
