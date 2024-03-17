(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_hpc_cache_access_policy__access_rule = {
  access : string prop;  (** access *)
  anonymous_gid : float prop option; [@option]  (** anonymous_gid *)
  anonymous_uid : float prop option; [@option]  (** anonymous_uid *)
  filter : string prop option; [@option]  (** filter *)
  root_squash_enabled : bool prop option; [@option]
      (** root_squash_enabled *)
  scope : string prop;  (** scope *)
  submount_access_enabled : bool prop option; [@option]
      (** submount_access_enabled *)
  suid_enabled : bool prop option; [@option]  (** suid_enabled *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_access_policy__access_rule *)

type azurerm_hpc_cache_access_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_access_policy__timeouts *)

type azurerm_hpc_cache_access_policy = {
  hpc_cache_id : string prop;  (** hpc_cache_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  access_rule : azurerm_hpc_cache_access_policy__access_rule list;
  timeouts : azurerm_hpc_cache_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_access_policy *)

let azurerm_hpc_cache_access_policy ?id ?timeouts ~hpc_cache_id ~name
    ~access_rule __resource_id =
  let __resource_type = "azurerm_hpc_cache_access_policy" in
  let __resource =
    { hpc_cache_id; id; name; access_rule; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache_access_policy __resource);
  ()
