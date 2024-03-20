(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?configuration_protected_settings ?configuration_settings
    ?id ?release_namespace ?release_train ?target_namespace ?version
    ?timeouts ~cluster_id ~extension_type ~name ~identity __id =
  let __type = "azurerm_arc_kubernetes_cluster_extension" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       configuration_protected_settings =
         Prop.computed __type __id "configuration_protected_settings";
       configuration_settings =
         Prop.computed __type __id "configuration_settings";
       current_version = Prop.computed __type __id "current_version";
       extension_type = Prop.computed __type __id "extension_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       release_namespace =
         Prop.computed __type __id "release_namespace";
       release_train = Prop.computed __type __id "release_train";
       target_namespace =
         Prop.computed __type __id "target_namespace";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_arc_kubernetes_cluster_extension
        (azurerm_arc_kubernetes_cluster_extension
           ?configuration_protected_settings ?configuration_settings
           ?id ?release_namespace ?release_train ?target_namespace
           ?version ?timeouts ~cluster_id ~extension_type ~name
           ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration_protected_settings
    ?configuration_settings ?id ?release_namespace ?release_train
    ?target_namespace ?version ?timeouts ~cluster_id ~extension_type
    ~name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?configuration_protected_settings ?configuration_settings
      ?id ?release_namespace ?release_train ?target_namespace
      ?version ?timeouts ~cluster_id ~extension_type ~name ~identity
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
