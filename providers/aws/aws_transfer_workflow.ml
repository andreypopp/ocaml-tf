(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type on_exception_steps__copy_step_details__destination_file_location__efs_file_location = {
  file_system_id : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       on_exception_steps__copy_step_details__destination_file_location__efs_file_location) ->
  ()

let yojson_of_on_exception_steps__copy_step_details__destination_file_location__efs_file_location
    =
  (function
   | { file_system_id = v_file_system_id; path = v_path } ->
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
       let bnds =
         match v_file_system_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : on_exception_steps__copy_step_details__destination_file_location__efs_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_on_exception_steps__copy_step_details__destination_file_location__efs_file_location

[@@@deriving.end]

type on_exception_steps__copy_step_details__destination_file_location__s3_file_location = {
  bucket : string prop option; [@option]
  key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       on_exception_steps__copy_step_details__destination_file_location__s3_file_location) ->
  ()

let yojson_of_on_exception_steps__copy_step_details__destination_file_location__s3_file_location
    =
  (function
   | { bucket = v_bucket; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : on_exception_steps__copy_step_details__destination_file_location__s3_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_on_exception_steps__copy_step_details__destination_file_location__s3_file_location

[@@@deriving.end]

type on_exception_steps__copy_step_details__destination_file_location = {
  efs_file_location :
    on_exception_steps__copy_step_details__destination_file_location__efs_file_location
    list;
  s3_file_location :
    on_exception_steps__copy_step_details__destination_file_location__s3_file_location
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       on_exception_steps__copy_step_details__destination_file_location) ->
  ()

let yojson_of_on_exception_steps__copy_step_details__destination_file_location
    =
  (function
   | {
       efs_file_location = v_efs_file_location;
       s3_file_location = v_s3_file_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__copy_step_details__destination_file_location__s3_file_location
             v_s3_file_location
         in
         ("s3_file_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__copy_step_details__destination_file_location__efs_file_location
             v_efs_file_location
         in
         ("efs_file_location", arg) :: bnds
       in
       `Assoc bnds
    : on_exception_steps__copy_step_details__destination_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_on_exception_steps__copy_step_details__destination_file_location

[@@@deriving.end]

type on_exception_steps__copy_step_details = {
  name : string prop option; [@option]
  overwrite_existing : string prop option; [@option]
  source_file_location : string prop option; [@option]
  destination_file_location :
    on_exception_steps__copy_step_details__destination_file_location
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_exception_steps__copy_step_details) -> ()

let yojson_of_on_exception_steps__copy_step_details =
  (function
   | {
       name = v_name;
       overwrite_existing = v_overwrite_existing;
       source_file_location = v_source_file_location;
       destination_file_location = v_destination_file_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__copy_step_details__destination_file_location
             v_destination_file_location
         in
         ("destination_file_location", arg) :: bnds
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_overwrite_existing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "overwrite_existing", arg in
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
    : on_exception_steps__copy_step_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_exception_steps__copy_step_details

[@@@deriving.end]

type on_exception_steps__custom_step_details = {
  name : string prop option; [@option]
  source_file_location : string prop option; [@option]
  target : string prop option; [@option]
  timeout_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_exception_steps__custom_step_details) -> ()

let yojson_of_on_exception_steps__custom_step_details =
  (function
   | {
       name = v_name;
       source_file_location = v_source_file_location;
       target = v_target;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
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
    : on_exception_steps__custom_step_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_exception_steps__custom_step_details

[@@@deriving.end]

type on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location = {
  file_system_id : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location) ->
  ()

let yojson_of_on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location
    =
  (function
   | { file_system_id = v_file_system_id; path = v_path } ->
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
       let bnds =
         match v_file_system_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location

[@@@deriving.end]

type on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location = {
  bucket : string prop option; [@option]
  key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location) ->
  ()

let yojson_of_on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location
    =
  (function
   | { bucket = v_bucket; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location

[@@@deriving.end]

type on_exception_steps__decrypt_step_details__destination_file_location = {
  efs_file_location :
    on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location
    list;
  s3_file_location :
    on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       on_exception_steps__decrypt_step_details__destination_file_location) ->
  ()

let yojson_of_on_exception_steps__decrypt_step_details__destination_file_location
    =
  (function
   | {
       efs_file_location = v_efs_file_location;
       s3_file_location = v_s3_file_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location
             v_s3_file_location
         in
         ("s3_file_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location
             v_efs_file_location
         in
         ("efs_file_location", arg) :: bnds
       in
       `Assoc bnds
    : on_exception_steps__decrypt_step_details__destination_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_on_exception_steps__decrypt_step_details__destination_file_location

[@@@deriving.end]

type on_exception_steps__decrypt_step_details = {
  name : string prop option; [@option]
  overwrite_existing : string prop option; [@option]
  source_file_location : string prop option; [@option]
  type_ : string prop; [@key "type"]
  destination_file_location :
    on_exception_steps__decrypt_step_details__destination_file_location
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_exception_steps__decrypt_step_details) -> ()

let yojson_of_on_exception_steps__decrypt_step_details =
  (function
   | {
       name = v_name;
       overwrite_existing = v_overwrite_existing;
       source_file_location = v_source_file_location;
       type_ = v_type_;
       destination_file_location = v_destination_file_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__decrypt_step_details__destination_file_location
             v_destination_file_location
         in
         ("destination_file_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_overwrite_existing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "overwrite_existing", arg in
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
    : on_exception_steps__decrypt_step_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_exception_steps__decrypt_step_details

[@@@deriving.end]

type on_exception_steps__delete_step_details = {
  name : string prop option; [@option]
  source_file_location : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_exception_steps__delete_step_details) -> ()

let yojson_of_on_exception_steps__delete_step_details =
  (function
   | { name = v_name; source_file_location = v_source_file_location }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
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
    : on_exception_steps__delete_step_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_exception_steps__delete_step_details

[@@@deriving.end]

type on_exception_steps__tag_step_details__tags = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_exception_steps__tag_step_details__tags) -> ()

let yojson_of_on_exception_steps__tag_step_details__tags =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : on_exception_steps__tag_step_details__tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_exception_steps__tag_step_details__tags

[@@@deriving.end]

type on_exception_steps__tag_step_details = {
  name : string prop option; [@option]
  source_file_location : string prop option; [@option]
  tags : on_exception_steps__tag_step_details__tags list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_exception_steps__tag_step_details) -> ()

let yojson_of_on_exception_steps__tag_step_details =
  (function
   | {
       name = v_name;
       source_file_location = v_source_file_location;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__tag_step_details__tags
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
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
    : on_exception_steps__tag_step_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_exception_steps__tag_step_details

[@@@deriving.end]

type on_exception_steps = {
  type_ : string prop; [@key "type"]
  copy_step_details : on_exception_steps__copy_step_details list;
  custom_step_details : on_exception_steps__custom_step_details list;
  decrypt_step_details :
    on_exception_steps__decrypt_step_details list;
  delete_step_details : on_exception_steps__delete_step_details list;
  tag_step_details : on_exception_steps__tag_step_details list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_exception_steps) -> ()

let yojson_of_on_exception_steps =
  (function
   | {
       type_ = v_type_;
       copy_step_details = v_copy_step_details;
       custom_step_details = v_custom_step_details;
       decrypt_step_details = v_decrypt_step_details;
       delete_step_details = v_delete_step_details;
       tag_step_details = v_tag_step_details;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__tag_step_details
             v_tag_step_details
         in
         ("tag_step_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__delete_step_details
             v_delete_step_details
         in
         ("delete_step_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__decrypt_step_details
             v_decrypt_step_details
         in
         ("decrypt_step_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__custom_step_details
             v_custom_step_details
         in
         ("custom_step_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_on_exception_steps__copy_step_details
             v_copy_step_details
         in
         ("copy_step_details", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : on_exception_steps -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_exception_steps

[@@@deriving.end]

type steps__copy_step_details__destination_file_location__efs_file_location = {
  file_system_id : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       steps__copy_step_details__destination_file_location__efs_file_location) ->
  ()

let yojson_of_steps__copy_step_details__destination_file_location__efs_file_location
    =
  (function
   | { file_system_id = v_file_system_id; path = v_path } ->
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
       let bnds =
         match v_file_system_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : steps__copy_step_details__destination_file_location__efs_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_steps__copy_step_details__destination_file_location__efs_file_location

[@@@deriving.end]

type steps__copy_step_details__destination_file_location__s3_file_location = {
  bucket : string prop option; [@option]
  key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       steps__copy_step_details__destination_file_location__s3_file_location) ->
  ()

let yojson_of_steps__copy_step_details__destination_file_location__s3_file_location
    =
  (function
   | { bucket = v_bucket; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : steps__copy_step_details__destination_file_location__s3_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_steps__copy_step_details__destination_file_location__s3_file_location

[@@@deriving.end]

type steps__copy_step_details__destination_file_location = {
  efs_file_location :
    steps__copy_step_details__destination_file_location__efs_file_location
    list;
  s3_file_location :
    steps__copy_step_details__destination_file_location__s3_file_location
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : steps__copy_step_details__destination_file_location) -> ()

let yojson_of_steps__copy_step_details__destination_file_location =
  (function
   | {
       efs_file_location = v_efs_file_location;
       s3_file_location = v_s3_file_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_steps__copy_step_details__destination_file_location__s3_file_location
             v_s3_file_location
         in
         ("s3_file_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_steps__copy_step_details__destination_file_location__efs_file_location
             v_efs_file_location
         in
         ("efs_file_location", arg) :: bnds
       in
       `Assoc bnds
    : steps__copy_step_details__destination_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__copy_step_details__destination_file_location

[@@@deriving.end]

type steps__copy_step_details = {
  name : string prop option; [@option]
  overwrite_existing : string prop option; [@option]
  source_file_location : string prop option; [@option]
  destination_file_location :
    steps__copy_step_details__destination_file_location list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps__copy_step_details) -> ()

let yojson_of_steps__copy_step_details =
  (function
   | {
       name = v_name;
       overwrite_existing = v_overwrite_existing;
       source_file_location = v_source_file_location;
       destination_file_location = v_destination_file_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_steps__copy_step_details__destination_file_location
             v_destination_file_location
         in
         ("destination_file_location", arg) :: bnds
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_overwrite_existing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "overwrite_existing", arg in
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
    : steps__copy_step_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__copy_step_details

[@@@deriving.end]

type steps__custom_step_details = {
  name : string prop option; [@option]
  source_file_location : string prop option; [@option]
  target : string prop option; [@option]
  timeout_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps__custom_step_details) -> ()

let yojson_of_steps__custom_step_details =
  (function
   | {
       name = v_name;
       source_file_location = v_source_file_location;
       target = v_target;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
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
    : steps__custom_step_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__custom_step_details

[@@@deriving.end]

type steps__decrypt_step_details__destination_file_location__efs_file_location = {
  file_system_id : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       steps__decrypt_step_details__destination_file_location__efs_file_location) ->
  ()

let yojson_of_steps__decrypt_step_details__destination_file_location__efs_file_location
    =
  (function
   | { file_system_id = v_file_system_id; path = v_path } ->
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
       let bnds =
         match v_file_system_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : steps__decrypt_step_details__destination_file_location__efs_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_steps__decrypt_step_details__destination_file_location__efs_file_location

[@@@deriving.end]

type steps__decrypt_step_details__destination_file_location__s3_file_location = {
  bucket : string prop option; [@option]
  key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       steps__decrypt_step_details__destination_file_location__s3_file_location) ->
  ()

let yojson_of_steps__decrypt_step_details__destination_file_location__s3_file_location
    =
  (function
   | { bucket = v_bucket; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : steps__decrypt_step_details__destination_file_location__s3_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_steps__decrypt_step_details__destination_file_location__s3_file_location

[@@@deriving.end]

type steps__decrypt_step_details__destination_file_location = {
  efs_file_location :
    steps__decrypt_step_details__destination_file_location__efs_file_location
    list;
  s3_file_location :
    steps__decrypt_step_details__destination_file_location__s3_file_location
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : steps__decrypt_step_details__destination_file_location) ->
  ()

let yojson_of_steps__decrypt_step_details__destination_file_location
    =
  (function
   | {
       efs_file_location = v_efs_file_location;
       s3_file_location = v_s3_file_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_steps__decrypt_step_details__destination_file_location__s3_file_location
             v_s3_file_location
         in
         ("s3_file_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_steps__decrypt_step_details__destination_file_location__efs_file_location
             v_efs_file_location
         in
         ("efs_file_location", arg) :: bnds
       in
       `Assoc bnds
    : steps__decrypt_step_details__destination_file_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_steps__decrypt_step_details__destination_file_location

[@@@deriving.end]

type steps__decrypt_step_details = {
  name : string prop option; [@option]
  overwrite_existing : string prop option; [@option]
  source_file_location : string prop option; [@option]
  type_ : string prop; [@key "type"]
  destination_file_location :
    steps__decrypt_step_details__destination_file_location list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps__decrypt_step_details) -> ()

let yojson_of_steps__decrypt_step_details =
  (function
   | {
       name = v_name;
       overwrite_existing = v_overwrite_existing;
       source_file_location = v_source_file_location;
       type_ = v_type_;
       destination_file_location = v_destination_file_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_steps__decrypt_step_details__destination_file_location
             v_destination_file_location
         in
         ("destination_file_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_overwrite_existing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "overwrite_existing", arg in
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
    : steps__decrypt_step_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__decrypt_step_details

[@@@deriving.end]

type steps__delete_step_details = {
  name : string prop option; [@option]
  source_file_location : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps__delete_step_details) -> ()

let yojson_of_steps__delete_step_details =
  (function
   | { name = v_name; source_file_location = v_source_file_location }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
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
    : steps__delete_step_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__delete_step_details

[@@@deriving.end]

type steps__tag_step_details__tags = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps__tag_step_details__tags) -> ()

let yojson_of_steps__tag_step_details__tags =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : steps__tag_step_details__tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__tag_step_details__tags

[@@@deriving.end]

type steps__tag_step_details = {
  name : string prop option; [@option]
  source_file_location : string prop option; [@option]
  tags : steps__tag_step_details__tags list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps__tag_step_details) -> ()

let yojson_of_steps__tag_step_details =
  (function
   | {
       name = v_name;
       source_file_location = v_source_file_location;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_steps__tag_step_details__tags
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         match v_source_file_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_file_location", arg in
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
    : steps__tag_step_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps__tag_step_details

[@@@deriving.end]

type steps = {
  type_ : string prop; [@key "type"]
  copy_step_details : steps__copy_step_details list;
  custom_step_details : steps__custom_step_details list;
  decrypt_step_details : steps__decrypt_step_details list;
  delete_step_details : steps__delete_step_details list;
  tag_step_details : steps__tag_step_details list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : steps) -> ()

let yojson_of_steps =
  (function
   | {
       type_ = v_type_;
       copy_step_details = v_copy_step_details;
       custom_step_details = v_custom_step_details;
       decrypt_step_details = v_decrypt_step_details;
       delete_step_details = v_delete_step_details;
       tag_step_details = v_tag_step_details;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_steps__tag_step_details
             v_tag_step_details
         in
         ("tag_step_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_steps__delete_step_details
             v_delete_step_details
         in
         ("delete_step_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_steps__decrypt_step_details
             v_decrypt_step_details
         in
         ("decrypt_step_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_steps__custom_step_details
             v_custom_step_details
         in
         ("custom_step_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_steps__copy_step_details
             v_copy_step_details
         in
         ("copy_step_details", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : steps -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_steps

[@@@deriving.end]

type aws_transfer_workflow = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  on_exception_steps : on_exception_steps list;
  steps : steps list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_workflow) -> ()

let yojson_of_aws_transfer_workflow =
  (function
   | {
       description = v_description;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       on_exception_steps = v_on_exception_steps;
       steps = v_steps;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_steps v_steps in
         ("steps", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_on_exception_steps
             v_on_exception_steps
         in
         ("on_exception_steps", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_transfer_workflow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_workflow

[@@@deriving.end]

let on_exception_steps__copy_step_details__destination_file_location__efs_file_location
    ?file_system_id ?path () :
    on_exception_steps__copy_step_details__destination_file_location__efs_file_location
    =
  { file_system_id; path }

let on_exception_steps__copy_step_details__destination_file_location__s3_file_location
    ?bucket ?key () :
    on_exception_steps__copy_step_details__destination_file_location__s3_file_location
    =
  { bucket; key }

let on_exception_steps__copy_step_details__destination_file_location
    ~efs_file_location ~s3_file_location () :
    on_exception_steps__copy_step_details__destination_file_location
    =
  { efs_file_location; s3_file_location }

let on_exception_steps__copy_step_details ?name ?overwrite_existing
    ?source_file_location ~destination_file_location () :
    on_exception_steps__copy_step_details =
  {
    name;
    overwrite_existing;
    source_file_location;
    destination_file_location;
  }

let on_exception_steps__custom_step_details ?name
    ?source_file_location ?target ?timeout_seconds () :
    on_exception_steps__custom_step_details =
  { name; source_file_location; target; timeout_seconds }

let on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location
    ?file_system_id ?path () :
    on_exception_steps__decrypt_step_details__destination_file_location__efs_file_location
    =
  { file_system_id; path }

let on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location
    ?bucket ?key () :
    on_exception_steps__decrypt_step_details__destination_file_location__s3_file_location
    =
  { bucket; key }

let on_exception_steps__decrypt_step_details__destination_file_location
    ~efs_file_location ~s3_file_location () :
    on_exception_steps__decrypt_step_details__destination_file_location
    =
  { efs_file_location; s3_file_location }

let on_exception_steps__decrypt_step_details ?name
    ?overwrite_existing ?source_file_location ~type_
    ~destination_file_location () :
    on_exception_steps__decrypt_step_details =
  {
    name;
    overwrite_existing;
    source_file_location;
    type_;
    destination_file_location;
  }

let on_exception_steps__delete_step_details ?name
    ?source_file_location () :
    on_exception_steps__delete_step_details =
  { name; source_file_location }

let on_exception_steps__tag_step_details__tags ~key ~value () :
    on_exception_steps__tag_step_details__tags =
  { key; value }

let on_exception_steps__tag_step_details ?name ?source_file_location
    ~tags () : on_exception_steps__tag_step_details =
  { name; source_file_location; tags }

let on_exception_steps ~type_ ~copy_step_details ~custom_step_details
    ~decrypt_step_details ~delete_step_details ~tag_step_details () :
    on_exception_steps =
  {
    type_;
    copy_step_details;
    custom_step_details;
    decrypt_step_details;
    delete_step_details;
    tag_step_details;
  }

let steps__copy_step_details__destination_file_location__efs_file_location
    ?file_system_id ?path () :
    steps__copy_step_details__destination_file_location__efs_file_location
    =
  { file_system_id; path }

let steps__copy_step_details__destination_file_location__s3_file_location
    ?bucket ?key () :
    steps__copy_step_details__destination_file_location__s3_file_location
    =
  { bucket; key }

let steps__copy_step_details__destination_file_location
    ~efs_file_location ~s3_file_location () :
    steps__copy_step_details__destination_file_location =
  { efs_file_location; s3_file_location }

let steps__copy_step_details ?name ?overwrite_existing
    ?source_file_location ~destination_file_location () :
    steps__copy_step_details =
  {
    name;
    overwrite_existing;
    source_file_location;
    destination_file_location;
  }

let steps__custom_step_details ?name ?source_file_location ?target
    ?timeout_seconds () : steps__custom_step_details =
  { name; source_file_location; target; timeout_seconds }

let steps__decrypt_step_details__destination_file_location__efs_file_location
    ?file_system_id ?path () :
    steps__decrypt_step_details__destination_file_location__efs_file_location
    =
  { file_system_id; path }

let steps__decrypt_step_details__destination_file_location__s3_file_location
    ?bucket ?key () :
    steps__decrypt_step_details__destination_file_location__s3_file_location
    =
  { bucket; key }

let steps__decrypt_step_details__destination_file_location
    ~efs_file_location ~s3_file_location () :
    steps__decrypt_step_details__destination_file_location =
  { efs_file_location; s3_file_location }

let steps__decrypt_step_details ?name ?overwrite_existing
    ?source_file_location ~type_ ~destination_file_location () :
    steps__decrypt_step_details =
  {
    name;
    overwrite_existing;
    source_file_location;
    type_;
    destination_file_location;
  }

let steps__delete_step_details ?name ?source_file_location () :
    steps__delete_step_details =
  { name; source_file_location }

let steps__tag_step_details__tags ~key ~value () :
    steps__tag_step_details__tags =
  { key; value }

let steps__tag_step_details ?name ?source_file_location ~tags () :
    steps__tag_step_details =
  { name; source_file_location; tags }

let steps ~type_ ~copy_step_details ~custom_step_details
    ~decrypt_step_details ~delete_step_details ~tag_step_details () :
    steps =
  {
    type_;
    copy_step_details;
    custom_step_details;
    decrypt_step_details;
    delete_step_details;
    tag_step_details;
  }

let aws_transfer_workflow ?description ?id ?tags ?tags_all
    ~on_exception_steps ~steps () : aws_transfer_workflow =
  { description; id; tags; tags_all; on_exception_steps; steps }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~on_exception_steps ~steps
    __id =
  let __type = "aws_transfer_workflow" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_workflow
        (aws_transfer_workflow ?description ?id ?tags ?tags_all
           ~on_exception_steps ~steps ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ~on_exception_steps ~steps __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~on_exception_steps ~steps
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
