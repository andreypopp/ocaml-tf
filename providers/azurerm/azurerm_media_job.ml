(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type input_asset = {
  label : string prop option; [@option]  (** label *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** input_asset *)

type output_asset = {
  label : string prop option; [@option]  (** label *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** output_asset *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_media_job = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  priority : string prop option; [@option]  (** priority *)
  resource_group_name : string prop;  (** resource_group_name *)
  transform_name : string prop;  (** transform_name *)
  input_asset : input_asset list;
  output_asset : output_asset list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_job *)

let input_asset ?label ~name () : input_asset = { label; name }
let output_asset ?label ~name () : output_asset = { label; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_job ?description ?id ?priority ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~transform_name ~input_asset ~output_asset () : azurerm_media_job
    =
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

type t = {
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  priority : string prop;
  resource_group_name : string prop;
  transform_name : string prop;
}

let register ?tf_module ?description ?id ?priority ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~transform_name ~input_asset ~output_asset __resource_id =
  let __resource_type = "azurerm_media_job" in
  let __resource =
    azurerm_media_job ?description ?id ?priority ?timeouts
      ~media_services_account_name ~name ~resource_group_name
      ~transform_name ~input_asset ~output_asset ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_job __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       media_services_account_name =
         Prop.computed __resource_type __resource_id
           "media_services_account_name";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       transform_name =
         Prop.computed __resource_type __resource_id "transform_name";
     }
      : t)
  in
  __resource_attributes
