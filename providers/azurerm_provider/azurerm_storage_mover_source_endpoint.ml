(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_mover_source_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_mover_source_endpoint__timeouts *)

type azurerm_storage_mover_source_endpoint = {
  description : string option; [@option]  (** description *)
  export : string option; [@option]  (** export *)
  host : string;  (** host *)
  name : string;  (** name *)
  nfs_version : string option; [@option]  (** nfs_version *)
  storage_mover_id : string;  (** storage_mover_id *)
  timeouts : azurerm_storage_mover_source_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_source_endpoint *)

let azurerm_storage_mover_source_endpoint ?description ?export
    ?nfs_version ?timeouts ~host ~name ~storage_mover_id
    __resource_id =
  let __resource_type = "azurerm_storage_mover_source_endpoint" in
  let __resource =
    {
      description;
      export;
      host;
      name;
      nfs_version;
      storage_mover_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_source_endpoint __resource);
  ()
