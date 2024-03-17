(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_mover_source_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_mover_source_endpoint__timeouts *)

type azurerm_storage_mover_source_endpoint = {
  description : string prop option; [@option]  (** description *)
  export : string prop option; [@option]  (** export *)
  host : string prop;  (** host *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  nfs_version : string prop option; [@option]  (** nfs_version *)
  storage_mover_id : string prop;  (** storage_mover_id *)
  timeouts : azurerm_storage_mover_source_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_source_endpoint *)

type t = {
  description : string prop;
  export : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  nfs_version : string prop;
  storage_mover_id : string prop;
}

let azurerm_storage_mover_source_endpoint ?description ?export ?id
    ?nfs_version ?timeouts ~host ~name ~storage_mover_id
    __resource_id =
  let __resource_type = "azurerm_storage_mover_source_endpoint" in
  let __resource =
    ({
       description;
       export;
       host;
       id;
       name;
       nfs_version;
       storage_mover_id;
       timeouts;
     }
      : azurerm_storage_mover_source_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_source_endpoint __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       export = Prop.computed __resource_type __resource_id "export";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       nfs_version =
         Prop.computed __resource_type __resource_id "nfs_version";
       storage_mover_id =
         Prop.computed __resource_type __resource_id
           "storage_mover_id";
     }
      : t)
  in
  __resource_attributes
