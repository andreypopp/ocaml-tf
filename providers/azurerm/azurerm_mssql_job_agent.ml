(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_job_agent__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_job_agent__timeouts *)

type azurerm_mssql_job_agent = {
  database_id : string prop;  (** database_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_mssql_job_agent__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_job_agent *)

type t = {
  database_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let azurerm_mssql_job_agent ?id ?tags ?timeouts ~database_id
    ~location ~name __resource_id =
  let __resource_type = "azurerm_mssql_job_agent" in
  let __resource =
    ({ database_id; id; location; name; tags; timeouts }
      : azurerm_mssql_job_agent)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_job_agent __resource);
  let __resource_attributes =
    ({
       database_id =
         Prop.computed __resource_type __resource_id "database_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
