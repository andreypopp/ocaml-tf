(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_job__input_asset = {
  label : string prop option; [@option]  (** label *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_media_job__input_asset *)

type azurerm_media_job__output_asset = {
  label : string prop option; [@option]  (** label *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_media_job__output_asset *)

type azurerm_media_job__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_job__timeouts *)

type azurerm_media_job = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  priority : string prop option; [@option]  (** priority *)
  resource_group_name : string prop;  (** resource_group_name *)
  transform_name : string prop;  (** transform_name *)
  input_asset : azurerm_media_job__input_asset list;
  output_asset : azurerm_media_job__output_asset list;
  timeouts : azurerm_media_job__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_job *)

let azurerm_media_job ?description ?id ?priority ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~transform_name ~input_asset ~output_asset __resource_id =
  let __resource_type = "azurerm_media_job" in
  let __resource =
    {
      description;
      id;
      media_services_account_name;
      name;
      priority;
      resource_group_name;
      transform_name;
      input_asset;
      output_asset;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_job __resource);
  ()
