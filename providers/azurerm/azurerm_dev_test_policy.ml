(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?fact_data ?id ?tags ?timeouts
    ~evaluator_type ~lab_name ~name ~policy_set_name
    ~resource_group_name ~threshold __resource_id =
  let __resource_type = "azurerm_dev_test_policy" in
  let __resource =
    azurerm_dev_test_policy ?description ?fact_data ?id ?tags
      ?timeouts ~evaluator_type ~lab_name ~name ~policy_set_name
      ~resource_group_name ~threshold ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_policy __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       evaluator_type =
         Prop.computed __resource_type __resource_id "evaluator_type";
       fact_data =
         Prop.computed __resource_type __resource_id "fact_data";
       id = Prop.computed __resource_type __resource_id "id";
       lab_name =
         Prop.computed __resource_type __resource_id "lab_name";
       name = Prop.computed __resource_type __resource_id "name";
       policy_set_name =
         Prop.computed __resource_type __resource_id
           "policy_set_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       threshold =
         Prop.computed __resource_type __resource_id "threshold";
     }
      : t)
  in
  __resource_attributes
