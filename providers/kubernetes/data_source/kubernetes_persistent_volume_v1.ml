(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       labels = v_labels;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type spec__claim_ref = {
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__claim_ref) -> ()

let yojson_of_spec__claim_ref =
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
    : spec__claim_ref -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__claim_ref

[@@@deriving.end]

type spec__node_affinity__required__node_selector_term__match_expressions = {
  key : string prop;
  operator : string prop;
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__node_affinity__required__node_selector_term__match_expressions) ->
  ()

let yojson_of_spec__node_affinity__required__node_selector_term__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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
    : spec__node_affinity__required__node_selector_term__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__node_affinity__required__node_selector_term__match_expressions

[@@@deriving.end]

type spec__node_affinity__required__node_selector_term__match_fields = {
  key : string prop;
  operator : string prop;
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__node_affinity__required__node_selector_term__match_fields) ->
  ()

let yojson_of_spec__node_affinity__required__node_selector_term__match_fields
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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
    : spec__node_affinity__required__node_selector_term__match_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__node_affinity__required__node_selector_term__match_fields

[@@@deriving.end]

type spec__node_affinity__required__node_selector_term = {
  match_expressions :
    spec__node_affinity__required__node_selector_term__match_expressions
    list;
  match_fields :
    spec__node_affinity__required__node_selector_term__match_fields
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__node_affinity__required__node_selector_term) -> ()

let yojson_of_spec__node_affinity__required__node_selector_term =
  (function
   | {
       match_expressions = v_match_expressions;
       match_fields = v_match_fields;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__node_affinity__required__node_selector_term__match_fields
             v_match_fields
         in
         ("match_fields", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__node_affinity__required__node_selector_term__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
       in
       `Assoc bnds
    : spec__node_affinity__required__node_selector_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__node_affinity__required__node_selector_term

[@@@deriving.end]

type spec__node_affinity__required = {
  node_selector_term :
    spec__node_affinity__required__node_selector_term list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__node_affinity__required) -> ()

let yojson_of_spec__node_affinity__required =
  (function
   | { node_selector_term = v_node_selector_term } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__node_affinity__required__node_selector_term
             v_node_selector_term
         in
         ("node_selector_term", arg) :: bnds
       in
       `Assoc bnds
    : spec__node_affinity__required ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__node_affinity__required

[@@@deriving.end]

type spec__node_affinity = {
  required : spec__node_affinity__required list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__node_affinity) -> ()

let yojson_of_spec__node_affinity =
  (function
   | { required = v_required } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__node_affinity__required
             v_required
         in
         ("required", arg) :: bnds
       in
       `Assoc bnds
    : spec__node_affinity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__node_affinity

[@@@deriving.end]

type spec__persistent_volume_source__aws_elastic_block_store = {
  fs_type : string prop option; [@option]
  partition : float prop option; [@option]
  read_only : bool prop option; [@option]
  volume_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__persistent_volume_source__aws_elastic_block_store) ->
  ()

let yojson_of_spec__persistent_volume_source__aws_elastic_block_store
    =
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__aws_elastic_block_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__persistent_volume_source__aws_elastic_block_store

[@@@deriving.end]

type spec__persistent_volume_source__azure_disk = {
  caching_mode : string prop;
  data_disk_uri : string prop;
  disk_name : string prop;
  fs_type : string prop option; [@option]
  kind : string prop option; [@option]
  read_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__azure_disk) -> ()

let yojson_of_spec__persistent_volume_source__azure_disk =
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
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
    : spec__persistent_volume_source__azure_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__azure_disk

[@@@deriving.end]

type spec__persistent_volume_source__azure_file = {
  read_only : bool prop option; [@option]
  secret_name : string prop;
  secret_namespace : string prop option; [@option]
  share_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__azure_file) -> ()

let yojson_of_spec__persistent_volume_source__azure_file =
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
         match v_secret_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__azure_file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__azure_file

[@@@deriving.end]

type spec__persistent_volume_source__ceph_fs__secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__persistent_volume_source__ceph_fs__secret_ref) -> ()

let yojson_of_spec__persistent_volume_source__ceph_fs__secret_ref =
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__ceph_fs__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__ceph_fs__secret_ref

[@@@deriving.end]

type spec__persistent_volume_source__ceph_fs = {
  monitors : string prop list;
  path : string prop option; [@option]
  read_only : bool prop option; [@option]
  secret_file : string prop option; [@option]
  user : string prop option; [@option]
  secret_ref :
    spec__persistent_volume_source__ceph_fs__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__ceph_fs) -> ()

let yojson_of_spec__persistent_volume_source__ceph_fs =
  (function
   | {
       monitors = v_monitors;
       path = v_path;
       read_only = v_read_only;
       secret_file = v_secret_file;
       user = v_user;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__ceph_fs__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_file", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_monitors
         in
         ("monitors", arg) :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__ceph_fs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__ceph_fs

[@@@deriving.end]

type spec__persistent_volume_source__cinder = {
  fs_type : string prop option; [@option]
  read_only : bool prop option; [@option]
  volume_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__cinder) -> ()

let yojson_of_spec__persistent_volume_source__cinder =
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__cinder ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__cinder

[@@@deriving.end]

type spec__persistent_volume_source__csi__controller_expand_secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__persistent_volume_source__csi__controller_expand_secret_ref) ->
  ()

let yojson_of_spec__persistent_volume_source__csi__controller_expand_secret_ref
    =
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__csi__controller_expand_secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__persistent_volume_source__csi__controller_expand_secret_ref

[@@@deriving.end]

type spec__persistent_volume_source__csi__controller_publish_secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__persistent_volume_source__csi__controller_publish_secret_ref) ->
  ()

let yojson_of_spec__persistent_volume_source__csi__controller_publish_secret_ref
    =
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__csi__controller_publish_secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__persistent_volume_source__csi__controller_publish_secret_ref

[@@@deriving.end]

type spec__persistent_volume_source__csi__node_publish_secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__persistent_volume_source__csi__node_publish_secret_ref) ->
  ()

let yojson_of_spec__persistent_volume_source__csi__node_publish_secret_ref
    =
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__csi__node_publish_secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__persistent_volume_source__csi__node_publish_secret_ref

[@@@deriving.end]

type spec__persistent_volume_source__csi__node_stage_secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__persistent_volume_source__csi__node_stage_secret_ref) ->
  ()

let yojson_of_spec__persistent_volume_source__csi__node_stage_secret_ref
    =
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__csi__node_stage_secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__persistent_volume_source__csi__node_stage_secret_ref

[@@@deriving.end]

type spec__persistent_volume_source__csi = {
  driver : string prop;
  fs_type : string prop option; [@option]
  read_only : bool prop option; [@option]
  volume_attributes : (string * string prop) list option; [@option]
  volume_handle : string prop;
  controller_expand_secret_ref :
    spec__persistent_volume_source__csi__controller_expand_secret_ref
    list;
  controller_publish_secret_ref :
    spec__persistent_volume_source__csi__controller_publish_secret_ref
    list;
  node_publish_secret_ref :
    spec__persistent_volume_source__csi__node_publish_secret_ref list;
  node_stage_secret_ref :
    spec__persistent_volume_source__csi__node_stage_secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__csi) -> ()

let yojson_of_spec__persistent_volume_source__csi =
  (function
   | {
       driver = v_driver;
       fs_type = v_fs_type;
       read_only = v_read_only;
       volume_attributes = v_volume_attributes;
       volume_handle = v_volume_handle;
       controller_expand_secret_ref = v_controller_expand_secret_ref;
       controller_publish_secret_ref =
         v_controller_publish_secret_ref;
       node_publish_secret_ref = v_node_publish_secret_ref;
       node_stage_secret_ref = v_node_stage_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__csi__node_stage_secret_ref
             v_node_stage_secret_ref
         in
         ("node_stage_secret_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__csi__node_publish_secret_ref
             v_node_publish_secret_ref
         in
         ("node_publish_secret_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__csi__controller_publish_secret_ref
             v_controller_publish_secret_ref
         in
         ("controller_publish_secret_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__csi__controller_expand_secret_ref
             v_controller_expand_secret_ref
         in
         ("controller_expand_secret_ref", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_handle in
         ("volume_handle", arg) :: bnds
       in
       let bnds =
         match v_volume_attributes with
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
             let bnd = "volume_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_driver in
         ("driver", arg) :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__csi ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__csi

[@@@deriving.end]

type spec__persistent_volume_source__fc = {
  fs_type : string prop option; [@option]
  lun : float prop;
  read_only : bool prop option; [@option]
  target_ww_ns : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__fc) -> ()

let yojson_of_spec__persistent_volume_source__fc =
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_target_ww_ns
         in
         ("target_ww_ns", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__fc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__fc

[@@@deriving.end]

type spec__persistent_volume_source__flex_volume__secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__persistent_volume_source__flex_volume__secret_ref) ->
  ()

let yojson_of_spec__persistent_volume_source__flex_volume__secret_ref
    =
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__flex_volume__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__persistent_volume_source__flex_volume__secret_ref

[@@@deriving.end]

type spec__persistent_volume_source__flex_volume = {
  driver : string prop;
  fs_type : string prop option; [@option]
  options : (string * string prop) list option; [@option]
  read_only : bool prop option; [@option]
  secret_ref :
    spec__persistent_volume_source__flex_volume__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__flex_volume) -> ()

let yojson_of_spec__persistent_volume_source__flex_volume =
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
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__flex_volume__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_options with
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
             let bnd = "options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_driver in
         ("driver", arg) :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__flex_volume ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__flex_volume

[@@@deriving.end]

type spec__persistent_volume_source__flocker = {
  dataset_name : string prop option; [@option]
  dataset_uuid : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__flocker) -> ()

let yojson_of_spec__persistent_volume_source__flocker =
  (function
   | { dataset_name = v_dataset_name; dataset_uuid = v_dataset_uuid }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_dataset_uuid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_uuid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__flocker ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__flocker

[@@@deriving.end]

type spec__persistent_volume_source__gce_persistent_disk = {
  fs_type : string prop option; [@option]
  partition : float prop option; [@option]
  pd_name : string prop;
  read_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__persistent_volume_source__gce_persistent_disk) -> ()

let yojson_of_spec__persistent_volume_source__gce_persistent_disk =
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pd_name in
         ("pd_name", arg) :: bnds
       in
       let bnds =
         match v_partition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__gce_persistent_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__gce_persistent_disk

[@@@deriving.end]

type spec__persistent_volume_source__glusterfs = {
  endpoints_name : string prop;
  path : string prop;
  read_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__glusterfs) -> ()

let yojson_of_spec__persistent_volume_source__glusterfs =
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
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
    : spec__persistent_volume_source__glusterfs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__glusterfs

[@@@deriving.end]

type spec__persistent_volume_source__host_path = {
  path : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__host_path) -> ()

let yojson_of_spec__persistent_volume_source__host_path =
  (function
   | { path = v_path; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__host_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__host_path

[@@@deriving.end]

type spec__persistent_volume_source__iscsi = {
  fs_type : string prop option; [@option]
  iqn : string prop;
  iscsi_interface : string prop option; [@option]
  lun : float prop option; [@option]
  read_only : bool prop option; [@option]
  target_portal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__iscsi) -> ()

let yojson_of_spec__persistent_volume_source__iscsi =
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lun with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lun", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iscsi_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iscsi_interface", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iqn in
         ("iqn", arg) :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__iscsi ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__iscsi

[@@@deriving.end]

type spec__persistent_volume_source__local = {
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__local) -> ()

let yojson_of_spec__persistent_volume_source__local =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__local ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__local

[@@@deriving.end]

type spec__persistent_volume_source__nfs = {
  path : string prop;
  read_only : bool prop option; [@option]
  server : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__nfs) -> ()

let yojson_of_spec__persistent_volume_source__nfs =
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__nfs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__nfs

[@@@deriving.end]

type spec__persistent_volume_source__photon_persistent_disk = {
  fs_type : string prop option; [@option]
  pd_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__persistent_volume_source__photon_persistent_disk) ->
  ()

let yojson_of_spec__persistent_volume_source__photon_persistent_disk
    =
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
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__photon_persistent_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__persistent_volume_source__photon_persistent_disk

[@@@deriving.end]

type spec__persistent_volume_source__quobyte = {
  group : string prop option; [@option]
  read_only : bool prop option; [@option]
  registry : string prop;
  user : string prop option; [@option]
  volume : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__quobyte) -> ()

let yojson_of_spec__persistent_volume_source__quobyte =
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
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry in
         ("registry", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__quobyte ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__quobyte

[@@@deriving.end]

type spec__persistent_volume_source__rbd__secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__persistent_volume_source__rbd__secret_ref) -> ()

let yojson_of_spec__persistent_volume_source__rbd__secret_ref =
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__rbd__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__rbd__secret_ref

[@@@deriving.end]

type spec__persistent_volume_source__rbd = {
  ceph_monitors : string prop list;
  fs_type : string prop option; [@option]
  keyring : string prop option; [@option]
  rados_user : string prop option; [@option]
  rbd_image : string prop;
  rbd_pool : string prop option; [@option]
  read_only : bool prop option; [@option]
  secret_ref : spec__persistent_volume_source__rbd__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source__rbd) -> ()

let yojson_of_spec__persistent_volume_source__rbd =
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
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__rbd__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rbd_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rbd_pool", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rbd_image in
         ("rbd_image", arg) :: bnds
       in
       let bnds =
         match v_rados_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rados_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keyring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keyring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ceph_monitors
         in
         ("ceph_monitors", arg) :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__rbd ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__rbd

[@@@deriving.end]

type spec__persistent_volume_source__vsphere_volume = {
  fs_type : string prop option; [@option]
  volume_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__persistent_volume_source__vsphere_volume) -> ()

let yojson_of_spec__persistent_volume_source__vsphere_volume =
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
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source__vsphere_volume ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source__vsphere_volume

[@@@deriving.end]

type spec__persistent_volume_source = {
  aws_elastic_block_store :
    spec__persistent_volume_source__aws_elastic_block_store list;
  azure_disk : spec__persistent_volume_source__azure_disk list;
  azure_file : spec__persistent_volume_source__azure_file list;
  ceph_fs : spec__persistent_volume_source__ceph_fs list;
  cinder : spec__persistent_volume_source__cinder list;
  csi : spec__persistent_volume_source__csi list;
  fc : spec__persistent_volume_source__fc list;
  flex_volume : spec__persistent_volume_source__flex_volume list;
  flocker : spec__persistent_volume_source__flocker list;
  gce_persistent_disk :
    spec__persistent_volume_source__gce_persistent_disk list;
  glusterfs : spec__persistent_volume_source__glusterfs list;
  host_path : spec__persistent_volume_source__host_path list;
  iscsi : spec__persistent_volume_source__iscsi list;
  local : spec__persistent_volume_source__local list;
  nfs : spec__persistent_volume_source__nfs list;
  photon_persistent_disk :
    spec__persistent_volume_source__photon_persistent_disk list;
  quobyte : spec__persistent_volume_source__quobyte list;
  rbd : spec__persistent_volume_source__rbd list;
  vsphere_volume :
    spec__persistent_volume_source__vsphere_volume list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__persistent_volume_source) -> ()

let yojson_of_spec__persistent_volume_source =
  (function
   | {
       aws_elastic_block_store = v_aws_elastic_block_store;
       azure_disk = v_azure_disk;
       azure_file = v_azure_file;
       ceph_fs = v_ceph_fs;
       cinder = v_cinder;
       csi = v_csi;
       fc = v_fc;
       flex_volume = v_flex_volume;
       flocker = v_flocker;
       gce_persistent_disk = v_gce_persistent_disk;
       glusterfs = v_glusterfs;
       host_path = v_host_path;
       iscsi = v_iscsi;
       local = v_local;
       nfs = v_nfs;
       photon_persistent_disk = v_photon_persistent_disk;
       quobyte = v_quobyte;
       rbd = v_rbd;
       vsphere_volume = v_vsphere_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__vsphere_volume
             v_vsphere_volume
         in
         ("vsphere_volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__rbd v_rbd
         in
         ("rbd", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__quobyte
             v_quobyte
         in
         ("quobyte", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__photon_persistent_disk
             v_photon_persistent_disk
         in
         ("photon_persistent_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__nfs v_nfs
         in
         ("nfs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__local v_local
         in
         ("local", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__iscsi v_iscsi
         in
         ("iscsi", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__host_path
             v_host_path
         in
         ("host_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__glusterfs
             v_glusterfs
         in
         ("glusterfs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__gce_persistent_disk
             v_gce_persistent_disk
         in
         ("gce_persistent_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__flocker
             v_flocker
         in
         ("flocker", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__flex_volume
             v_flex_volume
         in
         ("flex_volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__fc v_fc
         in
         ("fc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__csi v_csi
         in
         ("csi", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__cinder
             v_cinder
         in
         ("cinder", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__ceph_fs
             v_ceph_fs
         in
         ("ceph_fs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__azure_file
             v_azure_file
         in
         ("azure_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__azure_disk
             v_azure_disk
         in
         ("azure_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__persistent_volume_source__aws_elastic_block_store
             v_aws_elastic_block_store
         in
         ("aws_elastic_block_store", arg) :: bnds
       in
       `Assoc bnds
    : spec__persistent_volume_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__persistent_volume_source

[@@@deriving.end]

type spec = {
  access_modes : string prop list;
  capacity : (string * string prop) list;
  mount_options : string prop list option; [@option]
  persistent_volume_reclaim_policy : string prop option; [@option]
  storage_class_name : string prop option; [@option]
  volume_mode : string prop option; [@option]
  claim_ref : spec__claim_ref list;
  node_affinity : spec__node_affinity list;
  persistent_volume_source : spec__persistent_volume_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       access_modes = v_access_modes;
       capacity = v_capacity;
       mount_options = v_mount_options;
       persistent_volume_reclaim_policy =
         v_persistent_volume_reclaim_policy;
       storage_class_name = v_storage_class_name;
       volume_mode = v_volume_mode;
       claim_ref = v_claim_ref;
       node_affinity = v_node_affinity;
       persistent_volume_source = v_persistent_volume_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__persistent_volume_source
             v_persistent_volume_source
         in
         ("persistent_volume_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__node_affinity
             v_node_affinity
         in
         ("node_affinity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__claim_ref v_claim_ref
         in
         ("claim_ref", arg) :: bnds
       in
       let bnds =
         match v_volume_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_class_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_persistent_volume_reclaim_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "persistent_volume_reclaim_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mount_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "mount_options", arg in
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
             v_capacity
         in
         ("capacity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_access_modes
         in
         ("access_modes", arg) :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type kubernetes_persistent_volume_v1 = {
  id : string prop option; [@option]
  metadata : metadata list;
  spec : spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_persistent_volume_v1) -> ()

let yojson_of_kubernetes_persistent_volume_v1 =
  (function
   | { id = v_id; metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
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
    : kubernetes_persistent_volume_v1 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_persistent_volume_v1

[@@@deriving.end]

let metadata ?annotations ?labels ?name () : metadata =
  { annotations; labels; name }

let spec__claim_ref ?namespace ~name () : spec__claim_ref =
  { name; namespace }

let spec__node_affinity__required__node_selector_term__match_expressions
    ?values ~key ~operator () :
    spec__node_affinity__required__node_selector_term__match_expressions
    =
  { key; operator; values }

let spec__node_affinity__required__node_selector_term__match_fields
    ?values ~key ~operator () :
    spec__node_affinity__required__node_selector_term__match_fields =
  { key; operator; values }

let spec__node_affinity__required__node_selector_term
    ~match_expressions ~match_fields () :
    spec__node_affinity__required__node_selector_term =
  { match_expressions; match_fields }

let spec__node_affinity__required ~node_selector_term () :
    spec__node_affinity__required =
  { node_selector_term }

let spec__node_affinity ~required () : spec__node_affinity =
  { required }

let spec__persistent_volume_source__aws_elastic_block_store ?fs_type
    ?partition ?read_only ~volume_id () :
    spec__persistent_volume_source__aws_elastic_block_store =
  { fs_type; partition; read_only; volume_id }

let spec__persistent_volume_source__azure_disk ?fs_type ?kind
    ?read_only ~caching_mode ~data_disk_uri ~disk_name () :
    spec__persistent_volume_source__azure_disk =
  {
    caching_mode;
    data_disk_uri;
    disk_name;
    fs_type;
    kind;
    read_only;
  }

let spec__persistent_volume_source__azure_file ?read_only
    ?secret_namespace ~secret_name ~share_name () :
    spec__persistent_volume_source__azure_file =
  { read_only; secret_name; secret_namespace; share_name }

let spec__persistent_volume_source__ceph_fs__secret_ref ?name
    ?namespace () :
    spec__persistent_volume_source__ceph_fs__secret_ref =
  { name; namespace }

let spec__persistent_volume_source__ceph_fs ?path ?read_only
    ?secret_file ?user ~monitors ~secret_ref () :
    spec__persistent_volume_source__ceph_fs =
  { monitors; path; read_only; secret_file; user; secret_ref }

let spec__persistent_volume_source__cinder ?fs_type ?read_only
    ~volume_id () : spec__persistent_volume_source__cinder =
  { fs_type; read_only; volume_id }

let spec__persistent_volume_source__csi__controller_expand_secret_ref
    ?name ?namespace () :
    spec__persistent_volume_source__csi__controller_expand_secret_ref
    =
  { name; namespace }

let spec__persistent_volume_source__csi__controller_publish_secret_ref
    ?name ?namespace () :
    spec__persistent_volume_source__csi__controller_publish_secret_ref
    =
  { name; namespace }

let spec__persistent_volume_source__csi__node_publish_secret_ref
    ?name ?namespace () :
    spec__persistent_volume_source__csi__node_publish_secret_ref =
  { name; namespace }

let spec__persistent_volume_source__csi__node_stage_secret_ref ?name
    ?namespace () :
    spec__persistent_volume_source__csi__node_stage_secret_ref =
  { name; namespace }

let spec__persistent_volume_source__csi ?fs_type ?read_only
    ?volume_attributes ~driver ~volume_handle
    ~controller_expand_secret_ref ~controller_publish_secret_ref
    ~node_publish_secret_ref ~node_stage_secret_ref () :
    spec__persistent_volume_source__csi =
  {
    driver;
    fs_type;
    read_only;
    volume_attributes;
    volume_handle;
    controller_expand_secret_ref;
    controller_publish_secret_ref;
    node_publish_secret_ref;
    node_stage_secret_ref;
  }

let spec__persistent_volume_source__fc ?fs_type ?read_only ~lun
    ~target_ww_ns () : spec__persistent_volume_source__fc =
  { fs_type; lun; read_only; target_ww_ns }

let spec__persistent_volume_source__flex_volume__secret_ref ?name
    ?namespace () :
    spec__persistent_volume_source__flex_volume__secret_ref =
  { name; namespace }

let spec__persistent_volume_source__flex_volume ?fs_type ?options
    ?read_only ~driver ~secret_ref () :
    spec__persistent_volume_source__flex_volume =
  { driver; fs_type; options; read_only; secret_ref }

let spec__persistent_volume_source__flocker ?dataset_name
    ?dataset_uuid () : spec__persistent_volume_source__flocker =
  { dataset_name; dataset_uuid }

let spec__persistent_volume_source__gce_persistent_disk ?fs_type
    ?partition ?read_only ~pd_name () :
    spec__persistent_volume_source__gce_persistent_disk =
  { fs_type; partition; pd_name; read_only }

let spec__persistent_volume_source__glusterfs ?read_only
    ~endpoints_name ~path () :
    spec__persistent_volume_source__glusterfs =
  { endpoints_name; path; read_only }

let spec__persistent_volume_source__host_path ?path ?type_ () :
    spec__persistent_volume_source__host_path =
  { path; type_ }

let spec__persistent_volume_source__iscsi ?fs_type ?iscsi_interface
    ?lun ?read_only ~iqn ~target_portal () :
    spec__persistent_volume_source__iscsi =
  { fs_type; iqn; iscsi_interface; lun; read_only; target_portal }

let spec__persistent_volume_source__local ?path () :
    spec__persistent_volume_source__local =
  { path }

let spec__persistent_volume_source__nfs ?read_only ~path ~server () :
    spec__persistent_volume_source__nfs =
  { path; read_only; server }

let spec__persistent_volume_source__photon_persistent_disk ?fs_type
    ~pd_id () :
    spec__persistent_volume_source__photon_persistent_disk =
  { fs_type; pd_id }

let spec__persistent_volume_source__quobyte ?group ?read_only ?user
    ~registry ~volume () : spec__persistent_volume_source__quobyte =
  { group; read_only; registry; user; volume }

let spec__persistent_volume_source__rbd__secret_ref ?name ?namespace
    () : spec__persistent_volume_source__rbd__secret_ref =
  { name; namespace }

let spec__persistent_volume_source__rbd ?fs_type ?keyring ?rados_user
    ?rbd_pool ?read_only ~ceph_monitors ~rbd_image ~secret_ref () :
    spec__persistent_volume_source__rbd =
  {
    ceph_monitors;
    fs_type;
    keyring;
    rados_user;
    rbd_image;
    rbd_pool;
    read_only;
    secret_ref;
  }

let spec__persistent_volume_source__vsphere_volume ?fs_type
    ~volume_path () : spec__persistent_volume_source__vsphere_volume
    =
  { fs_type; volume_path }

let spec__persistent_volume_source ~aws_elastic_block_store
    ~azure_disk ~azure_file ~ceph_fs ~cinder ~csi ~fc ~flex_volume
    ~flocker ~gce_persistent_disk ~glusterfs ~host_path ~iscsi ~local
    ~nfs ~photon_persistent_disk ~quobyte ~rbd ~vsphere_volume () :
    spec__persistent_volume_source =
  {
    aws_elastic_block_store;
    azure_disk;
    azure_file;
    ceph_fs;
    cinder;
    csi;
    fc;
    flex_volume;
    flocker;
    gce_persistent_disk;
    glusterfs;
    host_path;
    iscsi;
    local;
    nfs;
    photon_persistent_disk;
    quobyte;
    rbd;
    vsphere_volume;
  }

let spec ?mount_options ?persistent_volume_reclaim_policy
    ?storage_class_name ?volume_mode ~access_modes ~capacity
    ~claim_ref ~node_affinity ~persistent_volume_source () : spec =
  {
    access_modes;
    capacity;
    mount_options;
    persistent_volume_reclaim_policy;
    storage_class_name;
    volume_mode;
    claim_ref;
    node_affinity;
    persistent_volume_source;
  }

let kubernetes_persistent_volume_v1 ?id ~metadata ~spec () :
    kubernetes_persistent_volume_v1 =
  { id; metadata; spec }

type t = { id : string prop }

let make ?id ~metadata ~spec __id =
  let __type = "kubernetes_persistent_volume_v1" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_persistent_volume_v1
        (kubernetes_persistent_volume_v1 ?id ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~spec __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~spec __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
