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

type azurerm_mssql_job_credential = {
  id : string prop option; [@option]  (** id *)
  job_agent_id : string prop;  (** job_agent_id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_job_credential *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_job_credential ?id ?timeouts ~job_agent_id ~name
    ~password ~username () : azurerm_mssql_job_credential =
  { id; job_agent_id; name; password; username; timeouts }

type t = {
  id : string prop;
  job_agent_id : string prop;
  name : string prop;
  password : string prop;
  username : string prop;
}

let register ?tf_module ?id ?timeouts ~job_agent_id ~name ~password
    ~username __resource_id =
  let __resource_type = "azurerm_mssql_job_credential" in
  let __resource =
    azurerm_mssql_job_credential ?id ?timeouts ~job_agent_id ~name
      ~password ~username ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
