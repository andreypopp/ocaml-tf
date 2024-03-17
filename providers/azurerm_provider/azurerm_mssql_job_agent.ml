(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_job_agent__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_job_agent__timeouts *)

type azurerm_mssql_job_agent = {
  database_id : string;  (** database_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_mssql_job_agent__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_job_agent *)

let azurerm_mssql_job_agent ?tags ?timeouts ~database_id ~location
    ~name __resource_id =
  let __resource_type = "azurerm_mssql_job_agent" in
  let __resource = { database_id; location; name; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_job_agent __resource);
  ()
