(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_elasticpool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_elasticpool__timeouts *)

type azurerm_sql_elasticpool = {
  dtu : float;  (** dtu *)
  edition : string;  (** edition *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_sql_elasticpool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_elasticpool *)

let azurerm_sql_elasticpool ?tags ?timeouts ~dtu ~edition ~location
    ~name ~resource_group_name ~server_name __resource_id =
  let __resource_type = "azurerm_sql_elasticpool" in
  let __resource =
    {
      dtu;
      edition;
      location;
      name;
      resource_group_name;
      server_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_elasticpool __resource);
  ()
