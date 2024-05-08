(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type env__value_from__config_map_key_ref = {
  key : string prop option; [@option]
  name : string prop option; [@option]
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : env__value_from__config_map_key_ref) -> ()

let yojson_of_env__value_from__config_map_key_ref =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : env__value_from__config_map_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_env__value_from__config_map_key_ref

[@@@deriving.end]

type env__value_from__field_ref = {
  api_version : string prop option; [@option]
  field_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : env__value_from__field_ref) -> ()

let yojson_of_env__value_from__field_ref =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_field_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : env__value_from__field_ref -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_env__value_from__field_ref

[@@@deriving.end]

type env__value_from__resource_field_ref = {
  container_name : string prop option; [@option]
  divisor : string prop option; [@option]
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : env__value_from__resource_field_ref) -> ()

let yojson_of_env__value_from__resource_field_ref =
  (function
   | {
       container_name = v_container_name;
       divisor = v_divisor;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         match v_divisor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "divisor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : env__value_from__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_env__value_from__resource_field_ref

[@@@deriving.end]

type env__value_from__secret_key_ref = {
  key : string prop option; [@option]
  name : string prop option; [@option]
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : env__value_from__secret_key_ref) -> ()

let yojson_of_env__value_from__secret_key_ref =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : env__value_from__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_env__value_from__secret_key_ref

[@@@deriving.end]

type env__value_from = {
  config_map_key_ref : env__value_from__config_map_key_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  field_ref : env__value_from__field_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_field_ref : env__value_from__resource_field_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret_key_ref : env__value_from__secret_key_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : env__value_from) -> ()

let yojson_of_env__value_from =
  (function
   | {
       config_map_key_ref = v_config_map_key_ref;
       field_ref = v_field_ref;
       resource_field_ref = v_resource_field_ref;
       secret_key_ref = v_secret_key_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_key_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_env__value_from__secret_key_ref)
               v_secret_key_ref
           in
           let bnd = "secret_key_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_env__value_from__resource_field_ref)
               v_resource_field_ref
           in
           let bnd = "resource_field_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_field_ref then bnds
         else
           let arg =
             (yojson_of_list yojson_of_env__value_from__field_ref)
               v_field_ref
           in
           let bnd = "field_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_config_map_key_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_env__value_from__config_map_key_ref)
               v_config_map_key_ref
           in
           let bnd = "config_map_key_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : env__value_from -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_env__value_from

[@@@deriving.end]

type env = {
  name : string prop;
  value : string prop option; [@option]
  value_from : env__value_from list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : env) -> ()

let yojson_of_env =
  (function
   | { name = v_name; value = v_value; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_value_from then bnds
         else
           let arg =
             (yojson_of_list yojson_of_env__value_from) v_value_from
           in
           let bnd = "value_from", arg in
           bnd :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_env

[@@@deriving.end]

type metadata = {
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type kubernetes_env = {
  api_version : string prop;
  container : string prop option; [@option]
  field_manager : string prop option; [@option]
  force : bool prop option; [@option]
  id : string prop option; [@option]
  init_container : string prop option; [@option]
  kind : string prop;
  env : env list; [@default []] [@yojson_drop_default Stdlib.( = )]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_env) -> ()

let yojson_of_kubernetes_env =
  (function
   | {
       api_version = v_api_version;
       container = v_container;
       field_manager = v_field_manager;
       force = v_force;
       id = v_id;
       init_container = v_init_container;
       kind = v_kind;
       env = v_env;
       metadata = v_metadata;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg = (yojson_of_list yojson_of_env) v_env in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         match v_init_container with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "init_container", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_manager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_manager", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : kubernetes_env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_env

[@@@deriving.end]

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

let env__value_from ?(config_map_key_ref = []) ?(field_ref = [])
    ?(resource_field_ref = []) ?(secret_key_ref = []) () :
    env__value_from =
  {
    config_map_key_ref;
    field_ref;
    resource_field_ref;
    secret_key_ref;
  }

let env ?value ?(value_from = []) ~name () : env =
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
  tf_name : string;
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
       tf_name = __id;
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
