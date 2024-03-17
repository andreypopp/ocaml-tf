(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_elasticpool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_elasticpool__timeouts *)

type azurerm_sql_elasticpool = {
  db_dtu_max : float prop option; [@option]  (** db_dtu_max *)
  db_dtu_min : float prop option; [@option]  (** db_dtu_min *)
  dtu : float prop;  (** dtu *)
  edition : string prop;  (** edition *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  pool_size : float prop option; [@option]  (** pool_size *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_sql_elasticpool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_elasticpool *)

let azurerm_sql_elasticpool ?db_dtu_max ?db_dtu_min ?id ?pool_size
    ?tags ?timeouts ~dtu ~edition ~location ~name
    ~resource_group_name ~server_name __resource_id =
  let __resource_type = "azurerm_sql_elasticpool" in
  let __resource =
    {
      db_dtu_max;
      db_dtu_min;
      dtu;
      edition;
      id;
      location;
      name;
      pool_size;
      resource_group_name;
      server_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_elasticpool __resource);
  ()
