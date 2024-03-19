(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type access_rule = {
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
(** access_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_hpc_cache_access_policy = {
  hpc_cache_id : string prop;  (** hpc_cache_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  access_rule : access_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_access_policy *)

let access_rule ?anonymous_gid ?anonymous_uid ?filter
    ?root_squash_enabled ?submount_access_enabled ?suid_enabled
    ~access ~scope () : access_rule =
  {
    access;
    anonymous_gid;
    anonymous_uid;
    filter;
    root_squash_enabled;
    scope;
    submount_access_enabled;
    suid_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_hpc_cache_access_policy ?id ?timeouts ~hpc_cache_id ~name
    ~access_rule () : azurerm_hpc_cache_access_policy =
  { hpc_cache_id; id; name; access_rule; timeouts }

type t = {
  hpc_cache_id : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?id ?timeouts ~hpc_cache_id ~name
    ~access_rule __resource_id =
  let __resource_type = "azurerm_hpc_cache_access_policy" in
  let __resource =
    azurerm_hpc_cache_access_policy ?id ?timeouts ~hpc_cache_id ~name
      ~access_rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache_access_policy __resource);
  let __resource_attributes =
    ({
       hpc_cache_id =
         Prop.computed __resource_type __resource_id "hpc_cache_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
