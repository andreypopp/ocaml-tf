(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  generate_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       generate_name = v_generate_name;
       labels = v_labels;
       name = v_name;
       namespace = v_namespace;
     } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_generate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type spec__volume__vsphere_volume = {
  fs_type : string prop;
  volume_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__vsphere_volume) -> ()

let yojson_of_spec__volume__vsphere_volume =
  (function
   | { fs_type = v_fs_type; volume_path = v_volume_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_path in
         ("volume_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__vsphere_volume ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__vsphere_volume

[@@@deriving.end]

type spec__volume__secret__items = {
  key : string prop;
  mode : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__secret__items) -> ()

let yojson_of_spec__volume__secret__items =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__secret__items

[@@@deriving.end]

type spec__volume__secret = {
  default_mode : string prop;
  items : spec__volume__secret__items list;
      [@default []] [@yojson_drop_default ( = )]
  optional : bool prop;
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__secret) -> ()

let yojson_of_spec__volume__secret =
  (function
   | {
       default_mode = v_default_mode;
       items = v_items;
       optional = v_optional;
       secret_name = v_secret_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__secret__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_default_mode in
         ("default_mode", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__secret

[@@@deriving.end]

type spec__volume__rbd__secret_ref = {
  name : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__rbd__secret_ref) -> ()

let yojson_of_spec__volume__rbd__secret_ref =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__rbd__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__rbd__secret_ref

[@@@deriving.end]

type spec__volume__rbd = {
  ceph_monitors : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  fs_type : string prop;
  keyring : string prop;
  rados_user : string prop;
  rbd_image : string prop;
  rbd_pool : string prop;
  read_only : bool prop;
  secret_ref : spec__volume__rbd__secret_ref list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__rbd) -> ()

let yojson_of_spec__volume__rbd =
  (function
   | {
       ceph_monitors = v_ceph_monitors;
       fs_type = v_fs_type;
       keyring = v_keyring;
       rados_user = v_rados_user;
       rbd_image = v_rbd_image;
       rbd_pool = v_rbd_pool;
       read_only = v_read_only;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_secret_ref then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__rbd__secret_ref)
               v_secret_ref
           in
           let bnd = "secret_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rbd_pool in
         ("rbd_pool", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rbd_image in
         ("rbd_image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rados_user in
         ("rados_user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_keyring in
         ("keyring", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       let bnds =
         if [] = v_ceph_monitors then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ceph_monitors
           in
           let bnd = "ceph_monitors", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__rbd -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__rbd

[@@@deriving.end]

type spec__volume__quobyte = {
  group : string prop;
  read_only : bool prop;
  registry : string prop;
  user : string prop;
  volume : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__quobyte) -> ()

let yojson_of_spec__volume__quobyte =
  (function
   | {
       group = v_group;
       read_only = v_read_only;
       registry = v_registry;
       user = v_user;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume in
         ("volume", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry in
         ("registry", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__quobyte -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__quobyte

[@@@deriving.end]

type spec__volume__projected__sources__service_account_token = {
  audience : string prop;
  expiration_seconds : float prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__projected__sources__service_account_token) ->
  ()

let yojson_of_spec__volume__projected__sources__service_account_token
    =
  (function
   | {
       audience = v_audience;
       expiration_seconds = v_expiration_seconds;
       path = v_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_expiration_seconds
         in
         ("expiration_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_audience in
         ("audience", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__service_account_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__projected__sources__service_account_token

[@@@deriving.end]

type spec__volume__projected__sources__secret__items = {
  key : string prop;
  mode : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__projected__sources__secret__items) -> ()

let yojson_of_spec__volume__projected__sources__secret__items =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__projected__sources__secret__items

[@@@deriving.end]

type spec__volume__projected__sources__secret = {
  items : spec__volume__projected__sources__secret__items list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__projected__sources__secret) -> ()

let yojson_of_spec__volume__projected__sources__secret =
  (function
   | { items = v_items; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__secret__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__projected__sources__secret

[@@@deriving.end]

type spec__volume__projected__sources__downward_api__items__resource_field_ref = {
  container_name : string prop;
  divisor : string prop;
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__volume__projected__sources__downward_api__items__resource_field_ref) ->
  ()

let yojson_of_spec__volume__projected__sources__downward_api__items__resource_field_ref
    =
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
         let arg = yojson_of_prop yojson_of_string v_divisor in
         ("divisor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__downward_api__items__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__projected__sources__downward_api__items__resource_field_ref

[@@@deriving.end]

type spec__volume__projected__sources__downward_api__items__field_ref = {
  api_version : string prop;
  field_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__volume__projected__sources__downward_api__items__field_ref) ->
  ()

let yojson_of_spec__volume__projected__sources__downward_api__items__field_ref
    =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field_path in
         ("field_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__downward_api__items__field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__projected__sources__downward_api__items__field_ref

[@@@deriving.end]

type spec__volume__projected__sources__downward_api__items = {
  field_ref :
    spec__volume__projected__sources__downward_api__items__field_ref
    list;
      [@default []] [@yojson_drop_default ( = )]
  mode : string prop;
  path : string prop;
  resource_field_ref :
    spec__volume__projected__sources__downward_api__items__resource_field_ref
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__projected__sources__downward_api__items) ->
  ()

let yojson_of_spec__volume__projected__sources__downward_api__items =
  (function
   | {
       field_ref = v_field_ref;
       mode = v_mode;
       path = v_path;
       resource_field_ref = v_resource_field_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_resource_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__downward_api__items__resource_field_ref)
               v_resource_field_ref
           in
           let bnd = "resource_field_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         if [] = v_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__downward_api__items__field_ref)
               v_field_ref
           in
           let bnd = "field_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__downward_api__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__projected__sources__downward_api__items

[@@@deriving.end]

type spec__volume__projected__sources__downward_api = {
  items : spec__volume__projected__sources__downward_api__items list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__projected__sources__downward_api) -> ()

let yojson_of_spec__volume__projected__sources__downward_api =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__downward_api__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__downward_api ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__projected__sources__downward_api

[@@@deriving.end]

type spec__volume__projected__sources__config_map__items = {
  key : string prop;
  mode : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__projected__sources__config_map__items) -> ()

let yojson_of_spec__volume__projected__sources__config_map__items =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__config_map__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__projected__sources__config_map__items

[@@@deriving.end]

type spec__volume__projected__sources__config_map = {
  items : spec__volume__projected__sources__config_map__items list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__projected__sources__config_map) -> ()

let yojson_of_spec__volume__projected__sources__config_map =
  (function
   | { items = v_items; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__config_map__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources__config_map ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__projected__sources__config_map

[@@@deriving.end]

type spec__volume__projected__sources = {
  config_map : spec__volume__projected__sources__config_map list;
      [@default []] [@yojson_drop_default ( = )]
  downward_api : spec__volume__projected__sources__downward_api list;
      [@default []] [@yojson_drop_default ( = )]
  secret : spec__volume__projected__sources__secret list;
      [@default []] [@yojson_drop_default ( = )]
  service_account_token :
    spec__volume__projected__sources__service_account_token list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__projected__sources) -> ()

let yojson_of_spec__volume__projected__sources =
  (function
   | {
       config_map = v_config_map;
       downward_api = v_downward_api;
       secret = v_secret;
       service_account_token = v_service_account_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_service_account_token then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__service_account_token)
               v_service_account_token
           in
           let bnd = "service_account_token", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_secret then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__secret)
               v_secret
           in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_downward_api then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__downward_api)
               v_downward_api
           in
           let bnd = "downward_api", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config_map then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources__config_map)
               v_config_map
           in
           let bnd = "config_map", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__projected__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__projected__sources

[@@@deriving.end]

type spec__volume__projected = {
  default_mode : string prop;
  sources : spec__volume__projected__sources list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__projected) -> ()

let yojson_of_spec__volume__projected =
  (function
   | { default_mode = v_default_mode; sources = v_sources } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__projected__sources)
               v_sources
           in
           let bnd = "sources", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_default_mode in
         ("default_mode", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__projected -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__projected

[@@@deriving.end]

type spec__volume__photon_persistent_disk = {
  fs_type : string prop;
  pd_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__photon_persistent_disk) -> ()

let yojson_of_spec__volume__photon_persistent_disk =
  (function
   | { fs_type = v_fs_type; pd_id = v_pd_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pd_id in
         ("pd_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__photon_persistent_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__photon_persistent_disk

[@@@deriving.end]

type spec__volume__persistent_volume_claim = {
  claim_name : string prop;
  read_only : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__persistent_volume_claim) -> ()

let yojson_of_spec__volume__persistent_volume_claim =
  (function
   | { claim_name = v_claim_name; read_only = v_read_only } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_claim_name in
         ("claim_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__persistent_volume_claim ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__persistent_volume_claim

[@@@deriving.end]

type spec__volume__nfs = {
  path : string prop;
  read_only : bool prop;
  server : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__nfs) -> ()

let yojson_of_spec__volume__nfs =
  (function
   | { path = v_path; read_only = v_read_only; server = v_server } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__nfs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__nfs

[@@@deriving.end]

type spec__volume__local = { path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__local) -> ()

let yojson_of_spec__volume__local =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__local -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__local

[@@@deriving.end]

type spec__volume__iscsi = {
  fs_type : string prop;
  iqn : string prop;
  iscsi_interface : string prop;
  lun : float prop;
  read_only : bool prop;
  target_portal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__iscsi) -> ()

let yojson_of_spec__volume__iscsi =
  (function
   | {
       fs_type = v_fs_type;
       iqn = v_iqn;
       iscsi_interface = v_iscsi_interface;
       lun = v_lun;
       read_only = v_read_only;
       target_portal = v_target_portal;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_portal in
         ("target_portal", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_iscsi_interface
         in
         ("iscsi_interface", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iqn in
         ("iqn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__iscsi -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__iscsi

[@@@deriving.end]

type spec__volume__host_path = {
  path : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__host_path) -> ()

let yojson_of_spec__volume__host_path =
  (function
   | { path = v_path; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__host_path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__host_path

[@@@deriving.end]

type spec__volume__glusterfs = {
  endpoints_name : string prop;
  path : string prop;
  read_only : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__glusterfs) -> ()

let yojson_of_spec__volume__glusterfs =
  (function
   | {
       endpoints_name = v_endpoints_name;
       path = v_path;
       read_only = v_read_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_endpoints_name
         in
         ("endpoints_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__glusterfs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__glusterfs

[@@@deriving.end]

type spec__volume__git_repo = {
  directory : string prop;
  repository : string prop;
  revision : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__git_repo) -> ()

let yojson_of_spec__volume__git_repo =
  (function
   | {
       directory = v_directory;
       repository = v_repository;
       revision = v_revision;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_directory in
         ("directory", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__git_repo -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__git_repo

[@@@deriving.end]

type spec__volume__gce_persistent_disk = {
  fs_type : string prop;
  partition : float prop;
  pd_name : string prop;
  read_only : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__gce_persistent_disk) -> ()

let yojson_of_spec__volume__gce_persistent_disk =
  (function
   | {
       fs_type = v_fs_type;
       partition = v_partition;
       pd_name = v_pd_name;
       read_only = v_read_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pd_name in
         ("pd_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_partition in
         ("partition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__gce_persistent_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__gce_persistent_disk

[@@@deriving.end]

type spec__volume__flocker = {
  dataset_name : string prop;
  dataset_uuid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__flocker) -> ()

let yojson_of_spec__volume__flocker =
  (function
   | { dataset_name = v_dataset_name; dataset_uuid = v_dataset_uuid }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_uuid in
         ("dataset_uuid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_name in
         ("dataset_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__flocker -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__flocker

[@@@deriving.end]

type spec__volume__flex_volume__secret_ref = {
  name : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__flex_volume__secret_ref) -> ()

let yojson_of_spec__volume__flex_volume__secret_ref =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__flex_volume__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__flex_volume__secret_ref

[@@@deriving.end]

type spec__volume__flex_volume = {
  driver : string prop;
  fs_type : string prop;
  options : (string * string prop) list;
  read_only : bool prop;
  secret_ref : spec__volume__flex_volume__secret_ref list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__flex_volume) -> ()

let yojson_of_spec__volume__flex_volume =
  (function
   | {
       driver = v_driver;
       fs_type = v_fs_type;
       options = v_options;
       read_only = v_read_only;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_secret_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__flex_volume__secret_ref)
               v_secret_ref
           in
           let bnd = "secret_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_options
         in
         ("options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_driver in
         ("driver", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__flex_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__flex_volume

[@@@deriving.end]

type spec__volume__fc = {
  fs_type : string prop;
  lun : float prop;
  read_only : bool prop;
  target_ww_ns : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__fc) -> ()

let yojson_of_spec__volume__fc =
  (function
   | {
       fs_type = v_fs_type;
       lun = v_lun;
       read_only = v_read_only;
       target_ww_ns = v_target_ww_ns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_target_ww_ns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_target_ww_ns
           in
           let bnd = "target_ww_ns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__fc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__fc

[@@@deriving.end]

type spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions) ->
  ()

let yojson_of_spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions

[@@@deriving.end]

type spec__volume__ephemeral__volume_claim_template__spec__selector = {
  match_expressions :
    spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
  match_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__volume__ephemeral__volume_claim_template__spec__selector) ->
  ()

let yojson_of_spec__volume__ephemeral__volume_claim_template__spec__selector
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_labels = v_match_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_match_labels
         in
         ("match_labels", arg) :: bnds
       in
       let bnds =
         if [] = v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__ephemeral__volume_claim_template__spec__selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__ephemeral__volume_claim_template__spec__selector

[@@@deriving.end]

type spec__volume__ephemeral__volume_claim_template__spec__resources = {
  limits : (string * string prop) list;
  requests : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__volume__ephemeral__volume_claim_template__spec__resources) ->
  ()

let yojson_of_spec__volume__ephemeral__volume_claim_template__spec__resources
    =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_requests
         in
         ("requests", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_limits
         in
         ("limits", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__ephemeral__volume_claim_template__spec__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__ephemeral__volume_claim_template__spec__resources

[@@@deriving.end]

type spec__volume__ephemeral__volume_claim_template__spec = {
  access_modes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  resources :
    spec__volume__ephemeral__volume_claim_template__spec__resources
    list;
      [@default []] [@yojson_drop_default ( = )]
  selector :
    spec__volume__ephemeral__volume_claim_template__spec__selector
    list;
      [@default []] [@yojson_drop_default ( = )]
  storage_class_name : string prop;
  volume_mode : string prop;
  volume_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__ephemeral__volume_claim_template__spec) -> ()

let yojson_of_spec__volume__ephemeral__volume_claim_template__spec =
  (function
   | {
       access_modes = v_access_modes;
       resources = v_resources;
       selector = v_selector;
       storage_class_name = v_storage_class_name;
       volume_mode = v_volume_mode;
       volume_name = v_volume_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_mode in
         ("volume_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_class_name
         in
         ("storage_class_name", arg) :: bnds
       in
       let bnds =
         if [] = v_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__ephemeral__volume_claim_template__spec__selector)
               v_selector
           in
           let bnd = "selector", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__ephemeral__volume_claim_template__spec__resources)
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_access_modes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_access_modes
           in
           let bnd = "access_modes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__ephemeral__volume_claim_template__spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__ephemeral__volume_claim_template__spec

[@@@deriving.end]

type spec__volume__ephemeral__volume_claim_template__metadata = {
  annotations : (string * string prop) list;
  labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__ephemeral__volume_claim_template__metadata) ->
  ()

let yojson_of_spec__volume__ephemeral__volume_claim_template__metadata
    =
  (function
   | { annotations = v_annotations; labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_annotations
         in
         ("annotations", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__ephemeral__volume_claim_template__metadata ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__ephemeral__volume_claim_template__metadata

[@@@deriving.end]

type spec__volume__ephemeral__volume_claim_template = {
  metadata :
    spec__volume__ephemeral__volume_claim_template__metadata list;
      [@default []] [@yojson_drop_default ( = )]
  spec : spec__volume__ephemeral__volume_claim_template__spec list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__ephemeral__volume_claim_template) -> ()

let yojson_of_spec__volume__ephemeral__volume_claim_template =
  (function
   | { metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__ephemeral__volume_claim_template__spec)
               v_spec
           in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_metadata then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__ephemeral__volume_claim_template__metadata)
               v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__ephemeral__volume_claim_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__ephemeral__volume_claim_template

[@@@deriving.end]

type spec__volume__ephemeral = {
  volume_claim_template :
    spec__volume__ephemeral__volume_claim_template list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__ephemeral) -> ()

let yojson_of_spec__volume__ephemeral =
  (function
   | { volume_claim_template = v_volume_claim_template } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_volume_claim_template then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__ephemeral__volume_claim_template)
               v_volume_claim_template
           in
           let bnd = "volume_claim_template", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__ephemeral -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__ephemeral

[@@@deriving.end]

type spec__volume__empty_dir = {
  medium : string prop;
  size_limit : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__empty_dir) -> ()

let yojson_of_spec__volume__empty_dir =
  (function
   | { medium = v_medium; size_limit = v_size_limit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size_limit in
         ("size_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_medium in
         ("medium", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__empty_dir -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__empty_dir

[@@@deriving.end]

type spec__volume__downward_api__items__resource_field_ref = {
  container_name : string prop;
  divisor : string prop;
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__volume__downward_api__items__resource_field_ref) ->
  ()

let yojson_of_spec__volume__downward_api__items__resource_field_ref =
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
         let arg = yojson_of_prop yojson_of_string v_divisor in
         ("divisor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__downward_api__items__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__volume__downward_api__items__resource_field_ref

[@@@deriving.end]

type spec__volume__downward_api__items__field_ref = {
  api_version : string prop;
  field_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__downward_api__items__field_ref) -> ()

let yojson_of_spec__volume__downward_api__items__field_ref =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field_path in
         ("field_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__downward_api__items__field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__downward_api__items__field_ref

[@@@deriving.end]

type spec__volume__downward_api__items = {
  field_ref : spec__volume__downward_api__items__field_ref list;
      [@default []] [@yojson_drop_default ( = )]
  mode : string prop;
  path : string prop;
  resource_field_ref :
    spec__volume__downward_api__items__resource_field_ref list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__downward_api__items) -> ()

let yojson_of_spec__volume__downward_api__items =
  (function
   | {
       field_ref = v_field_ref;
       mode = v_mode;
       path = v_path;
       resource_field_ref = v_resource_field_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_resource_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__downward_api__items__resource_field_ref)
               v_resource_field_ref
           in
           let bnd = "resource_field_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         if [] = v_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__downward_api__items__field_ref)
               v_field_ref
           in
           let bnd = "field_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__downward_api__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__downward_api__items

[@@@deriving.end]

type spec__volume__downward_api = {
  default_mode : string prop;
  items : spec__volume__downward_api__items list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__downward_api) -> ()

let yojson_of_spec__volume__downward_api =
  (function
   | { default_mode = v_default_mode; items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__downward_api__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_default_mode in
         ("default_mode", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__downward_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__downward_api

[@@@deriving.end]

type spec__volume__csi__node_publish_secret_ref = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__csi__node_publish_secret_ref) -> ()

let yojson_of_spec__volume__csi__node_publish_secret_ref =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__csi__node_publish_secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__csi__node_publish_secret_ref

[@@@deriving.end]

type spec__volume__csi = {
  driver : string prop;
  fs_type : string prop;
  node_publish_secret_ref :
    spec__volume__csi__node_publish_secret_ref list;
      [@default []] [@yojson_drop_default ( = )]
  read_only : bool prop;
  volume_attributes : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__csi) -> ()

let yojson_of_spec__volume__csi =
  (function
   | {
       driver = v_driver;
       fs_type = v_fs_type;
       node_publish_secret_ref = v_node_publish_secret_ref;
       read_only = v_read_only;
       volume_attributes = v_volume_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_volume_attributes
         in
         ("volume_attributes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         if [] = v_node_publish_secret_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__csi__node_publish_secret_ref)
               v_node_publish_secret_ref
           in
           let bnd = "node_publish_secret_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_driver in
         ("driver", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__csi -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__csi

[@@@deriving.end]

type spec__volume__config_map__items = {
  key : string prop;
  mode : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__config_map__items) -> ()

let yojson_of_spec__volume__config_map__items =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__config_map__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__config_map__items

[@@@deriving.end]

type spec__volume__config_map = {
  default_mode : string prop;
  items : spec__volume__config_map__items list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__config_map) -> ()

let yojson_of_spec__volume__config_map =
  (function
   | {
       default_mode = v_default_mode;
       items = v_items;
       name = v_name;
       optional = v_optional;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__config_map__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_default_mode in
         ("default_mode", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__config_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__config_map

[@@@deriving.end]

type spec__volume__cinder = {
  fs_type : string prop;
  read_only : bool prop;
  volume_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__cinder) -> ()

let yojson_of_spec__volume__cinder =
  (function
   | {
       fs_type = v_fs_type;
       read_only = v_read_only;
       volume_id = v_volume_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__cinder -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__cinder

[@@@deriving.end]

type spec__volume__ceph_fs__secret_ref = {
  name : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__ceph_fs__secret_ref) -> ()

let yojson_of_spec__volume__ceph_fs__secret_ref =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__ceph_fs__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__ceph_fs__secret_ref

[@@@deriving.end]

type spec__volume__ceph_fs = {
  monitors : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  read_only : bool prop;
  secret_file : string prop;
  secret_ref : spec__volume__ceph_fs__secret_ref list;
      [@default []] [@yojson_drop_default ( = )]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__ceph_fs) -> ()

let yojson_of_spec__volume__ceph_fs =
  (function
   | {
       monitors = v_monitors;
       path = v_path;
       read_only = v_read_only;
       secret_file = v_secret_file;
       secret_ref = v_secret_ref;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         if [] = v_secret_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__ceph_fs__secret_ref)
               v_secret_ref
           in
           let bnd = "secret_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_file in
         ("secret_file", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_monitors then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_monitors
           in
           let bnd = "monitors", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume__ceph_fs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__ceph_fs

[@@@deriving.end]

type spec__volume__azure_file = {
  read_only : bool prop;
  secret_name : string prop;
  secret_namespace : string prop;
  share_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__azure_file) -> ()

let yojson_of_spec__volume__azure_file =
  (function
   | {
       read_only = v_read_only;
       secret_name = v_secret_name;
       secret_namespace = v_secret_namespace;
       share_name = v_share_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_name in
         ("share_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_namespace
         in
         ("secret_namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__azure_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__azure_file

[@@@deriving.end]

type spec__volume__azure_disk = {
  caching_mode : string prop;
  data_disk_uri : string prop;
  disk_name : string prop;
  fs_type : string prop;
  kind : string prop;
  read_only : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__azure_disk) -> ()

let yojson_of_spec__volume__azure_disk =
  (function
   | {
       caching_mode = v_caching_mode;
       data_disk_uri = v_data_disk_uri;
       disk_name = v_disk_name;
       fs_type = v_fs_type;
       kind = v_kind;
       read_only = v_read_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_name in
         ("disk_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_disk_uri in
         ("data_disk_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching_mode in
         ("caching_mode", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__azure_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__azure_disk

[@@@deriving.end]

type spec__volume__aws_elastic_block_store = {
  fs_type : string prop;
  partition : float prop;
  read_only : bool prop;
  volume_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume__aws_elastic_block_store) -> ()

let yojson_of_spec__volume__aws_elastic_block_store =
  (function
   | {
       fs_type = v_fs_type;
       partition = v_partition;
       read_only = v_read_only;
       volume_id = v_volume_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_partition in
         ("partition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_type in
         ("fs_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__volume__aws_elastic_block_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume__aws_elastic_block_store

[@@@deriving.end]

type spec__volume = {
  aws_elastic_block_store :
    spec__volume__aws_elastic_block_store list;
      [@default []] [@yojson_drop_default ( = )]
  azure_disk : spec__volume__azure_disk list;
      [@default []] [@yojson_drop_default ( = )]
  azure_file : spec__volume__azure_file list;
      [@default []] [@yojson_drop_default ( = )]
  ceph_fs : spec__volume__ceph_fs list;
      [@default []] [@yojson_drop_default ( = )]
  cinder : spec__volume__cinder list;
      [@default []] [@yojson_drop_default ( = )]
  config_map : spec__volume__config_map list;
      [@default []] [@yojson_drop_default ( = )]
  csi : spec__volume__csi list;
      [@default []] [@yojson_drop_default ( = )]
  downward_api : spec__volume__downward_api list;
      [@default []] [@yojson_drop_default ( = )]
  empty_dir : spec__volume__empty_dir list;
      [@default []] [@yojson_drop_default ( = )]
  ephemeral : spec__volume__ephemeral list;
      [@default []] [@yojson_drop_default ( = )]
  fc : spec__volume__fc list;
      [@default []] [@yojson_drop_default ( = )]
  flex_volume : spec__volume__flex_volume list;
      [@default []] [@yojson_drop_default ( = )]
  flocker : spec__volume__flocker list;
      [@default []] [@yojson_drop_default ( = )]
  gce_persistent_disk : spec__volume__gce_persistent_disk list;
      [@default []] [@yojson_drop_default ( = )]
  git_repo : spec__volume__git_repo list;
      [@default []] [@yojson_drop_default ( = )]
  glusterfs : spec__volume__glusterfs list;
      [@default []] [@yojson_drop_default ( = )]
  host_path : spec__volume__host_path list;
      [@default []] [@yojson_drop_default ( = )]
  iscsi : spec__volume__iscsi list;
      [@default []] [@yojson_drop_default ( = )]
  local : spec__volume__local list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
  nfs : spec__volume__nfs list;
      [@default []] [@yojson_drop_default ( = )]
  persistent_volume_claim :
    spec__volume__persistent_volume_claim list;
      [@default []] [@yojson_drop_default ( = )]
  photon_persistent_disk : spec__volume__photon_persistent_disk list;
      [@default []] [@yojson_drop_default ( = )]
  projected : spec__volume__projected list;
      [@default []] [@yojson_drop_default ( = )]
  quobyte : spec__volume__quobyte list;
      [@default []] [@yojson_drop_default ( = )]
  rbd : spec__volume__rbd list;
      [@default []] [@yojson_drop_default ( = )]
  secret : spec__volume__secret list;
      [@default []] [@yojson_drop_default ( = )]
  vsphere_volume : spec__volume__vsphere_volume list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__volume) -> ()

let yojson_of_spec__volume =
  (function
   | {
       aws_elastic_block_store = v_aws_elastic_block_store;
       azure_disk = v_azure_disk;
       azure_file = v_azure_file;
       ceph_fs = v_ceph_fs;
       cinder = v_cinder;
       config_map = v_config_map;
       csi = v_csi;
       downward_api = v_downward_api;
       empty_dir = v_empty_dir;
       ephemeral = v_ephemeral;
       fc = v_fc;
       flex_volume = v_flex_volume;
       flocker = v_flocker;
       gce_persistent_disk = v_gce_persistent_disk;
       git_repo = v_git_repo;
       glusterfs = v_glusterfs;
       host_path = v_host_path;
       iscsi = v_iscsi;
       local = v_local;
       name = v_name;
       nfs = v_nfs;
       persistent_volume_claim = v_persistent_volume_claim;
       photon_persistent_disk = v_photon_persistent_disk;
       projected = v_projected;
       quobyte = v_quobyte;
       rbd = v_rbd;
       secret = v_secret;
       vsphere_volume = v_vsphere_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_vsphere_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__vsphere_volume)
               v_vsphere_volume
           in
           let bnd = "vsphere_volume", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_secret then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__secret) v_secret
           in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_rbd then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__rbd) v_rbd
           in
           let bnd = "rbd", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_quobyte then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__quobyte)
               v_quobyte
           in
           let bnd = "quobyte", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_projected then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__projected)
               v_projected
           in
           let bnd = "projected", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_photon_persistent_disk then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__photon_persistent_disk)
               v_photon_persistent_disk
           in
           let bnd = "photon_persistent_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_persistent_volume_claim then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__persistent_volume_claim)
               v_persistent_volume_claim
           in
           let bnd = "persistent_volume_claim", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_nfs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__nfs) v_nfs
           in
           let bnd = "nfs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_local then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__local) v_local
           in
           let bnd = "local", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_iscsi then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__iscsi) v_iscsi
           in
           let bnd = "iscsi", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_host_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__host_path)
               v_host_path
           in
           let bnd = "host_path", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_glusterfs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__glusterfs)
               v_glusterfs
           in
           let bnd = "glusterfs", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_git_repo then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__git_repo)
               v_git_repo
           in
           let bnd = "git_repo", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_gce_persistent_disk then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__gce_persistent_disk)
               v_gce_persistent_disk
           in
           let bnd = "gce_persistent_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_flocker then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__flocker)
               v_flocker
           in
           let bnd = "flocker", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_flex_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__flex_volume)
               v_flex_volume
           in
           let bnd = "flex_volume", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__fc) v_fc
           in
           let bnd = "fc", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ephemeral then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__ephemeral)
               v_ephemeral
           in
           let bnd = "ephemeral", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_empty_dir then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__empty_dir)
               v_empty_dir
           in
           let bnd = "empty_dir", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_downward_api then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__downward_api)
               v_downward_api
           in
           let bnd = "downward_api", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_csi then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__csi) v_csi
           in
           let bnd = "csi", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config_map then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__config_map)
               v_config_map
           in
           let bnd = "config_map", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cinder then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__cinder) v_cinder
           in
           let bnd = "cinder", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ceph_fs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__ceph_fs)
               v_ceph_fs
           in
           let bnd = "ceph_fs", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_azure_file then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__azure_file)
               v_azure_file
           in
           let bnd = "azure_file", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_azure_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume__azure_disk)
               v_azure_disk
           in
           let bnd = "azure_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_aws_elastic_block_store then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__volume__aws_elastic_block_store)
               v_aws_elastic_block_store
           in
           let bnd = "aws_elastic_block_store", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__volume

[@@@deriving.end]

type spec__topology_spread_constraint__label_selector__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__topology_spread_constraint__label_selector__match_expressions) ->
  ()

let yojson_of_spec__topology_spread_constraint__label_selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__topology_spread_constraint__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__topology_spread_constraint__label_selector__match_expressions

[@@@deriving.end]

type spec__topology_spread_constraint__label_selector = {
  match_expressions :
    spec__topology_spread_constraint__label_selector__match_expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
  match_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__topology_spread_constraint__label_selector) -> ()

let yojson_of_spec__topology_spread_constraint__label_selector =
  (function
   | {
       match_expressions = v_match_expressions;
       match_labels = v_match_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_match_labels
         in
         ("match_labels", arg) :: bnds
       in
       let bnds =
         if [] = v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__topology_spread_constraint__label_selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__topology_spread_constraint__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__topology_spread_constraint__label_selector

[@@@deriving.end]

type spec__topology_spread_constraint = {
  label_selector :
    spec__topology_spread_constraint__label_selector list;
      [@default []] [@yojson_drop_default ( = )]
  match_label_keys : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  max_skew : float prop;
  min_domains : float prop;
  node_affinity_policy : string prop;
  node_taints_policy : string prop;
  topology_key : string prop;
  when_unsatisfiable : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__topology_spread_constraint) -> ()

let yojson_of_spec__topology_spread_constraint =
  (function
   | {
       label_selector = v_label_selector;
       match_label_keys = v_match_label_keys;
       max_skew = v_max_skew;
       min_domains = v_min_domains;
       node_affinity_policy = v_node_affinity_policy;
       node_taints_policy = v_node_taints_policy;
       topology_key = v_topology_key;
       when_unsatisfiable = v_when_unsatisfiable;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_when_unsatisfiable
         in
         ("when_unsatisfiable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_taints_policy
         in
         ("node_taints_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_affinity_policy
         in
         ("node_affinity_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_domains in
         ("min_domains", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_skew in
         ("max_skew", arg) :: bnds
       in
       let bnds =
         if [] = v_match_label_keys then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_label_keys
           in
           let bnd = "match_label_keys", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_label_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__topology_spread_constraint__label_selector)
               v_label_selector
           in
           let bnd = "label_selector", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__topology_spread_constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__topology_spread_constraint

[@@@deriving.end]

type spec__toleration = {
  effect : string prop;
  key : string prop;
  operator : string prop;
  toleration_seconds : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__toleration) -> ()

let yojson_of_spec__toleration =
  (function
   | {
       effect = v_effect;
       key = v_key;
       operator = v_operator;
       toleration_seconds = v_toleration_seconds;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_toleration_seconds
         in
         ("toleration_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : spec__toleration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__toleration

[@@@deriving.end]

type spec__security_context__windows_options = {
  gmsa_credential_spec : string prop;
  gmsa_credential_spec_name : string prop;
  host_process : bool prop;
  run_as_username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__security_context__windows_options) -> ()

let yojson_of_spec__security_context__windows_options =
  (function
   | {
       gmsa_credential_spec = v_gmsa_credential_spec;
       gmsa_credential_spec_name = v_gmsa_credential_spec_name;
       host_process = v_host_process;
       run_as_username = v_run_as_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_run_as_username
         in
         ("run_as_username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_host_process in
         ("host_process", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_gmsa_credential_spec_name
         in
         ("gmsa_credential_spec_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gmsa_credential_spec
         in
         ("gmsa_credential_spec", arg) :: bnds
       in
       `Assoc bnds
    : spec__security_context__windows_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__security_context__windows_options

[@@@deriving.end]

type spec__security_context__sysctl = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__security_context__sysctl) -> ()

let yojson_of_spec__security_context__sysctl =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__security_context__sysctl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__security_context__sysctl

[@@@deriving.end]

type spec__security_context__seccomp_profile = {
  localhost_profile : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__security_context__seccomp_profile) -> ()

let yojson_of_spec__security_context__seccomp_profile =
  (function
   | { localhost_profile = v_localhost_profile; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_localhost_profile
         in
         ("localhost_profile", arg) :: bnds
       in
       `Assoc bnds
    : spec__security_context__seccomp_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__security_context__seccomp_profile

[@@@deriving.end]

type spec__security_context__se_linux_options = {
  level : string prop;
  role : string prop;
  type_ : string prop; [@key "type"]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__security_context__se_linux_options) -> ()

let yojson_of_spec__security_context__se_linux_options =
  (function
   | {
       level = v_level;
       role = v_role;
       type_ = v_type_;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_level in
         ("level", arg) :: bnds
       in
       `Assoc bnds
    : spec__security_context__se_linux_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__security_context__se_linux_options

[@@@deriving.end]

type spec__security_context = {
  fs_group : string prop;
  fs_group_change_policy : string prop;
  run_as_group : string prop;
  run_as_non_root : bool prop;
  run_as_user : string prop;
  se_linux_options : spec__security_context__se_linux_options list;
      [@default []] [@yojson_drop_default ( = )]
  seccomp_profile : spec__security_context__seccomp_profile list;
      [@default []] [@yojson_drop_default ( = )]
  supplemental_groups : float prop list;
      [@default []] [@yojson_drop_default ( = )]
  sysctl : spec__security_context__sysctl list;
      [@default []] [@yojson_drop_default ( = )]
  windows_options : spec__security_context__windows_options list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__security_context) -> ()

let yojson_of_spec__security_context =
  (function
   | {
       fs_group = v_fs_group;
       fs_group_change_policy = v_fs_group_change_policy;
       run_as_group = v_run_as_group;
       run_as_non_root = v_run_as_non_root;
       run_as_user = v_run_as_user;
       se_linux_options = v_se_linux_options;
       seccomp_profile = v_seccomp_profile;
       supplemental_groups = v_supplemental_groups;
       sysctl = v_sysctl;
       windows_options = v_windows_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_windows_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__security_context__windows_options)
               v_windows_options
           in
           let bnd = "windows_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_sysctl then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__security_context__sysctl)
               v_sysctl
           in
           let bnd = "sysctl", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_supplemental_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_supplemental_groups
           in
           let bnd = "supplemental_groups", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_seccomp_profile then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__security_context__seccomp_profile)
               v_seccomp_profile
           in
           let bnd = "seccomp_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_se_linux_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__security_context__se_linux_options)
               v_se_linux_options
           in
           let bnd = "se_linux_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_as_user in
         ("run_as_user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_run_as_non_root in
         ("run_as_non_root", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_as_group in
         ("run_as_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_fs_group_change_policy
         in
         ("fs_group_change_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fs_group in
         ("fs_group", arg) :: bnds
       in
       `Assoc bnds
    : spec__security_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__security_context

[@@@deriving.end]

type spec__readiness_gate = { condition_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__readiness_gate) -> ()

let yojson_of_spec__readiness_gate =
  (function
   | { condition_type = v_condition_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_condition_type
         in
         ("condition_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__readiness_gate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__readiness_gate

[@@@deriving.end]

type spec__os = { name : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : spec__os) -> ()

let yojson_of_spec__os =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__os -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__os

[@@@deriving.end]

type spec__init_container__volume_mount = {
  mount_path : string prop;
  mount_propagation : string prop;
  name : string prop;
  read_only : bool prop;
  sub_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__volume_mount) -> ()

let yojson_of_spec__init_container__volume_mount =
  (function
   | {
       mount_path = v_mount_path;
       mount_propagation = v_mount_propagation;
       name = v_name;
       read_only = v_read_only;
       sub_path = v_sub_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sub_path in
         ("sub_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mount_propagation
         in
         ("mount_propagation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__volume_mount ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__volume_mount

[@@@deriving.end]

type spec__init_container__startup_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__startup_probe__tcp_socket) -> ()

let yojson_of_spec__init_container__startup_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__startup_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__startup_probe__tcp_socket

[@@@deriving.end]

type spec__init_container__startup_probe__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__startup_probe__http_get__http_header) ->
  ()

let yojson_of_spec__init_container__startup_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__startup_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__startup_probe__http_get__http_header

[@@@deriving.end]

type spec__init_container__startup_probe__http_get = {
  host : string prop;
  http_header :
    spec__init_container__startup_probe__http_get__http_header list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__startup_probe__http_get) -> ()

let yojson_of_spec__init_container__startup_probe__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__startup_probe__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__startup_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__startup_probe__http_get

[@@@deriving.end]

type spec__init_container__startup_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__startup_probe__grpc) -> ()

let yojson_of_spec__init_container__startup_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__startup_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__startup_probe__grpc

[@@@deriving.end]

type spec__init_container__startup_probe__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__startup_probe__exec) -> ()

let yojson_of_spec__init_container__startup_probe__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__startup_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__startup_probe__exec

[@@@deriving.end]

type spec__init_container__startup_probe = {
  exec : spec__init_container__startup_probe__exec list;
      [@default []] [@yojson_drop_default ( = )]
  failure_threshold : float prop;
  grpc : spec__init_container__startup_probe__grpc list;
      [@default []] [@yojson_drop_default ( = )]
  http_get : spec__init_container__startup_probe__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  success_threshold : float prop;
  tcp_socket : spec__init_container__startup_probe__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__startup_probe) -> ()

let yojson_of_spec__init_container__startup_probe =
  (function
   | {
       exec = v_exec;
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       tcp_socket = v_tcp_socket;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__startup_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_threshold
         in
         ("success_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__startup_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_grpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__startup_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__startup_probe__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__startup_probe

[@@@deriving.end]

type spec__init_container__security_context__seccomp_profile = {
  localhost_profile : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__security_context__seccomp_profile) ->
  ()

let yojson_of_spec__init_container__security_context__seccomp_profile
    =
  (function
   | { localhost_profile = v_localhost_profile; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_localhost_profile
         in
         ("localhost_profile", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__security_context__seccomp_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__security_context__seccomp_profile

[@@@deriving.end]

type spec__init_container__security_context__se_linux_options = {
  level : string prop;
  role : string prop;
  type_ : string prop; [@key "type"]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__security_context__se_linux_options) ->
  ()

let yojson_of_spec__init_container__security_context__se_linux_options
    =
  (function
   | {
       level = v_level;
       role = v_role;
       type_ = v_type_;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_level in
         ("level", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__security_context__se_linux_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__security_context__se_linux_options

[@@@deriving.end]

type spec__init_container__security_context__capabilities = {
  add : string prop list; [@default []] [@yojson_drop_default ( = )]
  drop : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__security_context__capabilities) -> ()

let yojson_of_spec__init_container__security_context__capabilities =
  (function
   | { add = v_add; drop = v_drop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_drop then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_drop
           in
           let bnd = "drop", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_add then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string)) v_add
           in
           let bnd = "add", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__security_context__capabilities ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__security_context__capabilities

[@@@deriving.end]

type spec__init_container__security_context = {
  allow_privilege_escalation : bool prop;
  capabilities :
    spec__init_container__security_context__capabilities list;
      [@default []] [@yojson_drop_default ( = )]
  privileged : bool prop;
  read_only_root_filesystem : bool prop;
  run_as_group : string prop;
  run_as_non_root : bool prop;
  run_as_user : string prop;
  se_linux_options :
    spec__init_container__security_context__se_linux_options list;
      [@default []] [@yojson_drop_default ( = )]
  seccomp_profile :
    spec__init_container__security_context__seccomp_profile list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__security_context) -> ()

let yojson_of_spec__init_container__security_context =
  (function
   | {
       allow_privilege_escalation = v_allow_privilege_escalation;
       capabilities = v_capabilities;
       privileged = v_privileged;
       read_only_root_filesystem = v_read_only_root_filesystem;
       run_as_group = v_run_as_group;
       run_as_non_root = v_run_as_non_root;
       run_as_user = v_run_as_user;
       se_linux_options = v_se_linux_options;
       seccomp_profile = v_seccomp_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_seccomp_profile then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__security_context__seccomp_profile)
               v_seccomp_profile
           in
           let bnd = "seccomp_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_se_linux_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__security_context__se_linux_options)
               v_se_linux_options
           in
           let bnd = "se_linux_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_as_user in
         ("run_as_user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_run_as_non_root in
         ("run_as_non_root", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_as_group in
         ("run_as_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_read_only_root_filesystem
         in
         ("read_only_root_filesystem", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_privileged in
         ("privileged", arg) :: bnds
       in
       let bnds =
         if [] = v_capabilities then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__security_context__capabilities)
               v_capabilities
           in
           let bnd = "capabilities", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_privilege_escalation
         in
         ("allow_privilege_escalation", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__security_context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__security_context

[@@@deriving.end]

type spec__init_container__resources = {
  limits : (string * string prop) list;
  requests : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__resources) -> ()

let yojson_of_spec__init_container__resources =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_requests
         in
         ("requests", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_limits
         in
         ("limits", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__resources

[@@@deriving.end]

type spec__init_container__readiness_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__readiness_probe__tcp_socket) -> ()

let yojson_of_spec__init_container__readiness_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__readiness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__readiness_probe__tcp_socket

[@@@deriving.end]

type spec__init_container__readiness_probe__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__init_container__readiness_probe__http_get__http_header) ->
  ()

let yojson_of_spec__init_container__readiness_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__readiness_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__readiness_probe__http_get__http_header

[@@@deriving.end]

type spec__init_container__readiness_probe__http_get = {
  host : string prop;
  http_header :
    spec__init_container__readiness_probe__http_get__http_header list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__readiness_probe__http_get) -> ()

let yojson_of_spec__init_container__readiness_probe__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__readiness_probe__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__readiness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__readiness_probe__http_get

[@@@deriving.end]

type spec__init_container__readiness_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__readiness_probe__grpc) -> ()

let yojson_of_spec__init_container__readiness_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__readiness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__readiness_probe__grpc

[@@@deriving.end]

type spec__init_container__readiness_probe__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__readiness_probe__exec) -> ()

let yojson_of_spec__init_container__readiness_probe__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__readiness_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__readiness_probe__exec

[@@@deriving.end]

type spec__init_container__readiness_probe = {
  exec : spec__init_container__readiness_probe__exec list;
      [@default []] [@yojson_drop_default ( = )]
  failure_threshold : float prop;
  grpc : spec__init_container__readiness_probe__grpc list;
      [@default []] [@yojson_drop_default ( = )]
  http_get : spec__init_container__readiness_probe__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  success_threshold : float prop;
  tcp_socket :
    spec__init_container__readiness_probe__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__readiness_probe) -> ()

let yojson_of_spec__init_container__readiness_probe =
  (function
   | {
       exec = v_exec;
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       tcp_socket = v_tcp_socket;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__readiness_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_threshold
         in
         ("success_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__readiness_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_grpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__readiness_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__readiness_probe__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__readiness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__readiness_probe

[@@@deriving.end]

type spec__init_container__port = {
  container_port : float prop;
  host_ip : string prop;
  host_port : float prop;
  name : string prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__port) -> ()

let yojson_of_spec__init_container__port =
  (function
   | {
       container_port = v_container_port;
       host_ip = v_host_ip;
       host_port = v_host_port;
       name = v_name;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_host_port in
         ("host_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_ip in
         ("host_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_container_port in
         ("container_port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__port

[@@@deriving.end]

type spec__init_container__liveness_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__liveness_probe__tcp_socket) -> ()

let yojson_of_spec__init_container__liveness_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__liveness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__liveness_probe__tcp_socket

[@@@deriving.end]

type spec__init_container__liveness_probe__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__init_container__liveness_probe__http_get__http_header) ->
  ()

let yojson_of_spec__init_container__liveness_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__liveness_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__liveness_probe__http_get__http_header

[@@@deriving.end]

type spec__init_container__liveness_probe__http_get = {
  host : string prop;
  http_header :
    spec__init_container__liveness_probe__http_get__http_header list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__liveness_probe__http_get) -> ()

let yojson_of_spec__init_container__liveness_probe__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__liveness_probe__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__liveness_probe__http_get

[@@@deriving.end]

type spec__init_container__liveness_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__liveness_probe__grpc) -> ()

let yojson_of_spec__init_container__liveness_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__liveness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__liveness_probe__grpc

[@@@deriving.end]

type spec__init_container__liveness_probe__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__liveness_probe__exec) -> ()

let yojson_of_spec__init_container__liveness_probe__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__liveness_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__liveness_probe__exec

[@@@deriving.end]

type spec__init_container__liveness_probe = {
  exec : spec__init_container__liveness_probe__exec list;
      [@default []] [@yojson_drop_default ( = )]
  failure_threshold : float prop;
  grpc : spec__init_container__liveness_probe__grpc list;
      [@default []] [@yojson_drop_default ( = )]
  http_get : spec__init_container__liveness_probe__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  success_threshold : float prop;
  tcp_socket : spec__init_container__liveness_probe__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__liveness_probe) -> ()

let yojson_of_spec__init_container__liveness_probe =
  (function
   | {
       exec = v_exec;
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       tcp_socket = v_tcp_socket;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__liveness_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_threshold
         in
         ("success_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__liveness_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_grpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__liveness_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__liveness_probe__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__liveness_probe

[@@@deriving.end]

type spec__init_container__lifecycle__pre_stop__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__lifecycle__pre_stop__tcp_socket) ->
  ()

let yojson_of_spec__init_container__lifecycle__pre_stop__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__pre_stop__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__lifecycle__pre_stop__tcp_socket

[@@@deriving.end]

type spec__init_container__lifecycle__pre_stop__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__init_container__lifecycle__pre_stop__http_get__http_header) ->
  ()

let yojson_of_spec__init_container__lifecycle__pre_stop__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__pre_stop__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__lifecycle__pre_stop__http_get__http_header

[@@@deriving.end]

type spec__init_container__lifecycle__pre_stop__http_get = {
  host : string prop;
  http_header :
    spec__init_container__lifecycle__pre_stop__http_get__http_header
    list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__lifecycle__pre_stop__http_get) -> ()

let yojson_of_spec__init_container__lifecycle__pre_stop__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__pre_stop__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__pre_stop__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__lifecycle__pre_stop__http_get

[@@@deriving.end]

type spec__init_container__lifecycle__pre_stop__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__lifecycle__pre_stop__exec) -> ()

let yojson_of_spec__init_container__lifecycle__pre_stop__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__pre_stop__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__lifecycle__pre_stop__exec

[@@@deriving.end]

type spec__init_container__lifecycle__pre_stop = {
  exec : spec__init_container__lifecycle__pre_stop__exec list;
      [@default []] [@yojson_drop_default ( = )]
  http_get :
    spec__init_container__lifecycle__pre_stop__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  tcp_socket :
    spec__init_container__lifecycle__pre_stop__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__lifecycle__pre_stop) -> ()

let yojson_of_spec__init_container__lifecycle__pre_stop =
  (function
   | {
       exec = v_exec;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__pre_stop__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__pre_stop__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__pre_stop__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__pre_stop ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__lifecycle__pre_stop

[@@@deriving.end]

type spec__init_container__lifecycle__post_start__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__lifecycle__post_start__tcp_socket) ->
  ()

let yojson_of_spec__init_container__lifecycle__post_start__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__post_start__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__lifecycle__post_start__tcp_socket

[@@@deriving.end]

type spec__init_container__lifecycle__post_start__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__init_container__lifecycle__post_start__http_get__http_header) ->
  ()

let yojson_of_spec__init_container__lifecycle__post_start__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__post_start__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__lifecycle__post_start__http_get__http_header

[@@@deriving.end]

type spec__init_container__lifecycle__post_start__http_get = {
  host : string prop;
  http_header :
    spec__init_container__lifecycle__post_start__http_get__http_header
    list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__lifecycle__post_start__http_get) ->
  ()

let yojson_of_spec__init_container__lifecycle__post_start__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__post_start__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__post_start__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__lifecycle__post_start__http_get

[@@@deriving.end]

type spec__init_container__lifecycle__post_start__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__lifecycle__post_start__exec) -> ()

let yojson_of_spec__init_container__lifecycle__post_start__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__post_start__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__lifecycle__post_start__exec

[@@@deriving.end]

type spec__init_container__lifecycle__post_start = {
  exec : spec__init_container__lifecycle__post_start__exec list;
      [@default []] [@yojson_drop_default ( = )]
  http_get :
    spec__init_container__lifecycle__post_start__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  tcp_socket :
    spec__init_container__lifecycle__post_start__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__lifecycle__post_start) -> ()

let yojson_of_spec__init_container__lifecycle__post_start =
  (function
   | {
       exec = v_exec;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__post_start__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__post_start__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__post_start__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle__post_start ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__lifecycle__post_start

[@@@deriving.end]

type spec__init_container__lifecycle = {
  post_start : spec__init_container__lifecycle__post_start list;
      [@default []] [@yojson_drop_default ( = )]
  pre_stop : spec__init_container__lifecycle__pre_stop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__lifecycle) -> ()

let yojson_of_spec__init_container__lifecycle =
  (function
   | { post_start = v_post_start; pre_stop = v_pre_stop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_pre_stop then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__pre_stop)
               v_pre_stop
           in
           let bnd = "pre_stop", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_post_start then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle__post_start)
               v_post_start
           in
           let bnd = "post_start", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__lifecycle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__lifecycle

[@@@deriving.end]

type spec__init_container__env_from__secret_ref = {
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__env_from__secret_ref) -> ()

let yojson_of_spec__init_container__env_from__secret_ref =
  (function
   | { name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__env_from__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__env_from__secret_ref

[@@@deriving.end]

type spec__init_container__env_from__config_map_ref = {
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__env_from__config_map_ref) -> ()

let yojson_of_spec__init_container__env_from__config_map_ref =
  (function
   | { name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__env_from__config_map_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__env_from__config_map_ref

[@@@deriving.end]

type spec__init_container__env_from = {
  config_map_ref :
    spec__init_container__env_from__config_map_ref list;
      [@default []] [@yojson_drop_default ( = )]
  prefix : string prop;
  secret_ref : spec__init_container__env_from__secret_ref list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__env_from) -> ()

let yojson_of_spec__init_container__env_from =
  (function
   | {
       config_map_ref = v_config_map_ref;
       prefix = v_prefix;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_secret_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__env_from__secret_ref)
               v_secret_ref
           in
           let bnd = "secret_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         if [] = v_config_map_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__env_from__config_map_ref)
               v_config_map_ref
           in
           let bnd = "config_map_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__env_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__env_from

[@@@deriving.end]

type spec__init_container__env__value_from__secret_key_ref = {
  key : string prop;
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__env__value_from__secret_key_ref) ->
  ()

let yojson_of_spec__init_container__env__value_from__secret_key_ref =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__env__value_from__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__env__value_from__secret_key_ref

[@@@deriving.end]

type spec__init_container__env__value_from__resource_field_ref = {
  container_name : string prop;
  divisor : string prop;
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__env__value_from__resource_field_ref) ->
  ()

let yojson_of_spec__init_container__env__value_from__resource_field_ref
    =
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
         let arg = yojson_of_prop yojson_of_string v_divisor in
         ("divisor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__env__value_from__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__env__value_from__resource_field_ref

[@@@deriving.end]

type spec__init_container__env__value_from__field_ref = {
  api_version : string prop;
  field_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__env__value_from__field_ref) -> ()

let yojson_of_spec__init_container__env__value_from__field_ref =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field_path in
         ("field_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__env__value_from__field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__env__value_from__field_ref

[@@@deriving.end]

type spec__init_container__env__value_from__config_map_key_ref = {
  key : string prop;
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__init_container__env__value_from__config_map_key_ref) ->
  ()

let yojson_of_spec__init_container__env__value_from__config_map_key_ref
    =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__env__value_from__config_map_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__init_container__env__value_from__config_map_key_ref

[@@@deriving.end]

type spec__init_container__env__value_from = {
  config_map_key_ref :
    spec__init_container__env__value_from__config_map_key_ref list;
      [@default []] [@yojson_drop_default ( = )]
  field_ref : spec__init_container__env__value_from__field_ref list;
      [@default []] [@yojson_drop_default ( = )]
  resource_field_ref :
    spec__init_container__env__value_from__resource_field_ref list;
      [@default []] [@yojson_drop_default ( = )]
  secret_key_ref :
    spec__init_container__env__value_from__secret_key_ref list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__env__value_from) -> ()

let yojson_of_spec__init_container__env__value_from =
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
         if [] = v_secret_key_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__env__value_from__secret_key_ref)
               v_secret_key_ref
           in
           let bnd = "secret_key_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resource_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__env__value_from__resource_field_ref)
               v_resource_field_ref
           in
           let bnd = "resource_field_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__env__value_from__field_ref)
               v_field_ref
           in
           let bnd = "field_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config_map_key_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__env__value_from__config_map_key_ref)
               v_config_map_key_ref
           in
           let bnd = "config_map_key_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container__env__value_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__env__value_from

[@@@deriving.end]

type spec__init_container__env = {
  name : string prop;
  value : string prop;
  value_from : spec__init_container__env__value_from list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container__env) -> ()

let yojson_of_spec__init_container__env =
  (function
   | { name = v_name; value = v_value; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_value_from then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__env__value_from)
               v_value_from
           in
           let bnd = "value_from", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__init_container__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container__env

[@@@deriving.end]

type spec__init_container = {
  args : string prop list; [@default []] [@yojson_drop_default ( = )]
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  env : spec__init_container__env list;
      [@default []] [@yojson_drop_default ( = )]
  env_from : spec__init_container__env_from list;
      [@default []] [@yojson_drop_default ( = )]
  image : string prop;
  image_pull_policy : string prop;
  lifecycle : spec__init_container__lifecycle list;
      [@default []] [@yojson_drop_default ( = )]
  liveness_probe : spec__init_container__liveness_probe list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
  port : spec__init_container__port list;
      [@default []] [@yojson_drop_default ( = )]
  readiness_probe : spec__init_container__readiness_probe list;
      [@default []] [@yojson_drop_default ( = )]
  resources : spec__init_container__resources list;
      [@default []] [@yojson_drop_default ( = )]
  security_context : spec__init_container__security_context list;
      [@default []] [@yojson_drop_default ( = )]
  startup_probe : spec__init_container__startup_probe list;
      [@default []] [@yojson_drop_default ( = )]
  stdin : bool prop;
  stdin_once : bool prop;
  termination_message_path : string prop;
  termination_message_policy : string prop;
  tty : bool prop;
  volume_mount : spec__init_container__volume_mount list;
      [@default []] [@yojson_drop_default ( = )]
  working_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__init_container) -> ()

let yojson_of_spec__init_container =
  (function
   | {
       args = v_args;
       command = v_command;
       env = v_env;
       env_from = v_env_from;
       image = v_image;
       image_pull_policy = v_image_pull_policy;
       lifecycle = v_lifecycle;
       liveness_probe = v_liveness_probe;
       name = v_name;
       port = v_port;
       readiness_probe = v_readiness_probe;
       resources = v_resources;
       security_context = v_security_context;
       startup_probe = v_startup_probe;
       stdin = v_stdin;
       stdin_once = v_stdin_once;
       termination_message_path = v_termination_message_path;
       termination_message_policy = v_termination_message_policy;
       tty = v_tty;
       volume_mount = v_volume_mount;
       working_dir = v_working_dir;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_working_dir in
         ("working_dir", arg) :: bnds
       in
       let bnds =
         if [] = v_volume_mount then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__volume_mount)
               v_volume_mount
           in
           let bnd = "volume_mount", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_tty in
         ("tty", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_termination_message_policy
         in
         ("termination_message_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_termination_message_path
         in
         ("termination_message_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_stdin_once in
         ("stdin_once", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_stdin in
         ("stdin", arg) :: bnds
       in
       let bnds =
         if [] = v_startup_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__startup_probe)
               v_startup_probe
           in
           let bnd = "startup_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_security_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__security_context)
               v_security_context
           in
           let bnd = "security_context", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__resources)
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_readiness_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__readiness_probe)
               v_readiness_probe
           in
           let bnd = "readiness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_port then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__init_container__port)
               v_port
           in
           let bnd = "port", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_liveness_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__liveness_probe)
               v_liveness_probe
           in
           let bnd = "liveness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lifecycle then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__init_container__lifecycle)
               v_lifecycle
           in
           let bnd = "lifecycle", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_image_pull_policy
         in
         ("image_pull_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         if [] = v_env_from then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__init_container__env_from)
               v_env_from
           in
           let bnd = "env_from", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__init_container__env)
               v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_args then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_args
           in
           let bnd = "args", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__init_container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__init_container

[@@@deriving.end]

type spec__image_pull_secrets = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__image_pull_secrets) -> ()

let yojson_of_spec__image_pull_secrets =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__image_pull_secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__image_pull_secrets

[@@@deriving.end]

type spec__host_aliases = {
  hostnames : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  ip : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__host_aliases) -> ()

let yojson_of_spec__host_aliases =
  (function
   | { hostnames = v_hostnames; ip = v_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       let bnds =
         if [] = v_hostnames then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_hostnames
           in
           let bnd = "hostnames", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__host_aliases -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__host_aliases

[@@@deriving.end]

type spec__dns_config__option = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__dns_config__option) -> ()

let yojson_of_spec__dns_config__option =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__dns_config__option -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__dns_config__option

[@@@deriving.end]

type spec__dns_config = {
  nameservers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  option_ : spec__dns_config__option list;
      [@default []] [@yojson_drop_default ( = )] [@key "option"]
  searches : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__dns_config) -> ()

let yojson_of_spec__dns_config =
  (function
   | {
       nameservers = v_nameservers;
       option_ = v_option_;
       searches = v_searches;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_searches then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_searches
           in
           let bnd = "searches", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_option_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__dns_config__option)
               v_option_
           in
           let bnd = "option", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_nameservers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_nameservers
           in
           let bnd = "nameservers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__dns_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__dns_config

[@@@deriving.end]

type spec__container__volume_mount = {
  mount_path : string prop;
  mount_propagation : string prop;
  name : string prop;
  read_only : bool prop;
  sub_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__volume_mount) -> ()

let yojson_of_spec__container__volume_mount =
  (function
   | {
       mount_path = v_mount_path;
       mount_propagation = v_mount_propagation;
       name = v_name;
       read_only = v_read_only;
       sub_path = v_sub_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sub_path in
         ("sub_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mount_propagation
         in
         ("mount_propagation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__volume_mount ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__volume_mount

[@@@deriving.end]

type spec__container__startup_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__startup_probe__tcp_socket) -> ()

let yojson_of_spec__container__startup_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__startup_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__startup_probe__tcp_socket

[@@@deriving.end]

type spec__container__startup_probe__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__startup_probe__http_get__http_header) ->
  ()

let yojson_of_spec__container__startup_probe__http_get__http_header =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__startup_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__container__startup_probe__http_get__http_header

[@@@deriving.end]

type spec__container__startup_probe__http_get = {
  host : string prop;
  http_header :
    spec__container__startup_probe__http_get__http_header list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__startup_probe__http_get) -> ()

let yojson_of_spec__container__startup_probe__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__startup_probe__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__startup_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__startup_probe__http_get

[@@@deriving.end]

type spec__container__startup_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__startup_probe__grpc) -> ()

let yojson_of_spec__container__startup_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__startup_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__startup_probe__grpc

[@@@deriving.end]

type spec__container__startup_probe__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__startup_probe__exec) -> ()

let yojson_of_spec__container__startup_probe__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__startup_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__startup_probe__exec

[@@@deriving.end]

type spec__container__startup_probe = {
  exec : spec__container__startup_probe__exec list;
      [@default []] [@yojson_drop_default ( = )]
  failure_threshold : float prop;
  grpc : spec__container__startup_probe__grpc list;
      [@default []] [@yojson_drop_default ( = )]
  http_get : spec__container__startup_probe__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  success_threshold : float prop;
  tcp_socket : spec__container__startup_probe__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__startup_probe) -> ()

let yojson_of_spec__container__startup_probe =
  (function
   | {
       exec = v_exec;
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       tcp_socket = v_tcp_socket;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__startup_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_threshold
         in
         ("success_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__startup_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_grpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__startup_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__startup_probe__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__startup_probe

[@@@deriving.end]

type spec__container__security_context__seccomp_profile = {
  localhost_profile : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__security_context__seccomp_profile) -> ()

let yojson_of_spec__container__security_context__seccomp_profile =
  (function
   | { localhost_profile = v_localhost_profile; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_localhost_profile
         in
         ("localhost_profile", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__security_context__seccomp_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__security_context__seccomp_profile

[@@@deriving.end]

type spec__container__security_context__se_linux_options = {
  level : string prop;
  role : string prop;
  type_ : string prop; [@key "type"]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__security_context__se_linux_options) -> ()

let yojson_of_spec__container__security_context__se_linux_options =
  (function
   | {
       level = v_level;
       role = v_role;
       type_ = v_type_;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_level in
         ("level", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__security_context__se_linux_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__security_context__se_linux_options

[@@@deriving.end]

type spec__container__security_context__capabilities = {
  add : string prop list; [@default []] [@yojson_drop_default ( = )]
  drop : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__security_context__capabilities) -> ()

let yojson_of_spec__container__security_context__capabilities =
  (function
   | { add = v_add; drop = v_drop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_drop then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_drop
           in
           let bnd = "drop", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_add then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string)) v_add
           in
           let bnd = "add", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__security_context__capabilities ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__security_context__capabilities

[@@@deriving.end]

type spec__container__security_context = {
  allow_privilege_escalation : bool prop;
  capabilities :
    spec__container__security_context__capabilities list;
      [@default []] [@yojson_drop_default ( = )]
  privileged : bool prop;
  read_only_root_filesystem : bool prop;
  run_as_group : string prop;
  run_as_non_root : bool prop;
  run_as_user : string prop;
  se_linux_options :
    spec__container__security_context__se_linux_options list;
      [@default []] [@yojson_drop_default ( = )]
  seccomp_profile :
    spec__container__security_context__seccomp_profile list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__security_context) -> ()

let yojson_of_spec__container__security_context =
  (function
   | {
       allow_privilege_escalation = v_allow_privilege_escalation;
       capabilities = v_capabilities;
       privileged = v_privileged;
       read_only_root_filesystem = v_read_only_root_filesystem;
       run_as_group = v_run_as_group;
       run_as_non_root = v_run_as_non_root;
       run_as_user = v_run_as_user;
       se_linux_options = v_se_linux_options;
       seccomp_profile = v_seccomp_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_seccomp_profile then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__security_context__seccomp_profile)
               v_seccomp_profile
           in
           let bnd = "seccomp_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_se_linux_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__security_context__se_linux_options)
               v_se_linux_options
           in
           let bnd = "se_linux_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_as_user in
         ("run_as_user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_run_as_non_root in
         ("run_as_non_root", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_as_group in
         ("run_as_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_read_only_root_filesystem
         in
         ("read_only_root_filesystem", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_privileged in
         ("privileged", arg) :: bnds
       in
       let bnds =
         if [] = v_capabilities then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__security_context__capabilities)
               v_capabilities
           in
           let bnd = "capabilities", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_privilege_escalation
         in
         ("allow_privilege_escalation", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__security_context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__security_context

[@@@deriving.end]

type spec__container__resources = {
  limits : (string * string prop) list;
  requests : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__resources) -> ()

let yojson_of_spec__container__resources =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_requests
         in
         ("requests", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_limits
         in
         ("limits", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__resources

[@@@deriving.end]

type spec__container__readiness_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__readiness_probe__tcp_socket) -> ()

let yojson_of_spec__container__readiness_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__readiness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__readiness_probe__tcp_socket

[@@@deriving.end]

type spec__container__readiness_probe__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__readiness_probe__http_get__http_header) ->
  ()

let yojson_of_spec__container__readiness_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__readiness_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__container__readiness_probe__http_get__http_header

[@@@deriving.end]

type spec__container__readiness_probe__http_get = {
  host : string prop;
  http_header :
    spec__container__readiness_probe__http_get__http_header list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__readiness_probe__http_get) -> ()

let yojson_of_spec__container__readiness_probe__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__readiness_probe__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__readiness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__readiness_probe__http_get

[@@@deriving.end]

type spec__container__readiness_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__readiness_probe__grpc) -> ()

let yojson_of_spec__container__readiness_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__readiness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__readiness_probe__grpc

[@@@deriving.end]

type spec__container__readiness_probe__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__readiness_probe__exec) -> ()

let yojson_of_spec__container__readiness_probe__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__readiness_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__readiness_probe__exec

[@@@deriving.end]

type spec__container__readiness_probe = {
  exec : spec__container__readiness_probe__exec list;
      [@default []] [@yojson_drop_default ( = )]
  failure_threshold : float prop;
  grpc : spec__container__readiness_probe__grpc list;
      [@default []] [@yojson_drop_default ( = )]
  http_get : spec__container__readiness_probe__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  success_threshold : float prop;
  tcp_socket : spec__container__readiness_probe__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__readiness_probe) -> ()

let yojson_of_spec__container__readiness_probe =
  (function
   | {
       exec = v_exec;
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       tcp_socket = v_tcp_socket;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__readiness_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_threshold
         in
         ("success_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__readiness_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_grpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__readiness_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__readiness_probe__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__readiness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__readiness_probe

[@@@deriving.end]

type spec__container__port = {
  container_port : float prop;
  host_ip : string prop;
  host_port : float prop;
  name : string prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__port) -> ()

let yojson_of_spec__container__port =
  (function
   | {
       container_port = v_container_port;
       host_ip = v_host_ip;
       host_port = v_host_port;
       name = v_name;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_host_port in
         ("host_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_ip in
         ("host_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_container_port in
         ("container_port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__port

[@@@deriving.end]

type spec__container__liveness_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__liveness_probe__tcp_socket) -> ()

let yojson_of_spec__container__liveness_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__liveness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__liveness_probe__tcp_socket

[@@@deriving.end]

type spec__container__liveness_probe__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__liveness_probe__http_get__http_header) ->
  ()

let yojson_of_spec__container__liveness_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__liveness_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__container__liveness_probe__http_get__http_header

[@@@deriving.end]

type spec__container__liveness_probe__http_get = {
  host : string prop;
  http_header :
    spec__container__liveness_probe__http_get__http_header list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__liveness_probe__http_get) -> ()

let yojson_of_spec__container__liveness_probe__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__liveness_probe__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__liveness_probe__http_get

[@@@deriving.end]

type spec__container__liveness_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__liveness_probe__grpc) -> ()

let yojson_of_spec__container__liveness_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__liveness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__liveness_probe__grpc

[@@@deriving.end]

type spec__container__liveness_probe__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__liveness_probe__exec) -> ()

let yojson_of_spec__container__liveness_probe__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__liveness_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__liveness_probe__exec

[@@@deriving.end]

type spec__container__liveness_probe = {
  exec : spec__container__liveness_probe__exec list;
      [@default []] [@yojson_drop_default ( = )]
  failure_threshold : float prop;
  grpc : spec__container__liveness_probe__grpc list;
      [@default []] [@yojson_drop_default ( = )]
  http_get : spec__container__liveness_probe__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  success_threshold : float prop;
  tcp_socket : spec__container__liveness_probe__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__liveness_probe) -> ()

let yojson_of_spec__container__liveness_probe =
  (function
   | {
       exec = v_exec;
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       tcp_socket = v_tcp_socket;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__liveness_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_threshold
         in
         ("success_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__liveness_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_grpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__liveness_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__liveness_probe__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__liveness_probe

[@@@deriving.end]

type spec__container__lifecycle__pre_stop__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__lifecycle__pre_stop__tcp_socket) -> ()

let yojson_of_spec__container__lifecycle__pre_stop__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__pre_stop__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle__pre_stop__tcp_socket

[@@@deriving.end]

type spec__container__lifecycle__pre_stop__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__container__lifecycle__pre_stop__http_get__http_header) ->
  ()

let yojson_of_spec__container__lifecycle__pre_stop__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__pre_stop__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__container__lifecycle__pre_stop__http_get__http_header

[@@@deriving.end]

type spec__container__lifecycle__pre_stop__http_get = {
  host : string prop;
  http_header :
    spec__container__lifecycle__pre_stop__http_get__http_header list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__lifecycle__pre_stop__http_get) -> ()

let yojson_of_spec__container__lifecycle__pre_stop__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__pre_stop__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__pre_stop__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle__pre_stop__http_get

[@@@deriving.end]

type spec__container__lifecycle__pre_stop__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__lifecycle__pre_stop__exec) -> ()

let yojson_of_spec__container__lifecycle__pre_stop__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__pre_stop__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle__pre_stop__exec

[@@@deriving.end]

type spec__container__lifecycle__pre_stop = {
  exec : spec__container__lifecycle__pre_stop__exec list;
      [@default []] [@yojson_drop_default ( = )]
  http_get : spec__container__lifecycle__pre_stop__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  tcp_socket : spec__container__lifecycle__pre_stop__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__lifecycle__pre_stop) -> ()

let yojson_of_spec__container__lifecycle__pre_stop =
  (function
   | {
       exec = v_exec;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__pre_stop__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__pre_stop__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__pre_stop__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__pre_stop ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle__pre_stop

[@@@deriving.end]

type spec__container__lifecycle__post_start__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__lifecycle__post_start__tcp_socket) -> ()

let yojson_of_spec__container__lifecycle__post_start__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__post_start__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle__post_start__tcp_socket

[@@@deriving.end]

type spec__container__lifecycle__post_start__http_get__http_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__container__lifecycle__post_start__http_get__http_header) ->
  ()

let yojson_of_spec__container__lifecycle__post_start__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__post_start__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__container__lifecycle__post_start__http_get__http_header

[@@@deriving.end]

type spec__container__lifecycle__post_start__http_get = {
  host : string prop;
  http_header :
    spec__container__lifecycle__post_start__http_get__http_header
    list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  port : string prop;
  scheme : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__lifecycle__post_start__http_get) -> ()

let yojson_of_spec__container__lifecycle__post_start__http_get =
  (function
   | {
       host = v_host;
       http_header = v_http_header;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scheme in
         ("scheme", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__post_start__http_get__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__post_start__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle__post_start__http_get

[@@@deriving.end]

type spec__container__lifecycle__post_start__exec = {
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__lifecycle__post_start__exec) -> ()

let yojson_of_spec__container__lifecycle__post_start__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__post_start__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle__post_start__exec

[@@@deriving.end]

type spec__container__lifecycle__post_start = {
  exec : spec__container__lifecycle__post_start__exec list;
      [@default []] [@yojson_drop_default ( = )]
  http_get : spec__container__lifecycle__post_start__http_get list;
      [@default []] [@yojson_drop_default ( = )]
  tcp_socket :
    spec__container__lifecycle__post_start__tcp_socket list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__lifecycle__post_start) -> ()

let yojson_of_spec__container__lifecycle__post_start =
  (function
   | {
       exec = v_exec;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__post_start__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__post_start__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_exec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__post_start__exec)
               v_exec
           in
           let bnd = "exec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle__post_start ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle__post_start

[@@@deriving.end]

type spec__container__lifecycle = {
  post_start : spec__container__lifecycle__post_start list;
      [@default []] [@yojson_drop_default ( = )]
  pre_stop : spec__container__lifecycle__pre_stop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__lifecycle) -> ()

let yojson_of_spec__container__lifecycle =
  (function
   | { post_start = v_post_start; pre_stop = v_pre_stop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_pre_stop then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__pre_stop)
               v_pre_stop
           in
           let bnd = "pre_stop", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_post_start then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__lifecycle__post_start)
               v_post_start
           in
           let bnd = "post_start", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__lifecycle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__lifecycle

[@@@deriving.end]

type spec__container__env_from__secret_ref = {
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__env_from__secret_ref) -> ()

let yojson_of_spec__container__env_from__secret_ref =
  (function
   | { name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__env_from__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__env_from__secret_ref

[@@@deriving.end]

type spec__container__env_from__config_map_ref = {
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__env_from__config_map_ref) -> ()

let yojson_of_spec__container__env_from__config_map_ref =
  (function
   | { name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__env_from__config_map_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__env_from__config_map_ref

[@@@deriving.end]

type spec__container__env_from = {
  config_map_ref : spec__container__env_from__config_map_ref list;
      [@default []] [@yojson_drop_default ( = )]
  prefix : string prop;
  secret_ref : spec__container__env_from__secret_ref list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__env_from) -> ()

let yojson_of_spec__container__env_from =
  (function
   | {
       config_map_ref = v_config_map_ref;
       prefix = v_prefix;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_secret_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__env_from__secret_ref)
               v_secret_ref
           in
           let bnd = "secret_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         if [] = v_config_map_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__env_from__config_map_ref)
               v_config_map_ref
           in
           let bnd = "config_map_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__env_from -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__env_from

[@@@deriving.end]

type spec__container__env__value_from__secret_key_ref = {
  key : string prop;
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__env__value_from__secret_key_ref) -> ()

let yojson_of_spec__container__env__value_from__secret_key_ref =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__env__value_from__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__env__value_from__secret_key_ref

[@@@deriving.end]

type spec__container__env__value_from__resource_field_ref = {
  container_name : string prop;
  divisor : string prop;
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__env__value_from__resource_field_ref) -> ()

let yojson_of_spec__container__env__value_from__resource_field_ref =
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
         let arg = yojson_of_prop yojson_of_string v_divisor in
         ("divisor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__env__value_from__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__container__env__value_from__resource_field_ref

[@@@deriving.end]

type spec__container__env__value_from__field_ref = {
  api_version : string prop;
  field_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__env__value_from__field_ref) -> ()

let yojson_of_spec__container__env__value_from__field_ref =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field_path in
         ("field_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__env__value_from__field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__env__value_from__field_ref

[@@@deriving.end]

type spec__container__env__value_from__config_map_key_ref = {
  key : string prop;
  name : string prop;
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__container__env__value_from__config_map_key_ref) -> ()

let yojson_of_spec__container__env__value_from__config_map_key_ref =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__env__value_from__config_map_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__container__env__value_from__config_map_key_ref

[@@@deriving.end]

type spec__container__env__value_from = {
  config_map_key_ref :
    spec__container__env__value_from__config_map_key_ref list;
      [@default []] [@yojson_drop_default ( = )]
  field_ref : spec__container__env__value_from__field_ref list;
      [@default []] [@yojson_drop_default ( = )]
  resource_field_ref :
    spec__container__env__value_from__resource_field_ref list;
      [@default []] [@yojson_drop_default ( = )]
  secret_key_ref :
    spec__container__env__value_from__secret_key_ref list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__env__value_from) -> ()

let yojson_of_spec__container__env__value_from =
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
         if [] = v_secret_key_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__env__value_from__secret_key_ref)
               v_secret_key_ref
           in
           let bnd = "secret_key_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resource_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__env__value_from__resource_field_ref)
               v_resource_field_ref
           in
           let bnd = "resource_field_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_field_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__env__value_from__field_ref)
               v_field_ref
           in
           let bnd = "field_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config_map_key_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__env__value_from__config_map_key_ref)
               v_config_map_key_ref
           in
           let bnd = "config_map_key_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container__env__value_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__env__value_from

[@@@deriving.end]

type spec__container__env = {
  name : string prop;
  value : string prop;
  value_from : spec__container__env__value_from list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container__env) -> ()

let yojson_of_spec__container__env =
  (function
   | { name = v_name; value = v_value; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_value_from then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__env__value_from)
               v_value_from
           in
           let bnd = "value_from", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__container__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container__env

[@@@deriving.end]

type spec__container = {
  args : string prop list; [@default []] [@yojson_drop_default ( = )]
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  env : spec__container__env list;
      [@default []] [@yojson_drop_default ( = )]
  env_from : spec__container__env_from list;
      [@default []] [@yojson_drop_default ( = )]
  image : string prop;
  image_pull_policy : string prop;
  lifecycle : spec__container__lifecycle list;
      [@default []] [@yojson_drop_default ( = )]
  liveness_probe : spec__container__liveness_probe list;
      [@default []] [@yojson_drop_default ( = )]
  name : string prop;
  port : spec__container__port list;
      [@default []] [@yojson_drop_default ( = )]
  readiness_probe : spec__container__readiness_probe list;
      [@default []] [@yojson_drop_default ( = )]
  resources : spec__container__resources list;
      [@default []] [@yojson_drop_default ( = )]
  security_context : spec__container__security_context list;
      [@default []] [@yojson_drop_default ( = )]
  startup_probe : spec__container__startup_probe list;
      [@default []] [@yojson_drop_default ( = )]
  stdin : bool prop;
  stdin_once : bool prop;
  termination_message_path : string prop;
  termination_message_policy : string prop;
  tty : bool prop;
  volume_mount : spec__container__volume_mount list;
      [@default []] [@yojson_drop_default ( = )]
  working_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__container) -> ()

let yojson_of_spec__container =
  (function
   | {
       args = v_args;
       command = v_command;
       env = v_env;
       env_from = v_env_from;
       image = v_image;
       image_pull_policy = v_image_pull_policy;
       lifecycle = v_lifecycle;
       liveness_probe = v_liveness_probe;
       name = v_name;
       port = v_port;
       readiness_probe = v_readiness_probe;
       resources = v_resources;
       security_context = v_security_context;
       startup_probe = v_startup_probe;
       stdin = v_stdin;
       stdin_once = v_stdin_once;
       termination_message_path = v_termination_message_path;
       termination_message_policy = v_termination_message_policy;
       tty = v_tty;
       volume_mount = v_volume_mount;
       working_dir = v_working_dir;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_working_dir in
         ("working_dir", arg) :: bnds
       in
       let bnds =
         if [] = v_volume_mount then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__container__volume_mount)
               v_volume_mount
           in
           let bnd = "volume_mount", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_tty in
         ("tty", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_termination_message_policy
         in
         ("termination_message_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_termination_message_path
         in
         ("termination_message_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_stdin_once in
         ("stdin_once", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_stdin in
         ("stdin", arg) :: bnds
       in
       let bnds =
         if [] = v_startup_probe then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__container__startup_probe)
               v_startup_probe
           in
           let bnd = "startup_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_security_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__security_context)
               v_security_context
           in
           let bnd = "security_context", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__container__resources)
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_readiness_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__readiness_probe)
               v_readiness_probe
           in
           let bnd = "readiness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_port then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__container__port) v_port
           in
           let bnd = "port", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if [] = v_liveness_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__container__liveness_probe)
               v_liveness_probe
           in
           let bnd = "liveness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lifecycle then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__container__lifecycle)
               v_lifecycle
           in
           let bnd = "lifecycle", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_image_pull_policy
         in
         ("image_pull_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         if [] = v_env_from then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__container__env_from)
               v_env_from
           in
           let bnd = "env_from", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__container__env) v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_args then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_args
           in
           let bnd = "args", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__container

[@@@deriving.end]

type spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions) ->
  ()

let yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions

[@@@deriving.end]

type spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector = {
  match_expressions :
    spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
  match_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector) ->
  ()

let yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_labels = v_match_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_match_labels
         in
         ("match_labels", arg) :: bnds
       in
       let bnds =
         if [] = v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector

[@@@deriving.end]

type spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution = {
  label_selector :
    spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list;
      [@default []] [@yojson_drop_default ( = )]
  namespaces : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  topology_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    =
  (function
   | {
       label_selector = v_label_selector;
       namespaces = v_namespaces;
       topology_key = v_topology_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         if [] = v_namespaces then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_namespaces
           in
           let bnd = "namespaces", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_label_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector)
               v_label_selector
           in
           let bnd = "label_selector", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions) ->
  ()

let yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions

[@@@deriving.end]

type spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector = {
  match_expressions :
    spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
  match_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector) ->
  ()

let yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_labels = v_match_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_match_labels
         in
         ("match_labels", arg) :: bnds
       in
       let bnds =
         if [] = v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector

[@@@deriving.end]

type spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term = {
  label_selector :
    spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list;
      [@default []] [@yojson_drop_default ( = )]
  namespaces : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  topology_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term) ->
  ()

let yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    =
  (function
   | {
       label_selector = v_label_selector;
       namespaces = v_namespaces;
       topology_key = v_topology_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         if [] = v_namespaces then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_namespaces
           in
           let bnd = "namespaces", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_label_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector)
               v_label_selector
           in
           let bnd = "label_selector", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term

[@@@deriving.end]

type spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution = {
  pod_affinity_term :
    spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list;
      [@default []] [@yojson_drop_default ( = )]
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    =
  (function
   | { pod_affinity_term = v_pod_affinity_term; weight = v_weight }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         if [] = v_pod_affinity_term then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term)
               v_pod_affinity_term
           in
           let bnd = "pod_affinity_term", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__affinity__pod_anti_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    list;
      [@default []] [@yojson_drop_default ( = )]
  required_during_scheduling_ignored_during_execution :
    spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__affinity__pod_anti_affinity) -> ()

let yojson_of_spec__affinity__pod_anti_affinity =
  (function
   | {
       preferred_during_scheduling_ignored_during_execution =
         v_preferred_during_scheduling_ignored_during_execution;
       required_during_scheduling_ignored_during_execution =
         v_required_during_scheduling_ignored_during_execution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if
           [] = v_required_during_scheduling_ignored_during_execution
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution)
               v_required_during_scheduling_ignored_during_execution
           in
           let bnd =
             ( "required_during_scheduling_ignored_during_execution",
               arg )
           in
           bnd :: bnds
       in
       let bnds =
         if
           []
           = v_preferred_during_scheduling_ignored_during_execution
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution)
               v_preferred_during_scheduling_ignored_during_execution
           in
           let bnd =
             ( "preferred_during_scheduling_ignored_during_execution",
               arg )
           in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_anti_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__affinity__pod_anti_affinity

[@@@deriving.end]

type spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions) ->
  ()

let yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions

[@@@deriving.end]

type spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector = {
  match_expressions :
    spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
  match_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector) ->
  ()

let yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_labels = v_match_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_match_labels
         in
         ("match_labels", arg) :: bnds
       in
       let bnds =
         if [] = v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector

[@@@deriving.end]

type spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution = {
  label_selector :
    spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list;
      [@default []] [@yojson_drop_default ( = )]
  namespaces : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  topology_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    =
  (function
   | {
       label_selector = v_label_selector;
       namespaces = v_namespaces;
       topology_key = v_topology_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         if [] = v_namespaces then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_namespaces
           in
           let bnd = "namespaces", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_label_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector)
               v_label_selector
           in
           let bnd = "label_selector", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions) ->
  ()

let yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions

[@@@deriving.end]

type spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector = {
  match_expressions :
    spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
  match_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector) ->
  ()

let yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_labels = v_match_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_match_labels
         in
         ("match_labels", arg) :: bnds
       in
       let bnds =
         if [] = v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector

[@@@deriving.end]

type spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term = {
  label_selector :
    spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list;
      [@default []] [@yojson_drop_default ( = )]
  namespaces : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  topology_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term) ->
  ()

let yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    =
  (function
   | {
       label_selector = v_label_selector;
       namespaces = v_namespaces;
       topology_key = v_topology_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         if [] = v_namespaces then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_namespaces
           in
           let bnd = "namespaces", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_label_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector)
               v_label_selector
           in
           let bnd = "label_selector", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term

[@@@deriving.end]

type spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution = {
  pod_affinity_term :
    spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list;
      [@default []] [@yojson_drop_default ( = )]
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    =
  (function
   | { pod_affinity_term = v_pod_affinity_term; weight = v_weight }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         if [] = v_pod_affinity_term then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term)
               v_pod_affinity_term
           in
           let bnd = "pod_affinity_term", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__affinity__pod_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    list;
      [@default []] [@yojson_drop_default ( = )]
  required_during_scheduling_ignored_during_execution :
    spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__affinity__pod_affinity) -> ()

let yojson_of_spec__affinity__pod_affinity =
  (function
   | {
       preferred_during_scheduling_ignored_during_execution =
         v_preferred_during_scheduling_ignored_during_execution;
       required_during_scheduling_ignored_during_execution =
         v_required_during_scheduling_ignored_during_execution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if
           [] = v_required_during_scheduling_ignored_during_execution
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution)
               v_required_during_scheduling_ignored_during_execution
           in
           let bnd =
             ( "required_during_scheduling_ignored_during_execution",
               arg )
           in
           bnd :: bnds
       in
       let bnds =
         if
           []
           = v_preferred_during_scheduling_ignored_during_execution
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution)
               v_preferred_during_scheduling_ignored_during_execution
           in
           let bnd =
             ( "preferred_during_scheduling_ignored_during_execution",
               arg )
           in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__pod_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__affinity__pod_affinity

[@@@deriving.end]

type spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields) ->
  ()

let yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields

[@@@deriving.end]

type spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions) ->
  ()

let yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions

[@@@deriving.end]

type spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term = {
  match_expressions :
    spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
  match_fields :
    spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term) ->
  ()

let yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_fields = v_match_fields;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_match_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields)
               v_match_fields
           in
           let bnd = "match_fields", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term

[@@@deriving.end]

type spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution = {
  node_selector_term :
    spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    =
  (function
   | { node_selector_term = v_node_selector_term } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_node_selector_term then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term)
               v_node_selector_term
           in
           let bnd = "node_selector_term", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields) ->
  ()

let yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields

[@@@deriving.end]

type spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions) ->
  ()

let yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions

[@@@deriving.end]

type spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference = {
  match_expressions :
    spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
  match_fields :
    spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference) ->
  ()

let yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_fields = v_match_fields;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_match_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields)
               v_match_fields
           in
           let bnd = "match_fields", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference

[@@@deriving.end]

type spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution = {
  preference :
    spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    list;
      [@default []] [@yojson_drop_default ( = )]
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    =
  (function
   | { preference = v_preference; weight = v_weight } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         if [] = v_preference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference)
               v_preference
           in
           let bnd = "preference", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__affinity__node_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    list;
      [@default []] [@yojson_drop_default ( = )]
  required_during_scheduling_ignored_during_execution :
    spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__affinity__node_affinity) -> ()

let yojson_of_spec__affinity__node_affinity =
  (function
   | {
       preferred_during_scheduling_ignored_during_execution =
         v_preferred_during_scheduling_ignored_during_execution;
       required_during_scheduling_ignored_during_execution =
         v_required_during_scheduling_ignored_during_execution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if
           [] = v_required_during_scheduling_ignored_during_execution
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution)
               v_required_during_scheduling_ignored_during_execution
           in
           let bnd =
             ( "required_during_scheduling_ignored_during_execution",
               arg )
           in
           bnd :: bnds
       in
       let bnds =
         if
           []
           = v_preferred_during_scheduling_ignored_during_execution
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution)
               v_preferred_during_scheduling_ignored_during_execution
           in
           let bnd =
             ( "preferred_during_scheduling_ignored_during_execution",
               arg )
           in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity__node_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__affinity__node_affinity

[@@@deriving.end]

type spec__affinity = {
  node_affinity : spec__affinity__node_affinity list;
      [@default []] [@yojson_drop_default ( = )]
  pod_affinity : spec__affinity__pod_affinity list;
      [@default []] [@yojson_drop_default ( = )]
  pod_anti_affinity : spec__affinity__pod_anti_affinity list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__affinity) -> ()

let yojson_of_spec__affinity =
  (function
   | {
       node_affinity = v_node_affinity;
       pod_affinity = v_pod_affinity;
       pod_anti_affinity = v_pod_anti_affinity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_pod_anti_affinity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__affinity__pod_anti_affinity)
               v_pod_anti_affinity
           in
           let bnd = "pod_anti_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_pod_affinity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__affinity__pod_affinity)
               v_pod_affinity
           in
           let bnd = "pod_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_node_affinity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__affinity__node_affinity)
               v_node_affinity
           in
           let bnd = "node_affinity", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__affinity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__affinity

[@@@deriving.end]

type spec = {
  active_deadline_seconds : float prop;
  affinity : spec__affinity list;
      [@default []] [@yojson_drop_default ( = )]
  automount_service_account_token : bool prop;
  container : spec__container list;
      [@default []] [@yojson_drop_default ( = )]
  dns_config : spec__dns_config list;
      [@default []] [@yojson_drop_default ( = )]
  dns_policy : string prop;
  enable_service_links : bool prop;
  host_aliases : spec__host_aliases list;
      [@default []] [@yojson_drop_default ( = )]
  host_ipc : bool prop;
  host_network : bool prop;
  host_pid : bool prop;
  hostname : string prop;
  image_pull_secrets : spec__image_pull_secrets list;
      [@default []] [@yojson_drop_default ( = )]
  init_container : spec__init_container list;
      [@default []] [@yojson_drop_default ( = )]
  node_name : string prop;
  node_selector : (string * string prop) list;
  os : spec__os list; [@default []] [@yojson_drop_default ( = )]
  priority_class_name : string prop;
  readiness_gate : spec__readiness_gate list;
      [@default []] [@yojson_drop_default ( = )]
  restart_policy : string prop;
  runtime_class_name : string prop;
  scheduler_name : string prop;
  security_context : spec__security_context list;
      [@default []] [@yojson_drop_default ( = )]
  service_account_name : string prop;
  share_process_namespace : bool prop;
  subdomain : string prop;
  termination_grace_period_seconds : float prop;
  toleration : spec__toleration list;
      [@default []] [@yojson_drop_default ( = )]
  topology_spread_constraint : spec__topology_spread_constraint list;
      [@default []] [@yojson_drop_default ( = )]
  volume : spec__volume list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       active_deadline_seconds = v_active_deadline_seconds;
       affinity = v_affinity;
       automount_service_account_token =
         v_automount_service_account_token;
       container = v_container;
       dns_config = v_dns_config;
       dns_policy = v_dns_policy;
       enable_service_links = v_enable_service_links;
       host_aliases = v_host_aliases;
       host_ipc = v_host_ipc;
       host_network = v_host_network;
       host_pid = v_host_pid;
       hostname = v_hostname;
       image_pull_secrets = v_image_pull_secrets;
       init_container = v_init_container;
       node_name = v_node_name;
       node_selector = v_node_selector;
       os = v_os;
       priority_class_name = v_priority_class_name;
       readiness_gate = v_readiness_gate;
       restart_policy = v_restart_policy;
       runtime_class_name = v_runtime_class_name;
       scheduler_name = v_scheduler_name;
       security_context = v_security_context;
       service_account_name = v_service_account_name;
       share_process_namespace = v_share_process_namespace;
       subdomain = v_subdomain;
       termination_grace_period_seconds =
         v_termination_grace_period_seconds;
       toleration = v_toleration;
       topology_spread_constraint = v_topology_spread_constraint;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__volume) v_volume
           in
           let bnd = "volume", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_topology_spread_constraint then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__topology_spread_constraint)
               v_topology_spread_constraint
           in
           let bnd = "topology_spread_constraint", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_toleration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__toleration) v_toleration
           in
           let bnd = "toleration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_termination_grace_period_seconds
         in
         ("termination_grace_period_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subdomain in
         ("subdomain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_share_process_namespace
         in
         ("share_process_namespace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_name
         in
         ("service_account_name", arg) :: bnds
       in
       let bnds =
         if [] = v_security_context then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__security_context)
               v_security_context
           in
           let bnd = "security_context", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scheduler_name
         in
         ("scheduler_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_runtime_class_name
         in
         ("runtime_class_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_restart_policy
         in
         ("restart_policy", arg) :: bnds
       in
       let bnds =
         if [] = v_readiness_gate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__readiness_gate)
               v_readiness_gate
           in
           let bnd = "readiness_gate", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_priority_class_name
         in
         ("priority_class_name", arg) :: bnds
       in
       let bnds =
         if [] = v_os then bnds
         else
           let arg = (yojson_of_list yojson_of_spec__os) v_os in
           let bnd = "os", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_node_selector
         in
         ("node_selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_name in
         ("node_name", arg) :: bnds
       in
       let bnds =
         if [] = v_init_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__init_container)
               v_init_container
           in
           let bnd = "init_container", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_image_pull_secrets then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__image_pull_secrets)
               v_image_pull_secrets
           in
           let bnd = "image_pull_secrets", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_host_pid in
         ("host_pid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_host_network in
         ("host_network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_host_ipc in
         ("host_ipc", arg) :: bnds
       in
       let bnds =
         if [] = v_host_aliases then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__host_aliases)
               v_host_aliases
           in
           let bnd = "host_aliases", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_service_links
         in
         ("enable_service_links", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_policy in
         ("dns_policy", arg) :: bnds
       in
       let bnds =
         if [] = v_dns_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__dns_config) v_dns_config
           in
           let bnd = "dns_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__container) v_container
           in
           let bnd = "container", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_automount_service_account_token
         in
         ("automount_service_account_token", arg) :: bnds
       in
       let bnds =
         if [] = v_affinity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__affinity) v_affinity
           in
           let bnd = "affinity", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_active_deadline_seconds
         in
         ("active_deadline_seconds", arg) :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type kubernetes_pod_v1 = {
  id : string prop option; [@option]
  metadata : metadata list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_pod_v1) -> ()

let yojson_of_kubernetes_pod_v1 =
  (function
   | { id = v_id; metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
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
       `Assoc bnds
    : kubernetes_pod_v1 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_pod_v1

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let kubernetes_pod_v1 ?id ~metadata () : kubernetes_pod_v1 =
  { id; metadata }

type t = {
  tf_name : string;
  id : string prop;
  spec : spec list prop;
  status : string prop;
}

let make ?id ~metadata __id =
  let __type = "kubernetes_pod_v1" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       spec = Prop.computed __type __id "spec";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_pod_v1
        (kubernetes_pod_v1 ?id ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
