(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_database__timeouts *)

type azurerm_postgresql_database = {
  charset : string prop;  (** charset *)
  collation : string prop;  (** collation *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  timeouts : azurerm_postgresql_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_database *)

type t = {
  charset : string prop;
  collation : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
}

let azurerm_postgresql_database ?id ?timeouts ~charset ~collation
    ~name ~resource_group_name ~server_name __resource_id =
  let __resource_type = "azurerm_postgresql_database" in
  let __resource =
    ({
       charset;
       collation;
       id;
       name;
       resource_group_name;
       server_name;
       timeouts;
     }
      : azurerm_postgresql_database)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_database __resource);
  let __resource_attributes =
    ({
       charset =
         Prop.computed __resource_type __resource_id "charset";
       collation =
         Prop.computed __resource_type __resource_id "collation";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
     }
      : t)
  in
  __resource_attributes
