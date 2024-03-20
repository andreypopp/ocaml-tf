(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type env__value_from__config_map_key_ref = {
  key : string prop option; [@option]  (** The key to select. *)
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the ConfigMap or its key must be defined. *)
}
[@@deriving yojson_of]
(** Selects a key of a ConfigMap. *)

type env__value_from__field_ref = {
  api_version : string prop option; [@option]
      (** Version of the schema the FieldPath is written in terms of, defaults to v1. *)
  field_path : string prop option; [@option]
      (** Path of the field to select in the specified API version *)
}
[@@deriving yojson_of]
(** Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.podIP. *)

type env__value_from__resource_field_ref = {
  container_name : string prop option; [@option]
      (** container_name *)
  divisor : string prop option; [@option]  (** divisor *)
  resource : string prop;  (** Resource to select *)
}
[@@deriving yojson_of]
(** Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported. *)

type env__value_from__secret_key_ref = {
  key : string prop option; [@option]
      (** The key of the secret to select from. Must be a valid secret key. *)
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the Secret or its key must be defined. *)
}
[@@deriving yojson_of]
(** Selects a key of a secret in the pod's namespace. *)

type env__value_from = {
  config_map_key_ref : env__value_from__config_map_key_ref list;
  field_ref : env__value_from__field_ref list;
  resource_field_ref : env__value_from__resource_field_ref list;
  secret_key_ref : env__value_from__secret_key_ref list;
}
[@@deriving yojson_of]
(** Source for the environment variable's value *)

type env = {
  name : string prop;
      (** Name of the environment variable. Must be a C_IDENTIFIER *)
  value : string prop option; [@option]
      (** Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to . *)
  value_from : env__value_from list;
}
[@@deriving yojson_of]
(** List of custom values used to represent environment variables *)

type metadata = {
  name : string prop;  (** The name of the resource. *)
  namespace : string prop option; [@option]
      (** The namespace of the resource. *)
}
[@@deriving yojson_of]
(** metadata *)

type kubernetes_env = {
  api_version : string prop;  (** Resource API version *)
  container : string prop option; [@option]
      (** Name of the container for which we are updating the environment variables. *)
  field_manager : string prop option; [@option]
      (** Set the name of the field manager for the specified environment variables. *)
  force : bool prop option; [@option]
      (** Force overwriting environments that were created or edited outside of Terraform. *)
  id : string prop option; [@option]  (** id *)
  init_container : string prop option; [@option]
      (** Name of the initContainer for which we are updating the environment variables. *)
  kind : string prop;  (** Resource Kind *)
  env : env list;
  metadata : metadata list;
}
[@@deriving yojson_of]
(** kubernetes_env *)

let env__value_from__config_map_key_ref ?key ?name ?optional () :
    env__value_from__config_map_key_ref =
  { key; name; optional }

let env__value_from__field_ref ?api_version ?field_path () :
    env__value_from__field_ref =
  { api_version; field_path }

let env__value_from__resource_field_ref ?container_name ?divisor
    ~resource () : env__value_from__resource_field_ref =
  { container_name; divisor; resource }

let env__value_from__secret_key_ref ?key ?name ?optional () :
    env__value_from__secret_key_ref =
  { key; name; optional }

let env__value_from ~config_map_key_ref ~field_ref
    ~resource_field_ref ~secret_key_ref () : env__value_from =
  {
    config_map_key_ref;
    field_ref;
    resource_field_ref;
    secret_key_ref;
  }

let env ?value ~name ~value_from () : env =
  { name; value; value_from }

let metadata ?namespace ~name () : metadata = { name; namespace }

let kubernetes_env ?container ?field_manager ?force ?id
    ?init_container ~api_version ~kind ~env ~metadata () :
    kubernetes_env =
  {
    api_version;
    container;
    field_manager;
    force;
    id;
    init_container;
    kind;
    env;
    metadata;
  }

type t = {
  api_version : string prop;
  container : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  init_container : string prop;
  kind : string prop;
}

let make ?container ?field_manager ?force ?id ?init_container
    ~api_version ~kind ~env ~metadata __id =
  let __type = "kubernetes_env" in
  let __attrs =
    ({
       api_version = Prop.computed __type __id "api_version";
       container = Prop.computed __type __id "container";
       field_manager = Prop.computed __type __id "field_manager";
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
       init_container = Prop.computed __type __id "init_container";
       kind = Prop.computed __type __id "kind";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_env
        (kubernetes_env ?container ?field_manager ?force ?id
           ?init_container ~api_version ~kind ~env ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?container ?field_manager ?force ?id
    ?init_container ~api_version ~kind ~env ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?container ?field_manager ?force ?id ?init_container
      ~api_version ~kind ~env ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
