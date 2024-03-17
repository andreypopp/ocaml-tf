(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_policy__timeouts *)

type azurerm_dev_test_policy = {
  description : string option; [@option]  (** description *)
  evaluator_type : string;  (** evaluator_type *)
  fact_data : string option; [@option]  (** fact_data *)
  id : string option; [@option]  (** id *)
  lab_name : string;  (** lab_name *)
  name : string;  (** name *)
  policy_set_name : string;  (** policy_set_name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  threshold : string;  (** threshold *)
  timeouts : azurerm_dev_test_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_policy *)

let azurerm_dev_test_policy ?description ?fact_data ?id ?tags
    ?timeouts ~evaluator_type ~lab_name ~name ~policy_set_name
    ~resource_group_name ~threshold __resource_id =
  let __resource_type = "azurerm_dev_test_policy" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_policy __resource);
  ()
