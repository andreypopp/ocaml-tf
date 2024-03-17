(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_site_recovery_hyperv_replication_policy_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_replication_policy_association__timeouts *)

type azurerm_site_recovery_hyperv_replication_policy_association = {
  hyperv_site_id : string prop;  (** hyperv_site_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_id : string prop;  (** policy_id *)
  timeouts :
    azurerm_site_recovery_hyperv_replication_policy_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_hyperv_replication_policy_association *)

type t = {
  hyperv_site_id : string prop;
  id : string prop;
  name : string prop;
  policy_id : string prop;
}

let azurerm_site_recovery_hyperv_replication_policy_association ?id
    ?timeouts ~hyperv_site_id ~name ~policy_id __resource_id =
  let __resource_type =
    "azurerm_site_recovery_hyperv_replication_policy_association"
  in
  let __resource =
    ({ hyperv_site_id; id; name; policy_id; timeouts }
      : azurerm_site_recovery_hyperv_replication_policy_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_hyperv_replication_policy_association
       __resource);
  let __resource_attributes =
    ({
       hyperv_site_id =
         Prop.computed __resource_type __resource_id "hyperv_site_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       policy_id =
         Prop.computed __resource_type __resource_id "policy_id";
     }
      : t)
  in
  __resource_attributes
