(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_job_credential__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_job_credential__timeouts *)

type azurerm_mssql_job_credential = {
  job_agent_id : string;  (** job_agent_id *)
  name : string;  (** name *)
  password : string;  (** password *)
  username : string;  (** username *)
  timeouts : azurerm_mssql_job_credential__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_job_credential *)

let azurerm_mssql_job_credential ?timeouts ~job_agent_id ~name
    ~password ~username __resource_id =
  let __resource_type = "azurerm_mssql_job_credential" in
  let __resource =
    { job_agent_id; name; password; username; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_job_credential __resource);
  ()
