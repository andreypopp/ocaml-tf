(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_job_credential__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_job_credential__timeouts *)

type azurerm_mssql_job_credential = {
  id : string prop option; [@option]  (** id *)
  job_agent_id : string prop;  (** job_agent_id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
  timeouts : azurerm_mssql_job_credential__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_job_credential *)

type t = {
  id : string prop;
  job_agent_id : string prop;
  name : string prop;
  password : string prop;
  username : string prop;
}

let azurerm_mssql_job_credential ?id ?timeouts ~job_agent_id ~name
    ~password ~username __resource_id =
  let __resource_type = "azurerm_mssql_job_credential" in
  let __resource =
    ({ id; job_agent_id; name; password; username; timeouts }
      : azurerm_mssql_job_credential)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_job_credential __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       job_agent_id =
         Prop.computed __resource_type __resource_id "job_agent_id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
