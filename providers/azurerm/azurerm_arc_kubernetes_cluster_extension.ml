(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_arc_kubernetes_cluster_extension = {
  cluster_id : string prop;  (** cluster_id *)
  configuration_protected_settings :
    (string * string prop) list option;
      [@option]
      (** configuration_protected_settings *)
  configuration_settings : (string * string prop) list option;
      [@option]
      (** configuration_settings *)
  extension_type : string prop;  (** extension_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  release_namespace : string prop option; [@option]
      (** release_namespace *)
  release_train : string prop option; [@option]  (** release_train *)
  target_namespace : string prop option; [@option]
      (** target_namespace *)
  version : string prop option; [@option]  (** version *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_kubernetes_cluster_extension *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_arc_kubernetes_cluster_extension
    ?configuration_protected_settings ?configuration_settings ?id
    ?release_namespace ?release_train ?target_namespace ?version
    ?timeouts ~cluster_id ~extension_type ~name ~identity () :
    azurerm_arc_kubernetes_cluster_extension =
  {
    cluster_id;
    configuration_protected_settings;
    configuration_settings;
    extension_type;
    id;
    name;
    release_namespace;
    release_train;
    target_namespace;
    version;
    identity;
    timeouts;
  }

type t = {
  cluster_id : string prop;
  configuration_protected_settings : (string * string) list prop;
  configuration_settings : (string * string) list prop;
  current_version : string prop;
  extension_type : string prop;
  id : string prop;
  name : string prop;
  release_namespace : string prop;
  release_train : string prop;
  target_namespace : string prop;
  version : string prop;
}

let register ?tf_module ?configuration_protected_settings
    ?configuration_settings ?id ?release_namespace ?release_train
    ?target_namespace ?version ?timeouts ~cluster_id ~extension_type
    ~name ~identity __resource_id =
  let __resource_type = "azurerm_arc_kubernetes_cluster_extension" in
  let __resource =
    azurerm_arc_kubernetes_cluster_extension
      ?configuration_protected_settings ?configuration_settings ?id
      ?release_namespace ?release_train ?target_namespace ?version
      ?timeouts ~cluster_id ~extension_type ~name ~identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_arc_kubernetes_cluster_extension __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       configuration_protected_settings =
         Prop.computed __resource_type __resource_id
           "configuration_protected_settings";
       configuration_settings =
         Prop.computed __resource_type __resource_id
           "configuration_settings";
       current_version =
         Prop.computed __resource_type __resource_id
           "current_version";
       extension_type =
         Prop.computed __resource_type __resource_id "extension_type";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       release_namespace =
         Prop.computed __resource_type __resource_id
           "release_namespace";
       release_train =
         Prop.computed __resource_type __resource_id "release_train";
       target_namespace =
         Prop.computed __resource_type __resource_id
           "target_namespace";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
