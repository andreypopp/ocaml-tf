(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_filter__group_labels = {
  labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_filter__group_labels) -> ()

let yojson_of_instance_filter__group_labels =
  (function
   | { labels = v_labels } ->
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
       `Assoc bnds
    : instance_filter__group_labels ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_filter__group_labels

[@@@deriving.end]

type instance_filter = {
  all : bool prop option; [@option]
  instance_name_prefixes : string prop list option; [@option]
  instances : string prop list option; [@option]
  zones : string prop list option; [@option]
  group_labels : instance_filter__group_labels list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_filter) -> ()

let yojson_of_instance_filter =
  (function
   | {
       all = v_all;
       instance_name_prefixes = v_instance_name_prefixes;
       instances = v_instances;
       zones = v_zones;
       group_labels = v_group_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_group_labels then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_filter__group_labels)
               v_group_labels
           in
           let bnd = "group_labels", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_name_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_name_prefixes", arg in
             bnd :: bnds
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

type one_time_schedule = { execute_time : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : one_time_schedule) -> ()

let yojson_of_one_time_schedule =
  (function
   | { execute_time = v_execute_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_execute_time in
         ("execute_time", arg) :: bnds
       in
       `Assoc bnds
    : one_time_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_one_time_schedule

[@@@deriving.end]

type patch_config__apt = {
  excludes : string prop list option; [@option]
  exclusive_packages : string prop list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_config__apt) -> ()

let yojson_of_patch_config__apt =
  (function
   | {
       excludes = v_excludes;
       exclusive_packages = v_exclusive_packages;
       type_ = v_type_;
     } ->
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
         match v_exclusive_packages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusive_packages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config__apt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__apt

[@@@deriving.end]

type patch_config__goo = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_config__goo) -> ()

let yojson_of_patch_config__goo =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : patch_config__goo -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__goo

[@@@deriving.end]

type patch_config__post_step__linux_exec_step_config__gcs_object = {
  bucket : string prop;
  generation_number : string prop;
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       patch_config__post_step__linux_exec_step_config__gcs_object) ->
  ()

let yojson_of_patch_config__post_step__linux_exec_step_config__gcs_object
    =
  (function
   | {
       bucket = v_bucket;
       generation_number = v_generation_number;
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
         let arg =
           yojson_of_prop yojson_of_string v_generation_number
         in
         ("generation_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : patch_config__post_step__linux_exec_step_config__gcs_object ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_patch_config__post_step__linux_exec_step_config__gcs_object

[@@@deriving.end]

type patch_config__post_step__linux_exec_step_config = {
  allowed_success_codes : float prop list option; [@option]
  interpreter : string prop option; [@option]
  local_path : string prop option; [@option]
  gcs_object :
    patch_config__post_step__linux_exec_step_config__gcs_object list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : patch_config__post_step__linux_exec_step_config) -> ()

let yojson_of_patch_config__post_step__linux_exec_step_config =
  (function
   | {
       allowed_success_codes = v_allowed_success_codes;
       interpreter = v_interpreter;
       local_path = v_local_path;
       gcs_object = v_gcs_object;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_gcs_object then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_patch_config__post_step__linux_exec_step_config__gcs_object)
               v_gcs_object
           in
           let bnd = "gcs_object", arg in
           bnd :: bnds
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
         match v_interpreter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interpreter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_success_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "allowed_success_codes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config__post_step__linux_exec_step_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__post_step__linux_exec_step_config

[@@@deriving.end]

type patch_config__post_step__windows_exec_step_config__gcs_object = {
  bucket : string prop;
  generation_number : string prop;
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       patch_config__post_step__windows_exec_step_config__gcs_object) ->
  ()

let yojson_of_patch_config__post_step__windows_exec_step_config__gcs_object
    =
  (function
   | {
       bucket = v_bucket;
       generation_number = v_generation_number;
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
         let arg =
           yojson_of_prop yojson_of_string v_generation_number
         in
         ("generation_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : patch_config__post_step__windows_exec_step_config__gcs_object ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_patch_config__post_step__windows_exec_step_config__gcs_object

[@@@deriving.end]

type patch_config__post_step__windows_exec_step_config = {
  allowed_success_codes : float prop list option; [@option]
  interpreter : string prop option; [@option]
  local_path : string prop option; [@option]
  gcs_object :
    patch_config__post_step__windows_exec_step_config__gcs_object
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : patch_config__post_step__windows_exec_step_config) -> ()

let yojson_of_patch_config__post_step__windows_exec_step_config =
  (function
   | {
       allowed_success_codes = v_allowed_success_codes;
       interpreter = v_interpreter;
       local_path = v_local_path;
       gcs_object = v_gcs_object;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_gcs_object then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_patch_config__post_step__windows_exec_step_config__gcs_object)
               v_gcs_object
           in
           let bnd = "gcs_object", arg in
           bnd :: bnds
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
         match v_interpreter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interpreter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_success_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "allowed_success_codes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config__post_step__windows_exec_step_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__post_step__windows_exec_step_config

[@@@deriving.end]

type patch_config__post_step = {
  linux_exec_step_config :
    patch_config__post_step__linux_exec_step_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  windows_exec_step_config :
    patch_config__post_step__windows_exec_step_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_config__post_step) -> ()

let yojson_of_patch_config__post_step =
  (function
   | {
       linux_exec_step_config = v_linux_exec_step_config;
       windows_exec_step_config = v_windows_exec_step_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_windows_exec_step_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_patch_config__post_step__windows_exec_step_config)
               v_windows_exec_step_config
           in
           let bnd = "windows_exec_step_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux_exec_step_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_patch_config__post_step__linux_exec_step_config)
               v_linux_exec_step_config
           in
           let bnd = "linux_exec_step_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : patch_config__post_step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__post_step

[@@@deriving.end]

type patch_config__pre_step__linux_exec_step_config__gcs_object = {
  bucket : string prop;
  generation_number : string prop;
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : patch_config__pre_step__linux_exec_step_config__gcs_object) ->
  ()

let yojson_of_patch_config__pre_step__linux_exec_step_config__gcs_object
    =
  (function
   | {
       bucket = v_bucket;
       generation_number = v_generation_number;
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
         let arg =
           yojson_of_prop yojson_of_string v_generation_number
         in
         ("generation_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : patch_config__pre_step__linux_exec_step_config__gcs_object ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_patch_config__pre_step__linux_exec_step_config__gcs_object

[@@@deriving.end]

type patch_config__pre_step__linux_exec_step_config = {
  allowed_success_codes : float prop list option; [@option]
  interpreter : string prop option; [@option]
  local_path : string prop option; [@option]
  gcs_object :
    patch_config__pre_step__linux_exec_step_config__gcs_object list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : patch_config__pre_step__linux_exec_step_config) -> ()

let yojson_of_patch_config__pre_step__linux_exec_step_config =
  (function
   | {
       allowed_success_codes = v_allowed_success_codes;
       interpreter = v_interpreter;
       local_path = v_local_path;
       gcs_object = v_gcs_object;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_gcs_object then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_patch_config__pre_step__linux_exec_step_config__gcs_object)
               v_gcs_object
           in
           let bnd = "gcs_object", arg in
           bnd :: bnds
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
         match v_interpreter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interpreter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_success_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "allowed_success_codes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config__pre_step__linux_exec_step_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__pre_step__linux_exec_step_config

[@@@deriving.end]

type patch_config__pre_step__windows_exec_step_config__gcs_object = {
  bucket : string prop;
  generation_number : string prop;
  object_ : string prop; [@key "object"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       patch_config__pre_step__windows_exec_step_config__gcs_object) ->
  ()

let yojson_of_patch_config__pre_step__windows_exec_step_config__gcs_object
    =
  (function
   | {
       bucket = v_bucket;
       generation_number = v_generation_number;
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
         let arg =
           yojson_of_prop yojson_of_string v_generation_number
         in
         ("generation_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : patch_config__pre_step__windows_exec_step_config__gcs_object ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_patch_config__pre_step__windows_exec_step_config__gcs_object

[@@@deriving.end]

type patch_config__pre_step__windows_exec_step_config = {
  allowed_success_codes : float prop list option; [@option]
  interpreter : string prop option; [@option]
  local_path : string prop option; [@option]
  gcs_object :
    patch_config__pre_step__windows_exec_step_config__gcs_object list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : patch_config__pre_step__windows_exec_step_config) -> ()

let yojson_of_patch_config__pre_step__windows_exec_step_config =
  (function
   | {
       allowed_success_codes = v_allowed_success_codes;
       interpreter = v_interpreter;
       local_path = v_local_path;
       gcs_object = v_gcs_object;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_gcs_object then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_patch_config__pre_step__windows_exec_step_config__gcs_object)
               v_gcs_object
           in
           let bnd = "gcs_object", arg in
           bnd :: bnds
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
         match v_interpreter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interpreter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_success_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "allowed_success_codes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config__pre_step__windows_exec_step_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__pre_step__windows_exec_step_config

[@@@deriving.end]

type patch_config__pre_step = {
  linux_exec_step_config :
    patch_config__pre_step__linux_exec_step_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  windows_exec_step_config :
    patch_config__pre_step__windows_exec_step_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_config__pre_step) -> ()

let yojson_of_patch_config__pre_step =
  (function
   | {
       linux_exec_step_config = v_linux_exec_step_config;
       windows_exec_step_config = v_windows_exec_step_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_windows_exec_step_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_patch_config__pre_step__windows_exec_step_config)
               v_windows_exec_step_config
           in
           let bnd = "windows_exec_step_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux_exec_step_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_patch_config__pre_step__linux_exec_step_config)
               v_linux_exec_step_config
           in
           let bnd = "linux_exec_step_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : patch_config__pre_step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__pre_step

[@@@deriving.end]

type patch_config__windows_update = {
  classifications : string prop list option; [@option]
  excludes : string prop list option; [@option]
  exclusive_patches : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_config__windows_update) -> ()

let yojson_of_patch_config__windows_update =
  (function
   | {
       classifications = v_classifications;
       excludes = v_excludes;
       exclusive_patches = v_exclusive_patches;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_exclusive_patches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusive_patches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classifications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "classifications", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config__windows_update ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__windows_update

[@@@deriving.end]

type patch_config__yum = {
  excludes : string prop list option; [@option]
  exclusive_packages : string prop list option; [@option]
  minimal : bool prop option; [@option]
  security : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_config__yum) -> ()

let yojson_of_patch_config__yum =
  (function
   | {
       excludes = v_excludes;
       exclusive_packages = v_exclusive_packages;
       minimal = v_minimal;
       security = v_security;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_security with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "security", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "minimal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclusive_packages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusive_packages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config__yum -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__yum

[@@@deriving.end]

type patch_config__zypper = {
  categories : string prop list option; [@option]
  excludes : string prop list option; [@option]
  exclusive_patches : string prop list option; [@option]
  severities : string prop list option; [@option]
  with_optional : bool prop option; [@option]
  with_update : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_config__zypper) -> ()

let yojson_of_patch_config__zypper =
  (function
   | {
       categories = v_categories;
       excludes = v_excludes;
       exclusive_patches = v_exclusive_patches;
       severities = v_severities;
       with_optional = v_with_optional;
       with_update = v_with_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "with_update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_with_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "with_optional", arg in
             bnd :: bnds
       in
       let bnds =
         match v_severities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "severities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclusive_patches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusive_patches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_categories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "categories", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config__zypper -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config__zypper

[@@@deriving.end]

type patch_config = {
  mig_instances_allowed : bool prop option; [@option]
  reboot_config : string prop option; [@option]
  apt : patch_config__apt list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  goo : patch_config__goo list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  post_step : patch_config__post_step list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pre_step : patch_config__pre_step list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  windows_update : patch_config__windows_update list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  yum : patch_config__yum list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  zypper : patch_config__zypper list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_config) -> ()

let yojson_of_patch_config =
  (function
   | {
       mig_instances_allowed = v_mig_instances_allowed;
       reboot_config = v_reboot_config;
       apt = v_apt;
       goo = v_goo;
       post_step = v_post_step;
       pre_step = v_pre_step;
       windows_update = v_windows_update;
       yum = v_yum;
       zypper = v_zypper;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_zypper then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_config__zypper) v_zypper
           in
           let bnd = "zypper", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_yum then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_config__yum) v_yum
           in
           let bnd = "yum", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_windows_update then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_config__windows_update)
               v_windows_update
           in
           let bnd = "windows_update", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pre_step then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_config__pre_step)
               v_pre_step
           in
           let bnd = "pre_step", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_post_step then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_config__post_step)
               v_post_step
           in
           let bnd = "post_step", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_goo then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_config__goo) v_goo
           in
           let bnd = "goo", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_apt then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_config__apt) v_apt
           in
           let bnd = "apt", arg in
           bnd :: bnds
       in
       let bnds =
         match v_reboot_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reboot_config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mig_instances_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mig_instances_allowed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : patch_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_config

[@@@deriving.end]

type recurring_schedule__monthly__week_day_of_month = {
  day_of_week : string prop;
  day_offset : float prop option; [@option]
  week_ordinal : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : recurring_schedule__monthly__week_day_of_month) -> ()

let yojson_of_recurring_schedule__monthly__week_day_of_month =
  (function
   | {
       day_of_week = v_day_of_week;
       day_offset = v_day_offset;
       week_ordinal = v_week_ordinal;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_week_ordinal in
         ("week_ordinal", arg) :: bnds
       in
       let bnds =
         match v_day_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day_offset", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : recurring_schedule__monthly__week_day_of_month ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurring_schedule__monthly__week_day_of_month

[@@@deriving.end]

type recurring_schedule__monthly = {
  month_day : float prop option; [@option]
  week_day_of_month :
    recurring_schedule__monthly__week_day_of_month list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurring_schedule__monthly) -> ()

let yojson_of_recurring_schedule__monthly =
  (function
   | {
       month_day = v_month_day;
       week_day_of_month = v_week_day_of_month;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_week_day_of_month then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recurring_schedule__monthly__week_day_of_month)
               v_week_day_of_month
           in
           let bnd = "week_day_of_month", arg in
           bnd :: bnds
       in
       let bnds =
         match v_month_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month_day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recurring_schedule__monthly ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurring_schedule__monthly

[@@@deriving.end]

type recurring_schedule__time_of_day = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurring_schedule__time_of_day) -> ()

let yojson_of_recurring_schedule__time_of_day =
  (function
   | {
       hours = v_hours;
       minutes = v_minutes;
       nanos = v_nanos;
       seconds = v_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recurring_schedule__time_of_day ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurring_schedule__time_of_day

[@@@deriving.end]

type recurring_schedule__time_zone = {
  id : string prop;
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurring_schedule__time_zone) -> ()

let yojson_of_recurring_schedule__time_zone =
  (function
   | { id = v_id; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : recurring_schedule__time_zone ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurring_schedule__time_zone

[@@@deriving.end]

type recurring_schedule__weekly = { day_of_week : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : recurring_schedule__weekly) -> ()

let yojson_of_recurring_schedule__weekly =
  (function
   | { day_of_week = v_day_of_week } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : recurring_schedule__weekly -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurring_schedule__weekly

[@@@deriving.end]

type recurring_schedule = {
  end_time : string prop option; [@option]
  start_time : string prop option; [@option]
  monthly : recurring_schedule__monthly list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  time_of_day : recurring_schedule__time_of_day list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  time_zone : recurring_schedule__time_zone list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  weekly : recurring_schedule__weekly list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurring_schedule) -> ()

let yojson_of_recurring_schedule =
  (function
   | {
       end_time = v_end_time;
       start_time = v_start_time;
       monthly = v_monthly;
       time_of_day = v_time_of_day;
       time_zone = v_time_zone;
       weekly = v_weekly;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weekly then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurring_schedule__weekly)
               v_weekly
           in
           let bnd = "weekly", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_time_zone then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurring_schedule__time_zone)
               v_time_zone
           in
           let bnd = "time_zone", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_time_of_day then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recurring_schedule__time_of_day)
               v_time_of_day
           in
           let bnd = "time_of_day", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monthly then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurring_schedule__monthly)
               v_monthly
           in
           let bnd = "monthly", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recurring_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurring_schedule

[@@@deriving.end]

type rollout__disruption_budget = {
  fixed : float prop option; [@option]
  percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rollout__disruption_budget) -> ()

let yojson_of_rollout__disruption_budget =
  (function
   | { fixed = v_fixed; percentage = v_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percentage", arg in
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
  mode : string prop;
  disruption_budget : rollout__disruption_budget list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rollout) -> ()

let yojson_of_rollout =
  (function
   | { mode = v_mode; disruption_budget = v_disruption_budget } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_disruption_budget then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rollout__disruption_budget)
               v_disruption_budget
           in
           let bnd = "disruption_budget", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : rollout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rollout

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_os_config_patch_deployment = {
  description : string prop option; [@option]
  duration : string prop option; [@option]
  id : string prop option; [@option]
  patch_deployment_id : string prop;
  project : string prop option; [@option]
  instance_filter : instance_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  one_time_schedule : one_time_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  patch_config : patch_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recurring_schedule : recurring_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rollout : rollout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_os_config_patch_deployment) -> ()

let yojson_of_google_os_config_patch_deployment =
  (function
   | {
       description = v_description;
       duration = v_duration;
       id = v_id;
       patch_deployment_id = v_patch_deployment_id;
       project = v_project;
       instance_filter = v_instance_filter;
       one_time_schedule = v_one_time_schedule;
       patch_config = v_patch_config;
       recurring_schedule = v_recurring_schedule;
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
         if Stdlib.( = ) [] v_rollout then bnds
         else
           let arg = (yojson_of_list yojson_of_rollout) v_rollout in
           let bnd = "rollout", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_recurring_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurring_schedule)
               v_recurring_schedule
           in
           let bnd = "recurring_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_patch_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_config) v_patch_config
           in
           let bnd = "patch_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_one_time_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_one_time_schedule)
               v_one_time_schedule
           in
           let bnd = "one_time_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_filter)
               v_instance_filter
           in
           let bnd = "instance_filter", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_patch_deployment_id
         in
         ("patch_deployment_id", arg) :: bnds
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
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
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
    : google_os_config_patch_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_os_config_patch_deployment

[@@@deriving.end]

let instance_filter__group_labels ~labels () :
    instance_filter__group_labels =
  { labels }

let instance_filter ?all ?instance_name_prefixes ?instances ?zones
    ?(group_labels = []) () : instance_filter =
  { all; instance_name_prefixes; instances; zones; group_labels }

let one_time_schedule ~execute_time () : one_time_schedule =
  { execute_time }

let patch_config__apt ?excludes ?exclusive_packages ?type_ () :
    patch_config__apt =
  { excludes; exclusive_packages; type_ }

let patch_config__goo ~enabled () : patch_config__goo = { enabled }

let patch_config__post_step__linux_exec_step_config__gcs_object
    ~bucket ~generation_number ~object_ () :
    patch_config__post_step__linux_exec_step_config__gcs_object =
  { bucket; generation_number; object_ }

let patch_config__post_step__linux_exec_step_config
    ?allowed_success_codes ?interpreter ?local_path
    ?(gcs_object = []) () :
    patch_config__post_step__linux_exec_step_config =
  { allowed_success_codes; interpreter; local_path; gcs_object }

let patch_config__post_step__windows_exec_step_config__gcs_object
    ~bucket ~generation_number ~object_ () :
    patch_config__post_step__windows_exec_step_config__gcs_object =
  { bucket; generation_number; object_ }

let patch_config__post_step__windows_exec_step_config
    ?allowed_success_codes ?interpreter ?local_path
    ?(gcs_object = []) () :
    patch_config__post_step__windows_exec_step_config =
  { allowed_success_codes; interpreter; local_path; gcs_object }

let patch_config__post_step ?(linux_exec_step_config = [])
    ?(windows_exec_step_config = []) () : patch_config__post_step =
  { linux_exec_step_config; windows_exec_step_config }

let patch_config__pre_step__linux_exec_step_config__gcs_object
    ~bucket ~generation_number ~object_ () :
    patch_config__pre_step__linux_exec_step_config__gcs_object =
  { bucket; generation_number; object_ }

let patch_config__pre_step__linux_exec_step_config
    ?allowed_success_codes ?interpreter ?local_path
    ?(gcs_object = []) () :
    patch_config__pre_step__linux_exec_step_config =
  { allowed_success_codes; interpreter; local_path; gcs_object }

let patch_config__pre_step__windows_exec_step_config__gcs_object
    ~bucket ~generation_number ~object_ () :
    patch_config__pre_step__windows_exec_step_config__gcs_object =
  { bucket; generation_number; object_ }

let patch_config__pre_step__windows_exec_step_config
    ?allowed_success_codes ?interpreter ?local_path
    ?(gcs_object = []) () :
    patch_config__pre_step__windows_exec_step_config =
  { allowed_success_codes; interpreter; local_path; gcs_object }

let patch_config__pre_step ?(linux_exec_step_config = [])
    ?(windows_exec_step_config = []) () : patch_config__pre_step =
  { linux_exec_step_config; windows_exec_step_config }

let patch_config__windows_update ?classifications ?excludes
    ?exclusive_patches () : patch_config__windows_update =
  { classifications; excludes; exclusive_patches }

let patch_config__yum ?excludes ?exclusive_packages ?minimal
    ?security () : patch_config__yum =
  { excludes; exclusive_packages; minimal; security }

let patch_config__zypper ?categories ?excludes ?exclusive_patches
    ?severities ?with_optional ?with_update () : patch_config__zypper
    =
  {
    categories;
    excludes;
    exclusive_patches;
    severities;
    with_optional;
    with_update;
  }

let patch_config ?mig_instances_allowed ?reboot_config ?(apt = [])
    ?(goo = []) ?(post_step = []) ?(pre_step = [])
    ?(windows_update = []) ?(yum = []) ?(zypper = []) () :
    patch_config =
  {
    mig_instances_allowed;
    reboot_config;
    apt;
    goo;
    post_step;
    pre_step;
    windows_update;
    yum;
    zypper;
  }

let recurring_schedule__monthly__week_day_of_month ?day_offset
    ~day_of_week ~week_ordinal () :
    recurring_schedule__monthly__week_day_of_month =
  { day_of_week; day_offset; week_ordinal }

let recurring_schedule__monthly ?month_day ?(week_day_of_month = [])
    () : recurring_schedule__monthly =
  { month_day; week_day_of_month }

let recurring_schedule__time_of_day ?hours ?minutes ?nanos ?seconds
    () : recurring_schedule__time_of_day =
  { hours; minutes; nanos; seconds }

let recurring_schedule__time_zone ?version ~id () :
    recurring_schedule__time_zone =
  { id; version }

let recurring_schedule__weekly ~day_of_week () :
    recurring_schedule__weekly =
  { day_of_week }

let recurring_schedule ?end_time ?start_time ?(monthly = [])
    ?(weekly = []) ~time_of_day ~time_zone () : recurring_schedule =
  { end_time; start_time; monthly; time_of_day; time_zone; weekly }

let rollout__disruption_budget ?fixed ?percentage () :
    rollout__disruption_budget =
  { fixed; percentage }

let rollout ~mode ~disruption_budget () : rollout =
  { mode; disruption_budget }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_os_config_patch_deployment ?description ?duration ?id
    ?project ?(one_time_schedule = []) ?(patch_config = [])
    ?(recurring_schedule = []) ?(rollout = []) ?timeouts
    ~patch_deployment_id ~instance_filter () :
    google_os_config_patch_deployment =
  {
    description;
    duration;
    id;
    patch_deployment_id;
    project;
    instance_filter;
    one_time_schedule;
    patch_config;
    recurring_schedule;
    rollout;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  duration : string prop;
  id : string prop;
  last_execute_time : string prop;
  name : string prop;
  patch_deployment_id : string prop;
  project : string prop;
  update_time : string prop;
}

let make ?description ?duration ?id ?project
    ?(one_time_schedule = []) ?(patch_config = [])
    ?(recurring_schedule = []) ?(rollout = []) ?timeouts
    ~patch_deployment_id ~instance_filter __id =
  let __type = "google_os_config_patch_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       duration = Prop.computed __type __id "duration";
       id = Prop.computed __type __id "id";
       last_execute_time =
         Prop.computed __type __id "last_execute_time";
       name = Prop.computed __type __id "name";
       patch_deployment_id =
         Prop.computed __type __id "patch_deployment_id";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_os_config_patch_deployment
        (google_os_config_patch_deployment ?description ?duration ?id
           ?project ~one_time_schedule ~patch_config
           ~recurring_schedule ~rollout ?timeouts
           ~patch_deployment_id ~instance_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?duration ?id ?project
    ?(one_time_schedule = []) ?(patch_config = [])
    ?(recurring_schedule = []) ?(rollout = []) ?timeouts
    ~patch_deployment_id ~instance_filter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?duration ?id ?project ~one_time_schedule
      ~patch_config ~recurring_schedule ~rollout ?timeouts
      ~patch_deployment_id ~instance_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
