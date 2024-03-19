(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_managed_disk_sas_token = {
  access_level : string prop;  (** access_level *)
  duration_in_seconds : float prop;  (** duration_in_seconds *)
  id : string prop option; [@option]  (** id *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_disk_sas_token *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_managed_disk_sas_token ?id ?timeouts ~access_level
    ~duration_in_seconds ~managed_disk_id () :
    azurerm_managed_disk_sas_token =
  {
    access_level;
    duration_in_seconds;
    id;
    managed_disk_id;
    timeouts;
  }

type t = {
  access_level : string prop;
  duration_in_seconds : float prop;
  id : string prop;
  managed_disk_id : string prop;
  sas_url : string prop;
}

let register ?tf_module ?id ?timeouts ~access_level
    ~duration_in_seconds ~managed_disk_id __resource_id =
  let __resource_type = "azurerm_managed_disk_sas_token" in
  let __resource =
    azurerm_managed_disk_sas_token ?id ?timeouts ~access_level
      ~duration_in_seconds ~managed_disk_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_managed_disk_sas_token __resource);
  let __resource_attributes =
    ({
       access_level =
         Prop.computed __resource_type __resource_id "access_level";
       duration_in_seconds =
         Prop.computed __resource_type __resource_id
           "duration_in_seconds";
       id = Prop.computed __resource_type __resource_id "id";
       managed_disk_id =
         Prop.computed __resource_type __resource_id
           "managed_disk_id";
       sas_url =
         Prop.computed __resource_type __resource_id "sas_url";
     }
      : t)
  in
  __resource_attributes
