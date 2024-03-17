(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_configuration_feature__targeting_filter__groups = {
  name : string prop;  (** name *)
  rollout_percentage : float prop;  (** rollout_percentage *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature__targeting_filter__groups *)

type azurerm_app_configuration_feature__targeting_filter = {
  default_rollout_percentage : float prop;
      (** default_rollout_percentage *)
  users : string prop list option; [@option]  (** users *)
  groups :
    azurerm_app_configuration_feature__targeting_filter__groups list;
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature__targeting_filter *)

type azurerm_app_configuration_feature__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature__timeouts *)

type azurerm_app_configuration_feature__timewindow_filter = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature__timewindow_filter *)

type azurerm_app_configuration_feature = {
  configuration_store_id : string prop;
      (** configuration_store_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  etag : string prop option; [@option]  (** etag *)
  id : string prop option; [@option]  (** id *)
  key : string prop option; [@option]  (** key *)
  label : string prop option; [@option]  (** label *)
  locked : bool prop option; [@option]  (** locked *)
  name : string prop;  (** name *)
  percentage_filter_value : float prop option; [@option]
      (** percentage_filter_value *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  targeting_filter :
    azurerm_app_configuration_feature__targeting_filter list;
  timeouts : azurerm_app_configuration_feature__timeouts option;
  timewindow_filter :
    azurerm_app_configuration_feature__timewindow_filter list;
}
[@@deriving yojson_of]
(** azurerm_app_configuration_feature *)

type t = {
  configuration_store_id : string prop;
  description : string prop;
  enabled : bool prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  name : string prop;
  percentage_filter_value : float prop;
  tags : (string * string) list prop;
}

let azurerm_app_configuration_feature ?description ?enabled ?etag ?id
    ?key ?label ?locked ?percentage_filter_value ?tags ?timeouts
    ~configuration_store_id ~name ~targeting_filter
    ~timewindow_filter __resource_id =
  let __resource_type = "azurerm_app_configuration_feature" in
  let __resource =
    ({
       configuration_store_id;
       description;
       enabled;
       etag;
       id;
       key;
       label;
       locked;
       name;
       percentage_filter_value;
       tags;
       targeting_filter;
       timeouts;
       timewindow_filter;
     }
      : azurerm_app_configuration_feature)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_configuration_feature __resource);
  let __resource_attributes =
    ({
       configuration_store_id =
         Prop.computed __resource_type __resource_id
           "configuration_store_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       label = Prop.computed __resource_type __resource_id "label";
       locked = Prop.computed __resource_type __resource_id "locked";
       name = Prop.computed __resource_type __resource_id "name";
       percentage_filter_value =
         Prop.computed __resource_type __resource_id
           "percentage_filter_value";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
