(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_job__input_asset = {
  label : string option; [@option]  (** label *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_media_job__input_asset *)

type azurerm_media_job__output_asset = {
  label : string option; [@option]  (** label *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_media_job__output_asset *)

type azurerm_media_job__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_job__timeouts *)

type azurerm_media_job = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  media_services_account_name : string;
      (** media_services_account_name *)
  name : string;  (** name *)
  priority : string option; [@option]  (** priority *)
  resource_group_name : string;  (** resource_group_name *)
  transform_name : string;  (** transform_name *)
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
