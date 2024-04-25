(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_filter__exclusion_labels = {
  labels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_filter__exclusion_labels) -> ()

let yojson_of_instance_filter__exclusion_labels =
  (function
   | { labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : instance_filter__exclusion_labels ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_filter__exclusion_labels

[@@@deriving.end]

type instance_filter__inclusion_labels = {
  labels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_filter__inclusion_labels) -> ()

let yojson_of_instance_filter__inclusion_labels =
  (function
   | { labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : instance_filter__inclusion_labels ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_filter__inclusion_labels

[@@@deriving.end]

type instance_filter__inventories = {
  os_short_name : string prop;
  os_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_filter__inventories) -> ()

let yojson_of_instance_filter__inventories =
  (function
   | { os_short_name = v_os_short_name; os_version = v_os_version }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_os_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_short_name in
         ("os_short_name", arg) :: bnds
       in
       `Assoc bnds
    : instance_filter__inventories ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_filter__inventories

[@@@deriving.end]

type instance_filter = {
  all : bool prop option; [@option]
  exclusion_labels : instance_filter__exclusion_labels list;
  inclusion_labels : instance_filter__inclusion_labels list;
  inventories : instance_filter__inventories list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_filter) -> ()

let yojson_of_instance_filter =
  (function
   | {
       all = v_all;
       exclusion_labels = v_exclusion_labels;
       inclusion_labels = v_inclusion_labels;
       inventories = v_inventories;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_instance_filter__inventories
             v_inventories
         in
         ("inventories", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_instance_filter__inclusion_labels
             v_inclusion_labels
         in
         ("inclusion_labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_instance_filter__exclusion_labels
             v_exclusion_labels
         in
         ("exclusion_labels", arg) :: bnds
       in
       let bnds =
         match v_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_filter

[@@@deriving.end]

type os_policies__resource_groups__inventory_filters = {
  os_short_name : string prop;
  os_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__inventory_filters) -> ()

let yojson_of_os_policies__resource_groups__inventory_filters =
  (function
   | { os_short_name = v_os_short_name; os_version = v_os_version }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_os_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_short_name in
         ("os_short_name", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__inventory_filters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__inventory_filters

[@@@deriving.end]

type os_policies__resource_groups__resources__exec__enforce__file__gcs = {
  bucket : string prop;
  generation : float prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__exec__enforce__file__gcs) ->
  ()

let yojson_of_os_policies__resource_groups__resources__exec__enforce__file__gcs
    =
  (function
   | {
       bucket = v_bucket;
       generation = v_generation;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec__enforce__file__gcs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__exec__enforce__file__gcs

[@@@deriving.end]

type os_policies__resource_groups__resources__exec__enforce__file__remote = {
  sha256_checksum : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__exec__enforce__file__remote) ->
  ()

let yojson_of_os_policies__resource_groups__resources__exec__enforce__file__remote
    =
  (function
   | { sha256_checksum = v_sha256_checksum; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_sha256_checksum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha256_checksum", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec__enforce__file__remote ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__exec__enforce__file__remote

[@@@deriving.end]

type os_policies__resource_groups__resources__exec__enforce__file = {
  allow_insecure : bool prop option; [@option]
  local_path : string prop option; [@option]
  gcs :
    os_policies__resource_groups__resources__exec__enforce__file__gcs
    list;
  remote :
    os_policies__resource_groups__resources__exec__enforce__file__remote
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__exec__enforce__file) ->
  ()

let yojson_of_os_policies__resource_groups__resources__exec__enforce__file
    =
  (function
   | {
       allow_insecure = v_allow_insecure;
       local_path = v_local_path;
       gcs = v_gcs;
       remote = v_remote;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec__enforce__file__remote
             v_remote
         in
         ("remote", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec__enforce__file__gcs
             v_gcs
         in
         ("gcs", arg) :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_insecure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec__enforce__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__exec__enforce__file

[@@@deriving.end]

type os_policies__resource_groups__resources__exec__enforce = {
  args : string prop list option; [@option]
  interpreter : string prop;
  output_file_path : string prop option; [@option]
  script : string prop option; [@option]
  file :
    os_policies__resource_groups__resources__exec__enforce__file list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__exec__enforce) ->
  ()

let yojson_of_os_policies__resource_groups__resources__exec__enforce
    =
  (function
   | {
       args = v_args;
       interpreter = v_interpreter;
       output_file_path = v_output_file_path;
       script = v_script;
       file = v_file;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec__enforce__file
             v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         match v_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interpreter in
         ("interpreter", arg) :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec__enforce ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__exec__enforce

[@@@deriving.end]

type os_policies__resource_groups__resources__exec__validate__file__gcs = {
  bucket : string prop;
  generation : float prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__exec__validate__file__gcs) ->
  ()

let yojson_of_os_policies__resource_groups__resources__exec__validate__file__gcs
    =
  (function
   | {
       bucket = v_bucket;
       generation = v_generation;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec__validate__file__gcs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__exec__validate__file__gcs

[@@@deriving.end]

type os_policies__resource_groups__resources__exec__validate__file__remote = {
  sha256_checksum : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__exec__validate__file__remote) ->
  ()

let yojson_of_os_policies__resource_groups__resources__exec__validate__file__remote
    =
  (function
   | { sha256_checksum = v_sha256_checksum; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_sha256_checksum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha256_checksum", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec__validate__file__remote ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__exec__validate__file__remote

[@@@deriving.end]

type os_policies__resource_groups__resources__exec__validate__file = {
  allow_insecure : bool prop option; [@option]
  local_path : string prop option; [@option]
  gcs :
    os_policies__resource_groups__resources__exec__validate__file__gcs
    list;
  remote :
    os_policies__resource_groups__resources__exec__validate__file__remote
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__exec__validate__file) ->
  ()

let yojson_of_os_policies__resource_groups__resources__exec__validate__file
    =
  (function
   | {
       allow_insecure = v_allow_insecure;
       local_path = v_local_path;
       gcs = v_gcs;
       remote = v_remote;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec__validate__file__remote
             v_remote
         in
         ("remote", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec__validate__file__gcs
             v_gcs
         in
         ("gcs", arg) :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_insecure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec__validate__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__exec__validate__file

[@@@deriving.end]

type os_policies__resource_groups__resources__exec__validate = {
  args : string prop list option; [@option]
  interpreter : string prop;
  output_file_path : string prop option; [@option]
  script : string prop option; [@option]
  file :
    os_policies__resource_groups__resources__exec__validate__file
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__exec__validate) ->
  ()

let yojson_of_os_policies__resource_groups__resources__exec__validate
    =
  (function
   | {
       args = v_args;
       interpreter = v_interpreter;
       output_file_path = v_output_file_path;
       script = v_script;
       file = v_file;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec__validate__file
             v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         match v_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interpreter in
         ("interpreter", arg) :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec__validate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__exec__validate

[@@@deriving.end]

type os_policies__resource_groups__resources__exec = {
  enforce :
    os_policies__resource_groups__resources__exec__enforce list;
  validate :
    os_policies__resource_groups__resources__exec__validate list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_policies__resource_groups__resources__exec) -> ()

let yojson_of_os_policies__resource_groups__resources__exec =
  (function
   | { enforce = v_enforce; validate = v_validate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec__validate
             v_validate
         in
         ("validate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec__enforce
             v_enforce
         in
         ("enforce", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__exec

[@@@deriving.end]

type os_policies__resource_groups__resources__file__file__gcs = {
  bucket : string prop;
  generation : float prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__file__file__gcs) ->
  ()

let yojson_of_os_policies__resource_groups__resources__file__file__gcs
    =
  (function
   | {
       bucket = v_bucket;
       generation = v_generation;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__file__file__gcs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__file__file__gcs

[@@@deriving.end]

type os_policies__resource_groups__resources__file__file__remote = {
  sha256_checksum : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__file__file__remote) ->
  ()

let yojson_of_os_policies__resource_groups__resources__file__file__remote
    =
  (function
   | { sha256_checksum = v_sha256_checksum; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_sha256_checksum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha256_checksum", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__file__file__remote ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__file__file__remote

[@@@deriving.end]

type os_policies__resource_groups__resources__file__file = {
  allow_insecure : bool prop option; [@option]
  local_path : string prop option; [@option]
  gcs :
    os_policies__resource_groups__resources__file__file__gcs list;
  remote :
    os_policies__resource_groups__resources__file__file__remote list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__file__file) -> ()

let yojson_of_os_policies__resource_groups__resources__file__file =
  (function
   | {
       allow_insecure = v_allow_insecure;
       local_path = v_local_path;
       gcs = v_gcs;
       remote = v_remote;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__file__file__remote
             v_remote
         in
         ("remote", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__file__file__gcs
             v_gcs
         in
         ("gcs", arg) :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_insecure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__file__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__file__file

[@@@deriving.end]

type os_policies__resource_groups__resources__file = {
  content : string prop option; [@option]
  path : string prop;
  state : string prop;
  file : os_policies__resource_groups__resources__file__file list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_policies__resource_groups__resources__file) -> ()

let yojson_of_os_policies__resource_groups__resources__file =
  (function
   | {
       content = v_content;
       path = v_path;
       state = v_state;
       file = v_file;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__file__file
             v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__file

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__apt = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__apt) -> ()

let yojson_of_os_policies__resource_groups__resources__pkg__apt =
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
    : os_policies__resource_groups__resources__pkg__apt ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__pkg__apt

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__deb__source__gcs = {
  bucket : string prop;
  generation : float prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__pkg__deb__source__gcs) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__deb__source__gcs
    =
  (function
   | {
       bucket = v_bucket;
       generation = v_generation;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__deb__source__gcs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__deb__source__gcs

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__deb__source__remote = {
  sha256_checksum : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__pkg__deb__source__remote) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__deb__source__remote
    =
  (function
   | { sha256_checksum = v_sha256_checksum; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_sha256_checksum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha256_checksum", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__deb__source__remote ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__deb__source__remote

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__deb__source = {
  allow_insecure : bool prop option; [@option]
  local_path : string prop option; [@option]
  gcs :
    os_policies__resource_groups__resources__pkg__deb__source__gcs
    list;
  remote :
    os_policies__resource_groups__resources__pkg__deb__source__remote
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__deb__source) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__deb__source
    =
  (function
   | {
       allow_insecure = v_allow_insecure;
       local_path = v_local_path;
       gcs = v_gcs;
       remote = v_remote;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__deb__source__remote
             v_remote
         in
         ("remote", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__deb__source__gcs
             v_gcs
         in
         ("gcs", arg) :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_insecure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__deb__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__deb__source

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__deb = {
  pull_deps : bool prop option; [@option]
  source :
    os_policies__resource_groups__resources__pkg__deb__source list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__deb) -> ()

let yojson_of_os_policies__resource_groups__resources__pkg__deb =
  (function
   | { pull_deps = v_pull_deps; source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__deb__source
             v_source
         in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_pull_deps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "pull_deps", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__deb ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__pkg__deb

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__googet = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__googet) -> ()

let yojson_of_os_policies__resource_groups__resources__pkg__googet =
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
    : os_policies__resource_groups__resources__pkg__googet ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__googet

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__msi__source__gcs = {
  bucket : string prop;
  generation : float prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__pkg__msi__source__gcs) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__msi__source__gcs
    =
  (function
   | {
       bucket = v_bucket;
       generation = v_generation;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__msi__source__gcs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__msi__source__gcs

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__msi__source__remote = {
  sha256_checksum : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__pkg__msi__source__remote) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__msi__source__remote
    =
  (function
   | { sha256_checksum = v_sha256_checksum; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_sha256_checksum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha256_checksum", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__msi__source__remote ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__msi__source__remote

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__msi__source = {
  allow_insecure : bool prop option; [@option]
  local_path : string prop option; [@option]
  gcs :
    os_policies__resource_groups__resources__pkg__msi__source__gcs
    list;
  remote :
    os_policies__resource_groups__resources__pkg__msi__source__remote
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__msi__source) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__msi__source
    =
  (function
   | {
       allow_insecure = v_allow_insecure;
       local_path = v_local_path;
       gcs = v_gcs;
       remote = v_remote;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__msi__source__remote
             v_remote
         in
         ("remote", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__msi__source__gcs
             v_gcs
         in
         ("gcs", arg) :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_insecure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__msi__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__msi__source

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__msi = {
  properties : string prop list option; [@option]
  source :
    os_policies__resource_groups__resources__pkg__msi__source list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__msi) -> ()

let yojson_of_os_policies__resource_groups__resources__pkg__msi =
  (function
   | { properties = v_properties; source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__msi__source
             v_source
         in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__msi ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__pkg__msi

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__rpm__source__gcs = {
  bucket : string prop;
  generation : float prop option; [@option]
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__pkg__rpm__source__gcs) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__rpm__source__gcs
    =
  (function
   | {
       bucket = v_bucket;
       generation = v_generation;
       object_ = v_object_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         match v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "generation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__rpm__source__gcs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__rpm__source__gcs

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__rpm__source__remote = {
  sha256_checksum : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__pkg__rpm__source__remote) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__rpm__source__remote
    =
  (function
   | { sha256_checksum = v_sha256_checksum; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_sha256_checksum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha256_checksum", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__rpm__source__remote ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__rpm__source__remote

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__rpm__source = {
  allow_insecure : bool prop option; [@option]
  local_path : string prop option; [@option]
  gcs :
    os_policies__resource_groups__resources__pkg__rpm__source__gcs
    list;
  remote :
    os_policies__resource_groups__resources__pkg__rpm__source__remote
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__rpm__source) ->
  ()

let yojson_of_os_policies__resource_groups__resources__pkg__rpm__source
    =
  (function
   | {
       allow_insecure = v_allow_insecure;
       local_path = v_local_path;
       gcs = v_gcs;
       remote = v_remote;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__rpm__source__remote
             v_remote
         in
         ("remote", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__rpm__source__gcs
             v_gcs
         in
         ("gcs", arg) :: bnds
       in
       let bnds =
         match v_local_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_insecure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__rpm__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__rpm__source

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__rpm = {
  pull_deps : bool prop option; [@option]
  source :
    os_policies__resource_groups__resources__pkg__rpm__source list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__rpm) -> ()

let yojson_of_os_policies__resource_groups__resources__pkg__rpm =
  (function
   | { pull_deps = v_pull_deps; source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__rpm__source
             v_source
         in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_pull_deps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "pull_deps", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg__rpm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__pkg__rpm

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__yum = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__yum) -> ()

let yojson_of_os_policies__resource_groups__resources__pkg__yum =
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
    : os_policies__resource_groups__resources__pkg__yum ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__pkg__yum

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg__zypper = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__pkg__zypper) -> ()

let yojson_of_os_policies__resource_groups__resources__pkg__zypper =
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
    : os_policies__resource_groups__resources__pkg__zypper ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__pkg__zypper

[@@@deriving.end]

type os_policies__resource_groups__resources__pkg = {
  desired_state : string prop;
  apt : os_policies__resource_groups__resources__pkg__apt list;
  deb : os_policies__resource_groups__resources__pkg__deb list;
  googet : os_policies__resource_groups__resources__pkg__googet list;
  msi : os_policies__resource_groups__resources__pkg__msi list;
  rpm : os_policies__resource_groups__resources__pkg__rpm list;
  yum : os_policies__resource_groups__resources__pkg__yum list;
  zypper : os_policies__resource_groups__resources__pkg__zypper list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_policies__resource_groups__resources__pkg) -> ()

let yojson_of_os_policies__resource_groups__resources__pkg =
  (function
   | {
       desired_state = v_desired_state;
       apt = v_apt;
       deb = v_deb;
       googet = v_googet;
       msi = v_msi;
       rpm = v_rpm;
       yum = v_yum;
       zypper = v_zypper;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__zypper
             v_zypper
         in
         ("zypper", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__yum
             v_yum
         in
         ("yum", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__rpm
             v_rpm
         in
         ("rpm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__msi
             v_msi
         in
         ("msi", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__googet
             v_googet
         in
         ("googet", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__deb
             v_deb
         in
         ("deb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg__apt
             v_apt
         in
         ("apt", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_desired_state in
         ("desired_state", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__pkg ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__pkg

[@@@deriving.end]

type os_policies__resource_groups__resources__repository__apt = {
  archive_type : string prop;
  components : string prop list;
  distribution : string prop;
  gpg_key : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__repository__apt) ->
  ()

let yojson_of_os_policies__resource_groups__resources__repository__apt
    =
  (function
   | {
       archive_type = v_archive_type;
       components = v_components;
       distribution = v_distribution;
       gpg_key = v_gpg_key;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_gpg_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gpg_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_distribution in
         ("distribution", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_components
         in
         ("components", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_archive_type in
         ("archive_type", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__repository__apt ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__repository__apt

[@@@deriving.end]

type os_policies__resource_groups__resources__repository__goo = {
  name : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__repository__goo) ->
  ()

let yojson_of_os_policies__resource_groups__resources__repository__goo
    =
  (function
   | { name = v_name; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__repository__goo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__repository__goo

[@@@deriving.end]

type os_policies__resource_groups__resources__repository__yum = {
  base_url : string prop;
  display_name : string prop option; [@option]
  gpg_keys : string prop list option; [@option]
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__repository__yum) ->
  ()

let yojson_of_os_policies__resource_groups__resources__repository__yum
    =
  (function
   | {
       base_url = v_base_url;
       display_name = v_display_name;
       gpg_keys = v_gpg_keys;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_gpg_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "gpg_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_base_url in
         ("base_url", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__repository__yum ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__repository__yum

[@@@deriving.end]

type os_policies__resource_groups__resources__repository__zypper = {
  base_url : string prop;
  display_name : string prop option; [@option]
  gpg_keys : string prop list option; [@option]
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_policies__resource_groups__resources__repository__zypper) ->
  ()

let yojson_of_os_policies__resource_groups__resources__repository__zypper
    =
  (function
   | {
       base_url = v_base_url;
       display_name = v_display_name;
       gpg_keys = v_gpg_keys;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_gpg_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "gpg_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_base_url in
         ("base_url", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__repository__zypper ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_policies__resource_groups__resources__repository__zypper

[@@@deriving.end]

type os_policies__resource_groups__resources__repository = {
  apt :
    os_policies__resource_groups__resources__repository__apt list;
  goo :
    os_policies__resource_groups__resources__repository__goo list;
  yum :
    os_policies__resource_groups__resources__repository__yum list;
  zypper :
    os_policies__resource_groups__resources__repository__zypper list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_policies__resource_groups__resources__repository) -> ()

let yojson_of_os_policies__resource_groups__resources__repository =
  (function
   | { apt = v_apt; goo = v_goo; yum = v_yum; zypper = v_zypper } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__repository__zypper
             v_zypper
         in
         ("zypper", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__repository__yum
             v_yum
         in
         ("yum", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__repository__goo
             v_goo
         in
         ("goo", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__repository__apt
             v_apt
         in
         ("apt", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources__repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources__repository

[@@@deriving.end]

type os_policies__resource_groups__resources = {
  id : string prop;
  exec : os_policies__resource_groups__resources__exec list;
  file : os_policies__resource_groups__resources__file list;
  pkg : os_policies__resource_groups__resources__pkg list;
  repository :
    os_policies__resource_groups__resources__repository list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_policies__resource_groups__resources) -> ()

let yojson_of_os_policies__resource_groups__resources =
  (function
   | {
       id = v_id;
       exec = v_exec;
       file = v_file;
       pkg = v_pkg;
       repository = v_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__repository
             v_repository
         in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__pkg
             v_pkg
         in
         ("pkg", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__file
             v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups__resources

[@@@deriving.end]

type os_policies__resource_groups = {
  inventory_filters :
    os_policies__resource_groups__inventory_filters list;
  resources : os_policies__resource_groups__resources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_policies__resource_groups) -> ()

let yojson_of_os_policies__resource_groups =
  (function
   | {
       inventory_filters = v_inventory_filters;
       resources = v_resources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__resources
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_policies__resource_groups__inventory_filters
             v_inventory_filters
         in
         ("inventory_filters", arg) :: bnds
       in
       `Assoc bnds
    : os_policies__resource_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies__resource_groups

[@@@deriving.end]

type os_policies = {
  allow_no_resource_group_match : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop;
  mode : string prop;
  resource_groups : os_policies__resource_groups list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_policies) -> ()

let yojson_of_os_policies =
  (function
   | {
       allow_no_resource_group_match =
         v_allow_no_resource_group_match;
       description = v_description;
       id = v_id;
       mode = v_mode;
       resource_groups = v_resource_groups;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_policies__resource_groups
             v_resource_groups
         in
         ("resource_groups", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_no_resource_group_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_no_resource_group_match", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_policies

[@@@deriving.end]

type rollout__disruption_budget = {
  fixed : float prop option; [@option]
  percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rollout__disruption_budget) -> ()

let yojson_of_rollout__disruption_budget =
  (function
   | { fixed = v_fixed; percent = v_percent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fixed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fixed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rollout__disruption_budget -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rollout__disruption_budget

[@@@deriving.end]

type rollout = {
  min_wait_duration : string prop;
  disruption_budget : rollout__disruption_budget list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rollout) -> ()

let yojson_of_rollout =
  (function
   | {
       min_wait_duration = v_min_wait_duration;
       disruption_budget = v_disruption_budget;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rollout__disruption_budget
             v_disruption_budget
         in
         ("disruption_budget", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_wait_duration
         in
         ("min_wait_duration", arg) :: bnds
       in
       `Assoc bnds
    : rollout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rollout

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_os_config_os_policy_assignment = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  skip_await_rollout : bool prop option; [@option]
  instance_filter : instance_filter list;
  os_policies : os_policies list;
  rollout : rollout list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_os_config_os_policy_assignment) -> ()

let yojson_of_google_os_config_os_policy_assignment =
  (function
   | {
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       skip_await_rollout = v_skip_await_rollout;
       instance_filter = v_instance_filter;
       os_policies = v_os_policies;
       rollout = v_rollout;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rollout v_rollout in
         ("rollout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_policies v_os_policies
         in
         ("os_policies", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_instance_filter v_instance_filter
         in
         ("instance_filter", arg) :: bnds
       in
       let bnds =
         match v_skip_await_rollout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_await_rollout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_os_config_os_policy_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_os_config_os_policy_assignment

[@@@deriving.end]

let instance_filter__exclusion_labels ?labels () :
    instance_filter__exclusion_labels =
  { labels }

let instance_filter__inclusion_labels ?labels () :
    instance_filter__inclusion_labels =
  { labels }

let instance_filter__inventories ?os_version ~os_short_name () :
    instance_filter__inventories =
  { os_short_name; os_version }

let instance_filter ?all ?(exclusion_labels = [])
    ?(inclusion_labels = []) ?(inventories = []) () : instance_filter
    =
  { all; exclusion_labels; inclusion_labels; inventories }

let os_policies__resource_groups__inventory_filters ?os_version
    ~os_short_name () :
    os_policies__resource_groups__inventory_filters =
  { os_short_name; os_version }

let os_policies__resource_groups__resources__exec__enforce__file__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__exec__enforce__file__gcs
    =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__exec__enforce__file__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__exec__enforce__file__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__exec__enforce__file
    ?allow_insecure ?local_path ?(gcs = []) ?(remote = []) () :
    os_policies__resource_groups__resources__exec__enforce__file =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__exec__enforce ?args
    ?output_file_path ?script ?(file = []) ~interpreter () :
    os_policies__resource_groups__resources__exec__enforce =
  { args; interpreter; output_file_path; script; file }

let os_policies__resource_groups__resources__exec__validate__file__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__exec__validate__file__gcs
    =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__exec__validate__file__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__exec__validate__file__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__exec__validate__file
    ?allow_insecure ?local_path ?(gcs = []) ?(remote = []) () :
    os_policies__resource_groups__resources__exec__validate__file =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__exec__validate ?args
    ?output_file_path ?script ?(file = []) ~interpreter () :
    os_policies__resource_groups__resources__exec__validate =
  { args; interpreter; output_file_path; script; file }

let os_policies__resource_groups__resources__exec ?(enforce = [])
    ~validate () : os_policies__resource_groups__resources__exec =
  { enforce; validate }

let os_policies__resource_groups__resources__file__file__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__file__file__gcs =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__file__file__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__file__file__remote =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__file__file
    ?allow_insecure ?local_path ?(gcs = []) ?(remote = []) () :
    os_policies__resource_groups__resources__file__file =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__file ?content
    ?(file = []) ~path ~state () :
    os_policies__resource_groups__resources__file =
  { content; path; state; file }

let os_policies__resource_groups__resources__pkg__apt ~name () :
    os_policies__resource_groups__resources__pkg__apt =
  { name }

let os_policies__resource_groups__resources__pkg__deb__source__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__pkg__deb__source__gcs =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__pkg__deb__source__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__pkg__deb__source__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__pkg__deb__source
    ?allow_insecure ?local_path ?(gcs = []) ?(remote = []) () :
    os_policies__resource_groups__resources__pkg__deb__source =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__pkg__deb ?pull_deps
    ~source () : os_policies__resource_groups__resources__pkg__deb =
  { pull_deps; source }

let os_policies__resource_groups__resources__pkg__googet ~name () :
    os_policies__resource_groups__resources__pkg__googet =
  { name }

let os_policies__resource_groups__resources__pkg__msi__source__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__pkg__msi__source__gcs =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__pkg__msi__source__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__pkg__msi__source__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__pkg__msi__source
    ?allow_insecure ?local_path ?(gcs = []) ?(remote = []) () :
    os_policies__resource_groups__resources__pkg__msi__source =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__pkg__msi ?properties
    ~source () : os_policies__resource_groups__resources__pkg__msi =
  { properties; source }

let os_policies__resource_groups__resources__pkg__rpm__source__gcs
    ?generation ~bucket ~object_ () :
    os_policies__resource_groups__resources__pkg__rpm__source__gcs =
  { bucket; generation; object_ }

let os_policies__resource_groups__resources__pkg__rpm__source__remote
    ?sha256_checksum ~uri () :
    os_policies__resource_groups__resources__pkg__rpm__source__remote
    =
  { sha256_checksum; uri }

let os_policies__resource_groups__resources__pkg__rpm__source
    ?allow_insecure ?local_path ?(gcs = []) ?(remote = []) () :
    os_policies__resource_groups__resources__pkg__rpm__source =
  { allow_insecure; local_path; gcs; remote }

let os_policies__resource_groups__resources__pkg__rpm ?pull_deps
    ~source () : os_policies__resource_groups__resources__pkg__rpm =
  { pull_deps; source }

let os_policies__resource_groups__resources__pkg__yum ~name () :
    os_policies__resource_groups__resources__pkg__yum =
  { name }

let os_policies__resource_groups__resources__pkg__zypper ~name () :
    os_policies__resource_groups__resources__pkg__zypper =
  { name }

let os_policies__resource_groups__resources__pkg ?(apt = [])
    ?(deb = []) ?(googet = []) ?(msi = []) ?(rpm = []) ?(yum = [])
    ?(zypper = []) ~desired_state () :
    os_policies__resource_groups__resources__pkg =
  { desired_state; apt; deb; googet; msi; rpm; yum; zypper }

let os_policies__resource_groups__resources__repository__apt ?gpg_key
    ~archive_type ~components ~distribution ~uri () :
    os_policies__resource_groups__resources__repository__apt =
  { archive_type; components; distribution; gpg_key; uri }

let os_policies__resource_groups__resources__repository__goo ~name
    ~url () :
    os_policies__resource_groups__resources__repository__goo =
  { name; url }

let os_policies__resource_groups__resources__repository__yum
    ?display_name ?gpg_keys ~base_url ~id () :
    os_policies__resource_groups__resources__repository__yum =
  { base_url; display_name; gpg_keys; id }

let os_policies__resource_groups__resources__repository__zypper
    ?display_name ?gpg_keys ~base_url ~id () :
    os_policies__resource_groups__resources__repository__zypper =
  { base_url; display_name; gpg_keys; id }

let os_policies__resource_groups__resources__repository ?(apt = [])
    ?(goo = []) ?(yum = []) ?(zypper = []) () :
    os_policies__resource_groups__resources__repository =
  { apt; goo; yum; zypper }

let os_policies__resource_groups__resources ?(exec = []) ?(file = [])
    ?(pkg = []) ?(repository = []) ~id () :
    os_policies__resource_groups__resources =
  { id; exec; file; pkg; repository }

let os_policies__resource_groups ?(inventory_filters = []) ~resources
    () : os_policies__resource_groups =
  { inventory_filters; resources }

let os_policies ?allow_no_resource_group_match ?description ~id ~mode
    ~resource_groups () : os_policies =
  {
    allow_no_resource_group_match;
    description;
    id;
    mode;
    resource_groups;
  }

let rollout__disruption_budget ?fixed ?percent () :
    rollout__disruption_budget =
  { fixed; percent }

let rollout ~min_wait_duration ~disruption_budget () : rollout =
  { min_wait_duration; disruption_budget }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_os_config_os_policy_assignment ?description ?id ?project
    ?skip_await_rollout ?timeouts ~location ~name ~instance_filter
    ~os_policies ~rollout () : google_os_config_os_policy_assignment
    =
  {
    description;
    id;
    location;
    name;
    project;
    skip_await_rollout;
    instance_filter;
    os_policies;
    rollout;
    timeouts;
  }

type t = {
  baseline : bool prop;
  deleted : bool prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  revision_create_time : string prop;
  revision_id : string prop;
  rollout_state : string prop;
  skip_await_rollout : bool prop;
  uid : string prop;
}

let make ?description ?id ?project ?skip_await_rollout ?timeouts
    ~location ~name ~instance_filter ~os_policies ~rollout __id =
  let __type = "google_os_config_os_policy_assignment" in
  let __attrs =
    ({
       baseline = Prop.computed __type __id "baseline";
       deleted = Prop.computed __type __id "deleted";
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       revision_create_time =
         Prop.computed __type __id "revision_create_time";
       revision_id = Prop.computed __type __id "revision_id";
       rollout_state = Prop.computed __type __id "rollout_state";
       skip_await_rollout =
         Prop.computed __type __id "skip_await_rollout";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_os_config_os_policy_assignment
        (google_os_config_os_policy_assignment ?description ?id
           ?project ?skip_await_rollout ?timeouts ~location ~name
           ~instance_filter ~os_policies ~rollout ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?skip_await_rollout
    ?timeouts ~location ~name ~instance_filter ~os_policies ~rollout
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?skip_await_rollout ?timeouts
      ~location ~name ~instance_filter ~os_policies ~rollout __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
