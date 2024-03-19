(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type plan = {
  product : string prop;  (** product *)
  promotion_code : string prop option; [@option]
      (** promotion_code *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** plan *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_log_analytics_solution = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  solution_name : string prop;  (** solution_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_name : string prop;  (** workspace_name *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
  plan : plan list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_solution *)

let plan ?promotion_code ~product ~publisher () : plan =
  { product; promotion_code; publisher }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_solution ?id ?tags ?timeouts ~location
    ~resource_group_name ~solution_name ~workspace_name
    ~workspace_resource_id ~plan () : azurerm_log_analytics_solution
    =
  {
    id;
    location;
    resource_group_name;
    solution_name;
    tags;
    workspace_name;
    workspace_resource_id;
    plan;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
  solution_name : string prop;
  tags : (string * string) list prop;
  workspace_name : string prop;
  workspace_resource_id : string prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location
    ~resource_group_name ~solution_name ~workspace_name
    ~workspace_resource_id ~plan __resource_id =
  let __resource_type = "azurerm_log_analytics_solution" in
  let __resource =
    azurerm_log_analytics_solution ?id ?tags ?timeouts ~location
      ~resource_group_name ~solution_name ~workspace_name
      ~workspace_resource_id ~plan ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_solution __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       solution_name =
         Prop.computed __resource_type __resource_id "solution_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       workspace_name =
         Prop.computed __resource_type __resource_id "workspace_name";
       workspace_resource_id =
         Prop.computed __resource_type __resource_id
           "workspace_resource_id";
     }
      : t)
  in
  __resource_attributes
